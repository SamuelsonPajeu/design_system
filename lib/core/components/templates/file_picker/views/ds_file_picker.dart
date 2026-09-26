import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/bottom_sheet/ds_bottom_sheet.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/snackbar/ds_snackbar.dart';
import 'package:design_system/core/components/templates/file_picker/controller/ds_file_picker_controller.dart';
import 'package:design_system/core/components/templates/file_picker/model/ds_file_picker_item.dart';
import 'package:design_system/core/components/templates/file_picker/model/ds_file_picker_source.dart';
import 'package:design_system/core/components/templates/file_picker/views/ds_file_picker_drop_zone.dart';
import 'package:design_system/core/components/templates/file_picker/views/ds_file_picker_item_card.dart';
import 'package:design_system/core/components/templates/file_picker/views/ds_file_picker_source_sheet.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class DSFilePicker extends StatefulWidget {
  final DSFilePickerController? controller;
  final bool? isWeb;
  final bool allowMultiple;
  final List<String>? allowedExtensions;
  final FileType type;
  final Future<void> Function(DSFilePickerItem, void Function(double))?
      uploadOnSelect;
  final Future<void> Function(List<DSFilePickerItem>)? uploadAll;
  final void Function(List<DSFilePickerItem>)? onFilesChanged;
  final int? maxFiles;
  final int? maxFileSize;
  final String? dropZoneTitle;
  final String? dropZoneSubtitle;
  final String? dropZoneButtonText;
  final double? dropZoneHeight;
  final double? dropZoneWidth;
  final List<DSFilePickerSource>? sources;
  final String? sourceSheetTitle;
  final String? sourceSheetSubtitle;
  final String? sourceSheetCancelText;
  final String? fileListTitle;
  final String? headerText;
  final Widget? headerWidget;
  final Widget? buttonOveride;
  final bool showUploadAllButton;
  final String? uploadAllButtonText;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? pickerDropZonePadding;
  final bool showPreviewImage;
  final bool showRemoveFileButton;
  final Widget Function(DSFilePickerItem file)? customPreviewBuilder;
  final List<DSButton>? actionButtons;
  final String Function(String fileName, String maxMb)? errorSizeExceededSingle;
  final String Function(int fileCount, String maxMb)? errorSizeExceededMultiple;
  final String Function(String fileName)? errorUploadFailedSingle;
  final String Function()? errorUploadFailedMultiple;

  const DSFilePicker({
    super.key,
    this.controller,
    this.isWeb,
    this.allowMultiple = true,
    this.allowedExtensions,
    this.type = FileType.any,
    this.uploadOnSelect,
    this.uploadAll,
    this.onFilesChanged,
    this.maxFiles,
    this.maxFileSize,
    this.dropZoneTitle,
    this.dropZoneSubtitle,
    this.dropZoneButtonText,
    this.dropZoneHeight,
    this.dropZoneWidth,
    this.sources,
    this.sourceSheetTitle,
    this.sourceSheetSubtitle,
    this.sourceSheetCancelText,
    this.headerText,
    this.headerWidget,
    this.buttonOveride,
    this.fileListTitle,
    this.showUploadAllButton = false,
    this.uploadAllButtonText,
    this.padding,
    this.pickerDropZonePadding,
    this.showPreviewImage = false,
    this.showRemoveFileButton = true,
    this.customPreviewBuilder,
    this.actionButtons,
    this.errorSizeExceededSingle,
    this.errorSizeExceededMultiple,
    this.errorUploadFailedSingle,
    this.errorUploadFailedMultiple,
  });

  @override
  State<DSFilePicker> createState() => _DSFilePickerState();
}

class _DSFilePickerState extends State<DSFilePicker> {
  late DSFilePickerController _internalController;
  bool _useInternalController = false;

  DSFilePickerController get _controller =>
      widget.controller ?? _internalController;

