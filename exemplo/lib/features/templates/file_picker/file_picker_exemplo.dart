import 'dart:math';

import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/templates/file_picker/controller/ds_file_picker_controller.dart';
import 'package:design_system/core/components/templates/file_picker/model/ds_file_picker_item.dart';
import 'package:design_system/core/components/templates/file_picker/model/ds_file_picker_source.dart';
import 'package:design_system/core/components/templates/file_picker/views/ds_file_picker.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class FilePickerExemplo extends StatefulWidget {
  const FilePickerExemplo({super.key});

  @override
  State<FilePickerExemplo> createState() => _FilePickerExemploState();
}

class _FilePickerExemploState extends State<FilePickerExemplo> {
  final Map<String, Color> _fileColors = {};
  final Random _random = Random();
  late DSFilePickerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = DSFilePickerController(
      allowMultiple: true,
      allowedExtensions: const [
        'pdf',
        'jpg',
        'jpeg',
        'png',
        'doc',
        'docx',
        'mp4',
      ],
      maxFiles: 10,
    );
    _controller.addListener(_onControllerChanged);
  }

  void _onControllerChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.removeListener(_onControllerChanged);
    _controller.dispose();
    super.dispose();
  }

  Color _getColorForFile(String fileId) {
    return _fileColors.putIfAbsent(
      fileId,
      () => Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      ),
    );
  }

  Widget _buildCustomPreview(DSFilePickerItem file) {
    final color = _getColorForFile(file.id);
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          file.name.isNotEmpty ? file.name[0].toUpperCase() : '?',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Future<void> _mockUpload(
    DSFilePickerItem file,
    void Function(double) onProgress,
  ) async {
    final random = Random();
    final fileSizeMB = file.size / (1024 * 1024);
    final baseDelay = (50 + (fileSizeMB * 30)).toInt().clamp(50, 5000);

    for (var i = 0; i <= 100; i += 10) {
      await Future.delayed(
          Duration(milliseconds: baseDelay + random.nextInt(100)));
      onProgress(i / 100);
    }

    if (random.nextDouble() < 0.2) {
      throw Exception('Erro simulado no upload');
    }
  }

  bool get _hasPendingFiles =>
      _controller.files.any((f) => f.status == DSFilePickerItemStatus.pending);

  Future<void> _uploadAllPendingFiles() async {
    final pendingFiles = _controller.files
        .where((f) => f.status == DSFilePickerItemStatus.pending)
        .toList();

    for (final file in pendingFiles) {
      _controller.updateFileStatus(
        file.id,
        DSFilePickerItemStatus.uploading,
      );
    }

    for (final file in pendingFiles) {
      try {
        await _mockUpload(file, (progress) {
          _controller.updateFileProgress(file.id, progress);
        });
        _controller.updateFileStatus(
          file.id,
          DSFilePickerItemStatus.uploaded,
          progress: 1.0,
        );
      } catch (e) {
        _controller.updateFileStatus(
          file.id,
          DSFilePickerItemStatus.error,
          errorMessage: e.toString(),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isWeb = context.knobs.boolean(label: 'isWeb', initial: true);
    final withUpload =
        context.knobs.boolean(label: 'Auto Upload (Mock)', initial: true);
    final showPreview = context.knobs
        .boolean(label: 'Mostrar Preview de Imagem', initial: false);
    final useCustomPreview = context.knobs
        .boolean(label: 'Custom Preview (cor aleatória)', initial: false);
    final maxFileSizeMB = context.knobs.sliderInt(
      label: 'Tamanho máximo (MB)',
      initial: 50,
      min: 1,
      max: 1024,
    );
    final useSourceSheet =
        context.knobs.boolean(label: 'Bottom sheet de origem', initial: true);

    _controller.updateUploadCallbacks(
      uploadOnSelect: withUpload ? _mockUpload : null,
    );

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DSFilePicker',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Widget para seleção de arquivos com suporte a drag & drop.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Divider(height: 32),
            Text(
              withUpload ? 'Com Upload Automático' : 'Sem Upload',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 4),
            Text(
              withUpload
                  ? 'Arquivos são enviados automaticamente ao selecionar (20% de chance de erro para testar retry). Tempo de upload proporcional ao tamanho do arquivo.'
                  : 'Arquivos ficam apenas na memória local, sem upload',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 16),
            DSFilePicker(
              controller: _controller,
              isWeb: isWeb,
              allowMultiple: true,
              allowedExtensions: const [
                'pdf',
                'jpg',
                'jpeg',
                'png',
                'doc',
                'docx',
                'mp4',
              ],
              maxFiles: 10,
              maxFileSize: maxFileSizeMB * 1024 * 1024,
              dropZoneTitle: 'Escolha um arquivo ou arraste e solte aqui',
              dropZoneSubtitle:
                  'JPEG, PNG, PDF, DOC, e MP4 formatos. até ${maxFileSizeMB}MB',
              dropZoneButtonText: 'Teste',
              sources: useSourceSheet
                  ? [
                      DSFilePickerSource.camera(),
                      DSFilePickerSource.gallery(),
                      DSFilePickerSource.pdf(),
                    ]
                  : null,
              sourceSheetTitle: 'Adicionar exame',
              sourceSheetSubtitle: 'Escolha a origem do arquivo',
              uploadOnSelect: withUpload ? _mockUpload : null,
              showPreviewImage: showPreview,
              customPreviewBuilder:
                  useCustomPreview ? _buildCustomPreview : null,
              onFilesChanged: (files) {
                debugPrint('Arquivos: ${files.length}');
              },
              headerText: 'Upload de arquivos',
              actionButtons: withUpload
                  ? null
                  : [
                      DSButton.filled(
                        onTap: _hasPendingFiles
                            ? () async {
                                await _uploadAllPendingFiles();
                              }
                            : null,
                        buttonText: 'Enviar',
                        buttonIcon: Symbols.cloud_upload,
                        enabled: _hasPendingFiles,
                      ),
                    ],
            ),
          ],
        ),
      ),
    );
  }
}
