import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Defines an item in the [DSSelect] menu.
class DSSelectEntry<T> {
  const DSSelectEntry({
    required this.value,
    required this.label,
    this.leadingIcon,
    this.enabled = true,
  });

  final T value;
  final String label;
  final Widget? leadingIcon;
  final bool enabled;
}

enum _DSSelectType { single, multi }

/// A Design System Select widget that supports Single and Multi selection.
class DSSelect<T> extends StatefulWidget {
  /// Creates a Single Select field.
  const DSSelect.single({
    super.key,
    required this.entries,
    required this.value,
    required this.onChanged,
    this.label,
    this.hintText,
    this.errorText,
    this.enabled = true,
    this.width,
    this.allowClear = true,
    this.textStyle,
  })  : _type = _DSSelectType.single,
        values = const [],
        onChangedMulti = null;

  /// Creates a Multi Select field.
  const DSSelect.multi({
    super.key,
    required this.entries,
    required this.values,
    required this.onChangedMulti,
    this.label,
    this.hintText,
    this.errorText,
    this.enabled = true,
    this.width,
    this.allowClear = true,
    this.textStyle,
  })  : _type = _DSSelectType.multi,
        value = null,
        onChanged = null;

  final _DSSelectType _type;
  final List<DSSelectEntry<T>> entries;
  final String? label;
  final String? hintText;
  final String? errorText;
  final bool enabled;
  final double? width;
  final bool allowClear;
  final TextStyle? textStyle;

  // Single Select Params
  final T? value;
  final ValueChanged<T?>? onChanged;

  // Multi Select Params
  final List<T> values;
  final ValueChanged<List<T>>? onChangedMulti;

  @override
  State<DSSelect<T>> createState() => _DSSelectState();
}

class _DSSelectState<T> extends State<DSSelect<T>> {
  final FocusNode _focusNode = FocusNode();
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _fieldKey = GlobalKey();

  OverlayEntry? _overlayEntry;
  bool _isOpen = false;