  bool get _isWebLayout => widget.isWeb ?? kIsWeb;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _useInternalController = true;
      _internalController = DSFilePickerController(
        allowMultiple: widget.allowMultiple,
        allowedExtensions: widget.allowedExtensions,
        type: widget.type,
        uploadOnSelect: widget.uploadOnSelect,
        uploadAll: widget.uploadAll,
        onFilesChanged: widget.onFilesChanged,
        maxFiles: widget.maxFiles,
        maxFileSize: widget.maxFileSize,
        errorSizeExceededSingle: widget.errorSizeExceededSingle,
        errorSizeExceededMultiple: widget.errorSizeExceededMultiple,
        errorUploadFailedSingle: widget.errorUploadFailedSingle,
        errorUploadFailedMultiple: widget.errorUploadFailedMultiple,
      );
    }

    _controller.onError = _showErrorSnackbar;
  }

  @override
  void didUpdateWidget(covariant DSFilePicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller != oldWidget.controller) {
      if (oldWidget.controller != null) {
        oldWidget.controller!.onError = null;
      }
      if (widget.controller != null) {
        widget.controller!.onError = _showErrorSnackbar;
      }
    }

    if (_useInternalController) {
      if (widget.uploadOnSelect != oldWidget.uploadOnSelect ||
          widget.uploadAll != oldWidget.uploadAll) {
        _internalController.updateUploadCallbacks(
          uploadOnSelect: widget.uploadOnSelect,
          uploadAll: widget.uploadAll,
        );
      }
    }
  }

  @override
  void dispose() {
    if (!_useInternalController && widget.controller != null) {
      widget.controller!.onError = null;
    }

    if (_useInternalController) {
      _internalController.dispose();
    }
    super.dispose();
  }

  void _showErrorSnackbar(String message) {
    if (!mounted) return;
    showDSSnackbar(
      context,
      DSSnackbar.twoLines(
        type: DSSnackbarType.error,
        text: message,
        showCloseButton: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DSFilePickerController>.value(
      value: _controller,
      child: Consumer<DSFilePickerController>(
        builder: (context, controller, _) {
          return Padding(
            padding: widget.padding ?? EdgeInsets.zero,
            child: _isWebLayout
                ? _buildWebLayout(context, controller)
                : _buildMobileLayout(context, controller),
          );
        },
      ),
    );
  }

  Widget _buildWebLayout(
      BuildContext context, DSFilePickerController controller) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.sysSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colors.sysOutline),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: DSFilePickerDropZone(
                  onDrop: _handleDrop,
                  onTap: () => _handleUploadTap(context, controller),
                  title: widget.dropZoneTitle,
                  subtitle: widget.dropZoneSubtitle,
                  buttonText: widget.dropZoneButtonText,
                  height: widget.dropZoneHeight,
                  width: widget.dropZoneWidth,
                  headerText: widget.headerText,
                  headerWidget: widget.headerWidget,
                  buttonOveride: widget.buttonOveride,
                  enabled: controller.canAddMore,
                  padding: widget.pickerDropZonePadding,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 1,
                child: _buildFileList(context, controller),
              ),
            ],
          ),
          if (widget.actionButtons != null) _buildActionButtons(),
        ],
      ),
    );
  }

  Padding _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: widget.actionButtons?.length ?? 0,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: widget.actionButtons![index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileLayout(
      BuildContext context, DSFilePickerController controller) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.sysSurface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colors.sysOutline),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DSFilePickerDropZone(
            onDrop: _handleDrop,
            onTap: () => _handleUploadTap(context, controller),
            title: widget.dropZoneTitle,
            subtitle: widget.dropZoneSubtitle,
            buttonText: widget.dropZoneButtonText,
            height: widget.dropZoneHeight,
            width: widget.dropZoneWidth,
            enabled: controller.canAddMore,
            headerText: widget.headerText,
            headerWidget: widget.headerWidget,
            buttonOveride: widget.buttonOveride,
            padding: widget.pickerDropZonePadding,
          ),
          if (controller.hasFiles) ...[
            const SizedBox(height: 16),
            _buildFileList(context, controller),
          ],
          if (widget.actionButtons != null) _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildFileList(
      BuildContext context, DSFilePickerController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (controller.hasFiles) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DSText(
                widget.fileListTitle ??
                    'ds_file_picker.files_selected'.trParams(
                      {'count': controller.files.length.toString()},
                    ),
                style: context.texts.bodyMedium.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (widget.showUploadAllButton &&
                  widget.uploadAll != null &&
                  controller.pendingFiles.isNotEmpty)
                DSButton.tonal(
                  onTap: () async {
                    await controller.uploadAllFiles();
                  },
                  buttonText: widget.uploadAllButtonText ??
                      'ds_file_picker.upload_all'.tr,
                ),
            ],
          ),
          const SizedBox(height: 18),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: double.infinity,
            ),
            child: _isWebLayout
                ? SingleChildScrollView(
                    child: _buildFileCards(controller),
                  )
                : _buildFileCards(controller),
          ),
        ] else
          DSText(
            'ds_file_picker.no_file_selected'.tr,
            style: context.texts.bodyMedium.copyWith(
              color: context.colors.sysOnSurfaceVariant,
            ),
          ),
      ],
    );
  }

  Widget _buildFileCards(DSFilePickerController controller) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: controller.files.map((file) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: DSFilePickerItemCard(
            file: file,
            onRemove: () => controller.removeFile(file),
            onRetry: file.status == DSFilePickerItemStatus.error
                ? () => controller.retryUpload(file)
                : null,
            showPreviewImage: widget.showPreviewImage,
            showRemoveFileButton: widget.showRemoveFileButton,
            customPreviewImage: widget.customPreviewBuilder?.call(file),
          ),
        );
      }).toList(),
    );
  }

  Future<void> _handleUploadTap(
      BuildContext context, DSFilePickerController controller) async {
    final sources = widget.sources;
    if (sources == null || sources.isEmpty) {
      await controller.pickFiles();
      return;
    }
    await DSBottomSheet(
      context,
      isScrollControlled: true,
      backgroundColor: context.colors.sysSurfaceContainerLow,
      child: DSFilePickerSourceSheet(
        controller: controller,
        sources: sources,
        title: widget.sourceSheetTitle,
        subtitle: widget.sourceSheetSubtitle,
        cancelText: widget.sourceSheetCancelText,
      ),
    );
  }

  void _handleDrop(List<dynamic> details) {
    for (final detail in details) {
      if (detail.files.isNotEmpty) {
        final dropItems = detail.files.map<DropItem>((xFile) {
          return DropItem(
            name: xFile.name,
            readAsBytes: () => xFile.readAsBytes(),
          );
        }).toList();
        _controller.addDroppedFiles(dropItems);
      }
    }
  }
}
