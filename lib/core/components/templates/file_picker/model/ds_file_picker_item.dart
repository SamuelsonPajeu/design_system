import 'dart:typed_data';

enum DSFilePickerItemStatus {
  pending,
  uploading,
  uploaded,
  error,
}

class DSFilePickerItem {
  final String id;
  final String name;
  final String? path;
  final int size;
  final Uint8List? bytes;
  final String? extension;
  DSFilePickerItemStatus status;
  double uploadProgress;
  String? errorMessage;

  DSFilePickerItem({
    String? id,
    required this.name,
    this.path,
    required this.size,
    this.bytes,
    this.extension,
    this.status = DSFilePickerItemStatus.pending,
    this.uploadProgress = 0.0,
    this.errorMessage,
  }) : id = id ?? '${DateTime.now().microsecondsSinceEpoch}_${name.hashCode}';

  String get formattedSize {
    if (size < 1024) {
      return '$size B';
    } else if (size < 1024 * 1024) {
      return '${(size / 1024).toStringAsFixed(1)} KB';
    } else if (size < 1024 * 1024 * 1024) {
      return '${(size / (1024 * 1024)).toStringAsFixed(1)} MB';
    } else {
      return '${(size / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
    }
  }

  DSFilePickerItem copyWith({
    String? name,
    String? path,
    int? size,
    Uint8List? bytes,
    String? extension,
    DSFilePickerItemStatus? status,
    double? uploadProgress,
    String? errorMessage,
  }) {
    return DSFilePickerItem(
      id: id,
      name: name ?? this.name,
      path: path ?? this.path,
      size: size ?? this.size,
      bytes: bytes ?? this.bytes,
      extension: extension ?? this.extension,
      status: status ?? this.status,
      uploadProgress: uploadProgress ?? this.uploadProgress,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DSFilePickerItem &&
          runtimeType == other.runtimeType &&
          id == other.id;

  @override
  int get hashCode => id.hashCode;
}
