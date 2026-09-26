import 'package:design_system/core/components/atoms/progress_indicator/ds_progress_indicator.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:design_system/core/components/templates/file_picker/model/ds_file_picker_item.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';

class DSFilePickerItemCard extends StatelessWidget {
  final DSFilePickerItem file;
  final VoidCallback? onRemove;
  final VoidCallback? onRetry;
  final bool showPreviewImage;
  final bool showRemoveFileButton;
  final Widget? customPreviewImage;

  const DSFilePickerItemCard({
    super.key,
    required this.file,
    this.onRemove,
    this.onRetry,
    this.showPreviewImage = false,
    this.showRemoveFileButton = true,
    this.customPreviewImage,
  });

  @override
  Widget build(BuildContext context) {
    return DSCard(
      style: DSCardStyle.outlined,
      title: file.name,
      avatar: showPreviewImage
          ? _getAutoPreviewImage(customPreviewImage)
          : _getPreviewIcon(),
      trailingIcon: _buildActions(context),
      showTrailingIcon: true,
      children: [
        if (file.status == DSFilePickerItemStatus.uploading)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: _buildProgressIndicator(context),
          )
        else
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: _buildStatusText(context),
          ),
      ],
    );
  }

  IconData _getFileIcon() {
    final ext = file.extension?.toLowerCase();
    switch (ext) {
      case 'pdf':
        return Symbols.picture_as_pdf;
      case 'jpg':
      case 'jpeg':
      case 'png':
      case 'gif':
      case 'webp':
        return Symbols.image;
      case 'mp4':
      case 'avi':
      case 'mov':
      case 'mkv':
        return Symbols.video_file;
      case 'mp3':
      case 'wav':
      case 'aac':
        return Symbols.audio_file;
      case 'doc':
      case 'docx':
        return Symbols.description;
      case 'xls':
      case 'xlsx':
        return Symbols.table_chart;
      case 'zip':
      case 'rar':
      case '7z':
        return Symbols.folder_zip;
      default:
        return Symbols.insert_drive_file;
    }
  }

  Widget _buildProgressIndicator(BuildContext context) {
    return DSProgressIndicator.linear(
      value: file.uploadProgress,
      minHeight: 4,
    );
  }

  Widget _buildStatusText(BuildContext context) {
    String statusText;
    Color statusColor;

    switch (file.status) {
      case DSFilePickerItemStatus.pending:
        statusText = file.formattedSize;
        statusColor = context.colors.sysOnSurfaceVariant;
        break;
      case DSFilePickerItemStatus.uploaded:
        statusText =
            '${file.formattedSize} - ${'ds_file_picker.upload_completed'.tr}';
        statusColor = context.colors.sysPrimary;
        break;
      case DSFilePickerItemStatus.error:
        statusText = file.errorMessage ?? 'ds_file_picker.upload_error'.tr;
        statusColor = context.colors.sysError;
        break;
      default:
        statusText = file.formattedSize;
        statusColor = context.colors.sysOnSurfaceVariant;
    }

    return DSText(
      statusText,
      style: context.texts.bodySmall.copyWith(
        color: statusColor,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (file.status == DSFilePickerItemStatus.error && onRetry != null)
          IconButton(
            onPressed: onRetry,
            icon: Icon(
              Symbols.refresh,
              color: context.colors.sysOnSurfaceVariant,
            ),
            tooltip: 'ds_file_picker.retry'.tr,
            padding: EdgeInsets.zero,
          ),
        if (showRemoveFileButton && onRemove != null)
          IconButton(
            onPressed: onRemove,
            icon: Icon(
              Symbols.close,
              color: context.colors.sysOnSurfaceVariant,
            ),
            tooltip: 'ds_file_picker.remove'.tr,
            padding: EdgeInsets.zero,
          ),
      ],
    );
  }

  DSAvatar _getAutoPreviewImage(Widget? customPreviewImage) {
    if (customPreviewImage != null) {
      return DSAvatar.large.image(child: customPreviewImage);
    }

    if (file.bytes == null || file.bytes!.isEmpty) {
      return _getPreviewIcon();
    }

    if (_isImageFile()) {
      return _buildImagePreview();
    }

    return _getPreviewIcon();
  }

  bool _isImageFile() {
    final ext = file.extension?.toLowerCase();
    return ['jpg', 'jpeg', 'png', 'gif', 'webp', 'bmp'].contains(ext);
  }

  DSAvatar _buildImagePreview() {
    try {
      return DSAvatar.large.image(
        background: Colors.transparent,
        child: Image.memory(
          file.bytes!,
          fit: BoxFit.cover,
          width: 48,
          height: 48,
          errorBuilder: (context, error, stackTrace) {
            return _buildIconContainer();
          },
        ),
      );
    } catch (_) {
      return _getPreviewIcon();
    }
  }

  Widget _buildIconContainer() {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        _getFileIcon(),
        size: 24,
        color: Colors.grey[600],
      ),
    );
  }

  DSAvatar _getPreviewIcon() {
    return DSAvatar.large.icon(
      icon: _getFileIcon(),
    );
  }
}
