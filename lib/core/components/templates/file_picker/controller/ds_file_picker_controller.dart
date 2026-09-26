import 'package:design_system/core/components/templates/file_picker/model/ds_file_picker_item.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class DSFilePickerController extends ChangeNotifier {
  final bool allowMultiple;
  final List<String>? allowedExtensions;
  final FileType type;
  final List<DSFilePickerItem> initialFiles;

  /// Upload file when selected
  Future<void> Function(DSFilePickerItem, void Function(double))?
      uploadOnSelect;

  /// Upload all pending files
  Future<void> Function(List<DSFilePickerItem>)? uploadAll;

  /// Executed before upload file, return false for skip the file
  Future<bool> Function(PlatformFile file)? processPickedFile;

  /// Callback when files list change
  final void Function(List<DSFilePickerItem>)? onFilesChanged;

  /// Callback when a file is removed
  final void Function(DSFilePickerItem)? onFileRemoved;

  /// Callback to send errors (like size exceeded or upload failures) to the UI
  void Function(String)? onError;

  // --- Dynamic Translatable Error Messages ---
  final String Function(String fileName, String maxMb)? errorSizeExceededSingle;
  final String Function(int fileCount, String maxMb)? errorSizeExceededMultiple;
  final String Function(String fileName)? errorUploadFailedSingle;
  final String Function()? errorUploadFailedMultiple;

  final int? maxFiles;
  final int? maxFileSize;

  final List<DSFilePickerItem> _files;

  DSFilePickerController({
    this.allowMultiple = true,
    this.allowedExtensions,
    this.type = FileType.any,
    this.initialFiles = const [],
    this.uploadOnSelect,
    this.uploadAll,
    this.onFilesChanged,
    this.maxFiles,
    this.maxFileSize,
    this.onFileRemoved,
    this.onError,
    this.errorSizeExceededSingle,
    this.errorSizeExceededMultiple,
    this.errorUploadFailedSingle,
    this.errorUploadFailedMultiple,
  }) : _files = List<DSFilePickerItem>.from(initialFiles);

  void updateUploadCallbacks({
    Future<void> Function(DSFilePickerItem, void Function(double))?
        uploadOnSelect,
    Future<void> Function(List<DSFilePickerItem>)? uploadAll,
  }) {
    this.uploadOnSelect = uploadOnSelect;
    this.uploadAll = uploadAll;
  }

  List<DSFilePickerItem> get files => List.unmodifiable(_files);

  List<DSFilePickerItem> get pendingFiles =>
      _files.where((f) => f.status == DSFilePickerItemStatus.pending).toList();

  List<DSFilePickerItem> get uploadedFiles =>
      _files.where((f) => f.status == DSFilePickerItemStatus.uploaded).toList();

  List<DSFilePickerItem> get uploadingFiles => _files
      .where((f) => f.status == DSFilePickerItemStatus.uploading)
      .toList();

  List<DSFilePickerItem> get errorFiles =>
      _files.where((f) => f.status == DSFilePickerItemStatus.error).toList();

  bool get hasFiles => _files.isNotEmpty;

  bool get canAddMore => maxFiles == null || _files.length < maxFiles!;

  Future<void> pickFiles() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        allowMultiple: allowMultiple,
        type: allowedExtensions != null ? FileType.custom : type,
        allowedExtensions: allowedExtensions,
        withData: true,
      );

      if (result != null && result.files.isNotEmpty) {
        await _processPickedFiles(result.files);
      }
    } catch (e) {
      debugPrint('Error picking files: $e');
    }
  }

  Future<void> addDroppedFiles(List<DropItem> droppedItems) async {
    final List<DSFilePickerItem> newFiles = [];
    final List<String> oversizedFiles = [];

    for (final item in droppedItems) {
      if (!canAddMore && maxFiles != null) break;

      final bytes = await item.readAsBytes();
      final name = item.name;
      final extension = name.contains('.') ? name.split('.').last : null;

      if (allowedExtensions != null &&
          extension != null &&
          !allowedExtensions!.contains(extension.toLowerCase())) {
        continue;
      }

      if (maxFileSize != null && bytes.length > maxFileSize!) {
        oversizedFiles.add(name);
        continue;
      }

      final file = DSFilePickerItem(
        name: name,
        size: bytes.length,
        bytes: bytes,
        extension: extension,
      );

      newFiles.add(file);
      _files.add(file);
    }

    _handleOversizedFilesWarning(oversizedFiles);

    notifyListeners();
    onFilesChanged?.call(_files);

    if (uploadOnSelect != null) {
      for (final file in newFiles) {
        await _uploadFile(file);
      }
    }
  }

  Future<void> _processPickedFiles(List<PlatformFile> platformFiles) async {
    final List<DSFilePickerItem> newFiles = [];
    final List<String> oversizedFiles = [];

    for (final platformFile in platformFiles) {
      if (!canAddMore && maxFiles != null) break;

      if (maxFileSize != null && platformFile.size > maxFileSize!) {
        oversizedFiles.add(platformFile.name);
        continue;
      }

      if (processPickedFile != null) {
        final shouldProcess = await processPickedFile!(platformFile);
        if (!shouldProcess) {
          continue;
        }
      }

      final file = DSFilePickerItem(
        name: platformFile.name,
        path: platformFile.path,
        size: platformFile.size,
        bytes: platformFile.bytes,
        extension: platformFile.extension,
      );

      newFiles.add(file);
      _files.add(file);
    }

    _handleOversizedFilesWarning(oversizedFiles);

    notifyListeners();
    onFilesChanged?.call(_files);

    if (uploadOnSelect != null) {
      for (final file in newFiles) {
        await _uploadFile(file);
      }
    }
  }

  void _handleOversizedFilesWarning(List<String> oversizedFiles) {
    if (oversizedFiles.isNotEmpty) {
      final maxMb = (maxFileSize! / (1024 * 1024)).toStringAsFixed(0);
      if (oversizedFiles.length == 1) {
        final msg =
            errorSizeExceededSingle?.call(oversizedFiles.first, maxMb) ??
                'ds_file_picker.single_file_exceeded'.trParams(
                  {'fileName': oversizedFiles.first, 'maxMb': maxMb},
                );
        onError?.call(msg);
      } else {
        final msg =
            errorSizeExceededMultiple?.call(oversizedFiles.length, maxMb) ??
                'ds_file_picker.multiple_files_exceeded'.trParams(
                  {'count': oversizedFiles.length.toString(), 'maxMb': maxMb},
                );
        onError?.call(msg);
      }
    }
  }

  int _findFileIndex(String fileId) {
    return _files.indexWhere((f) => f.id == fileId);
  }

  Future<void> _uploadFile(DSFilePickerItem file) async {
    if (uploadOnSelect == null) return;

    final fileId = file.id;
    final index = _findFileIndex(fileId);
    if (index == -1) return;

    _files[index] = file.copyWith(status: DSFilePickerItemStatus.uploading);
    notifyListeners();

    try {
      await uploadOnSelect!(file, (progress) {
        final currentIndex = _findFileIndex(fileId);
        if (currentIndex != -1) {
          _files[currentIndex] = _files[currentIndex].copyWith(
            uploadProgress: progress,
          );
          notifyListeners();
        }
      });

      final finalIndex = _findFileIndex(fileId);
      if (finalIndex != -1) {
        _files[finalIndex] = _files[finalIndex].copyWith(
          status: DSFilePickerItemStatus.uploaded,
          uploadProgress: 1.0,
        );
        notifyListeners();
        onFilesChanged?.call(_files);
      }
    } catch (e) {
      final errorIndex = _findFileIndex(fileId);
      if (errorIndex != -1) {
        _files[errorIndex] = _files[errorIndex].copyWith(
          status: DSFilePickerItemStatus.error,
          errorMessage: e.toString(),
        );
        notifyListeners();
        onFilesChanged?.call(_files);
      }
      final msg = errorUploadFailedSingle?.call(file.name) ??
          'ds_file_picker.upload_failed_single'.trParams(
            {'fileName': file.name},
          );
      onError?.call(msg);
    }
  }

  Future<void> uploadAllFiles() async {
    if (uploadAll == null) return;

    final filesToUpload = pendingFiles;
    if (filesToUpload.isEmpty) return;

    final fileIds = filesToUpload.map((f) => f.id).toList();

    for (final fileId in fileIds) {
      final index = _findFileIndex(fileId);
      if (index != -1) {
        _files[index] =
            _files[index].copyWith(status: DSFilePickerItemStatus.uploading);
      }
    }
    notifyListeners();

    try {
      await uploadAll!(filesToUpload);

      for (final fileId in fileIds) {
        final index = _findFileIndex(fileId);
        if (index != -1) {
          _files[index] = _files[index].copyWith(
            status: DSFilePickerItemStatus.uploaded,
            uploadProgress: 1.0,
          );
        }
      }
      notifyListeners();
      onFilesChanged?.call(_files);
    } catch (e) {
      for (final fileId in fileIds) {
        final index = _findFileIndex(fileId);
        if (index != -1) {
          _files[index] = _files[index].copyWith(
            status: DSFilePickerItemStatus.error,
            errorMessage: e.toString(),
          );
        }
      }
      notifyListeners();
      onFilesChanged?.call(_files);

      final msg = errorUploadFailedMultiple?.call() ??
          'ds_file_picker.upload_failed_multiple'.tr;
      onError?.call(msg);
    }
  }

  Future<void> retryUpload(DSFilePickerItem file) async {
    final index = _findFileIndex(file.id);
    if (index == -1) return;

    _files[index] = file.copyWith(
      status: DSFilePickerItemStatus.pending,
      uploadProgress: 0.0,
      errorMessage: null,
    );
    notifyListeners();

    if (uploadOnSelect != null) {
      await _uploadFile(_files[index]);
    }
  }

  void removeFile(DSFilePickerItem file) {
    onFileRemoved?.call(file);
    _files.removeWhere((f) => f.id == file.id);
    notifyListeners();
    onFilesChanged?.call(_files);
  }

  void removeFileAt(int index) {
    if (index >= 0 && index < _files.length) {
      _files.removeAt(index);
      notifyListeners();
      onFilesChanged?.call(_files);
    }
  }

  void clearFiles() {
    _files.clear();
    notifyListeners();
    onFilesChanged?.call(_files);
  }

  void clearUploadedFiles() {
    _files.removeWhere((f) => f.status == DSFilePickerItemStatus.uploaded);
    notifyListeners();
    onFilesChanged?.call(_files);
  }

  void clearErrorFiles() {
    _files.removeWhere((f) => f.status == DSFilePickerItemStatus.error);
    notifyListeners();
    onFilesChanged?.call(_files);
  }

  void syncFiles(List<DSFilePickerItem> files) {
    final currentFilesById = {
      for (final file in _files) file.id: file,
    };
    final incomingFilesById = {
      for (final file in files) file.id: file,
    };
    final localOnlyFiles = _files.where((file) {
      return !incomingFilesById.containsKey(file.id);
    });

    final mergedFiles = files.map((file) {
      final currentFile = currentFilesById[file.id];
      if (currentFile == null) {
        return file;
      }

      return file.copyWith(
        path: file.path ?? currentFile.path,
        bytes: file.bytes ?? currentFile.bytes,
      );
    }).toList();

    _files
      ..clear()
      ..addAll(mergedFiles)
      ..addAll(localOnlyFiles);

    notifyListeners();
    onFilesChanged?.call(_files);
  }

  void updateFileStatus(
    String fileId,
    DSFilePickerItemStatus status, {
    double? progress,
    String? errorMessage,
  }) {
    final index = _findFileIndex(fileId);
    if (index == -1) return;

    _files[index] = _files[index].copyWith(
      status: status,
      uploadProgress: progress,
      errorMessage: errorMessage,
    );
    notifyListeners();
    onFilesChanged?.call(_files);
  }

  void updateFileProgress(String fileId, double progress) {
    final index = _findFileIndex(fileId);
    if (index == -1) return;

    _files[index] = _files[index].copyWith(uploadProgress: progress);
    notifyListeners();
  }

  @override
  void dispose() {
    _files.clear();
    super.dispose();
  }
}

class DropItem {
  final String name;
  final Future<Uint8List> Function() readAsBytes;

  DropItem({
    required this.name,
    required this.readAsBytes,
  });
}