  @override
  void dispose() {
    _closeMenu();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(DSSelect<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (_isOpen && _overlayEntry != null) {
      bool shouldRebuild = false;

      if (widget._type == _DSSelectType.single) {
        if (widget.value != oldWidget.value) shouldRebuild = true;
      } else {
        if (widget.values != oldWidget.values ||
            widget.values.length != oldWidget.values.length) {
          shouldRebuild = true;
        }
      }

      if (shouldRebuild) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted && _overlayEntry != null) {
            _overlayEntry!.markNeedsBuild();
          }
        });
      }
    }
  }

  void _toggleMenu() {
    if (_isOpen) {
      _closeMenu();
    } else {
      _openMenu();
      _focusNode.requestFocus();
    }
  }

  void _openMenu() {
    if (_isOpen) return;
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
    setState(() => _isOpen = true);
  }

  void _closeMenu() {
    if (!_isOpen) return;
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() => _isOpen = false);
    _focusNode.unfocus();
  }

  void _handleSingleSelect(T value) {
    widget.onChanged?.call(value);
    _closeMenu();
  }

  void _handleMultiSelect(T value) {
    final currentValues = List<T>.from(widget.values);
    if (currentValues.contains(value)) {
      currentValues.remove(value);
    } else {
      currentValues.add(value);
    }
    widget.onChangedMulti?.call(currentValues);
  }

  void _handleRemoveItem(T value) {
    if (!widget.enabled) return;
    final currentValues = List<T>.from(widget.values);
    currentValues.remove(value);
    widget.onChangedMulti?.call(currentValues);
  }

  void _handleClearAll() {
    if (!widget.enabled) return;

    if (widget._type == _DSSelectType.single) {
      widget.onChanged?.call(null);
    } else {
      widget.onChangedMulti?.call([]);
    }
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) {
        final RenderBox? renderBox =
            _fieldKey.currentContext?.findRenderObject() as RenderBox?;
        final double width = renderBox?.size.width ?? 200.0;
        final colors = context.colors;

        return Positioned(
          width: width,
          child: CompositedTransformFollower(
            link: _layerLink,
            showWhenUnlinked: false,
            targetAnchor: Alignment.bottomLeft,
            followerAnchor: Alignment.topLeft,
            offset: const Offset(0, 8.0),
            child: TapRegion(
              groupId: _fieldKey,
              onTapOutside: (event) {
                _closeMenu();
              },
              child: Material(
                elevation: 4,
                color: colors.sysSurfaceContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAlias,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 200),
                  child: widget.entries.isEmpty
                      ? Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Nenhum resultado encontrado.',
                            style: context.texts.bodyMedium
                                .copyWith(color: colors.sysOnSurfaceVariant),
                          ),
                        )
                      : ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: widget.entries.length,
                          itemBuilder: (context, index) {
                            final entry = widget.entries[index];
                            return _buildMenuItem(entry);
                          },
                        ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMenuItem(DSSelectEntry<T> entry) {
    final colors = context.colors;
    final bool isSelected;

    if (widget._type == _DSSelectType.single) {
      isSelected = entry.value == widget.value;
    } else {
      isSelected = widget.values.contains(entry.value);
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.enabled && entry.enabled
            ? () {
                if (widget._type == _DSSelectType.single) {
                  _handleSingleSelect(entry.value);
                } else {
                  _handleMultiSelect(entry.value);
                }
              }
            : null,
        child: Container(
          color: isSelected ? colors.sysSurfaceContainerHighest : null,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              if (widget._type == _DSSelectType.multi) ...[
                SizedBox(
                  width: 24,
                  height: 24,
                  child: DSCheckbox(
                    value: isSelected,
                    onChanged: (_) {},
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                const SizedBox(width: 12),
              ],
              if (entry.leadingIcon != null) ...[
                entry.leadingIcon!,
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Text(
                  entry.label,
                  style: context.texts.bodyLarge.copyWith(
                    color: entry.enabled
                        ? colors.sysOnSurface
                        : colors.sysOnSurface.withValues(alpha: 0.38),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // --- Styles (Matching DSTextField / DSAutocomplete) ---
    final baseBodyLarge = context.texts.bodyLarge;
    final baseBodySmall = context.texts.bodySmall;
    final colors = context.colors;

    final double borderWidth = 1.0;
    const double activeBorderWidth = 3.0;

    final labelStyle = widget.enabled
        ? (widget.errorText != null
            ? baseBodyLarge.copyWith(color: colors.sysError)
            : baseBodyLarge.copyWith(color: colors.sysOnSurfaceVariant))
        : baseBodyLarge.copyWith(
            color: colors.sysOnSurface.withValues(alpha: 0.38));

    final floatingLabelStyle = widget.enabled
        ? (widget.errorText != null
            ? baseBodySmall.copyWith(color: colors.sysError)
            : baseBodySmall.copyWith(color: colors.sysOnSurfaceVariant))
        : baseBodySmall.copyWith(
            color: colors.sysOnSurface.withValues(alpha: 0.38));

    final iconColor = widget.enabled
        ? colors.sysOnSurfaceVariant
        : colors.sysOnSurfaceVariant.withValues(alpha: 0.38);

    final bool showClearAll;
    if (!widget.enabled || !widget.allowClear) {
      showClearAll = false;
    } else if (widget._type == _DSSelectType.single) {
      showClearAll = widget.value != null;
    } else {
      showClearAll = widget.values.isNotEmpty;
    }

    final decoration = InputDecoration(
      labelText: widget.label,
      hintText: widget.hintText,
      errorText: widget.errorText,
      enabled: widget.enabled,
      filled: true,
      fillColor: colors.sysSurface,
      prefixIcon: null,
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (showClearAll) ...[
            IconButton(
              icon: DSIcon.small(icon: Icons.highlight_off_outlined),
              color: iconColor,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: _handleClearAll,
              tooltip: 'Clear selection',
            ),
            const SizedBox(width: 8),
          ],
          DSIcon.small(
            icon: _isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
            color: iconColor,
          ),
          const SizedBox(width: 8),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colors.sysOutline, width: borderWidth),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colors.sysOutline, width: borderWidth),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
            BorderSide(color: colors.sysPrimary, width: activeBorderWidth),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: colors.sysError, width: borderWidth),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide:
            BorderSide(color: colors.sysError, width: activeBorderWidth),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: colors.sysOutline.withValues(alpha: 0.12),
          width: borderWidth,
        ),
      ),
      labelStyle: labelStyle,
      floatingLabelStyle: floatingLabelStyle,
      hintStyle: baseBodyLarge.copyWith(
        color: colors.sysOnSurfaceVariant
            .withValues(alpha: widget.enabled ? 1.0 : 0.38),
      ),
      errorStyle: context.texts.bodySmall.copyWith(color: colors.sysError),
    );

    return CompositedTransformTarget(
      link: _layerLink,
      child: TapRegion(
        groupId: _fieldKey,
        onTapOutside: (event) {
          _closeMenu();
        },
        child: SizedBox(
          key: _fieldKey,
          width: widget.width,
          child: InkWell(
            onTap: widget.enabled ? _toggleMenu : null,
            borderRadius: BorderRadius.circular(8),
            child: InputDecorator(
              isFocused: _isOpen || _focusNode.hasFocus,
              isEmpty: widget._type == _DSSelectType.single
                  ? widget.value == null
                  : widget.values.isEmpty,
              decoration: decoration,
              child: widget._type == _DSSelectType.single
                  ? _buildSingleValue(context)
                  : _buildMultiValue(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSingleValue(BuildContext context) {
    if (widget.value == null) return const SizedBox.shrink();

    final selectedEntry = widget.entries.firstWhere(
      (e) => e.value == widget.value,
      orElse: () =>
          DSSelectEntry(value: widget.value!, label: widget.value.toString()),
    );

    final effectiveStyle = widget.textStyle ?? context.texts.bodyLarge;

    return Text(
      selectedEntry.label,
      style: effectiveStyle.copyWith(
        color: widget.enabled
            ? context.colors.sysOnSurface
            : context.colors.sysOnSurface.withValues(alpha: 0.38),
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildMultiValue(BuildContext context) {
    if (widget.values.isEmpty) return const SizedBox.shrink();

    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: widget.values.map((val) {
        final entry = widget.entries.firstWhere(
          (e) => e.value == val,
          orElse: () => DSSelectEntry(value: val, label: val.toString()),
        );

        return DSChip.input(
          label: DSText(entry.label),
          onPressed: () {},
          onDeleted: widget.enabled ? () => _handleRemoveItem(val) : null,
          useBackground: true,
        );
      }).toList(),
    );
  }
}
