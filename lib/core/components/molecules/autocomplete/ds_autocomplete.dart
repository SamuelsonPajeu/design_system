import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:design_system/core/components/molecules/select/ds_select.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum _DSAutocompleteType { single, multi }

/// A Design System Autocomplete widget with custom overlay logic.
class DSAutocomplete<T> extends StatefulWidget {
  const DSAutocomplete.single({
    super.key,
    required this.entries,
    required this.value,
    required this.onChanged,
    this.label,
    this.hintText,
    this.errorText,
    this.enabled = true,
    this.width,
    this.fieldLeadingIcon,
    this.onQueryChanged,
  })  : _type = _DSAutocompleteType.single,
        values = const [],
        onChangedMulti = null;

  const DSAutocomplete.multi({
    super.key,
    required this.entries,
    required this.values,
    required this.onChangedMulti,
    this.label,
    this.hintText,
    this.errorText,
    this.enabled = true,
    this.width,
    this.fieldLeadingIcon,
  })  : _type = _DSAutocompleteType.multi,
        value = null,
        onChanged = null,
        onQueryChanged = null;

  final _DSAutocompleteType _type;
  final List<DSSelectEntry<T>> entries;
  final String? label;
  final String? hintText;
  final String? errorText;
  final bool enabled;
  final double? width;
  final Widget? fieldLeadingIcon;

  // Single Params
  final T? value;
  final ValueChanged<T?>? onChanged;

  /// Callback triggered whenever the text content changes.
  final ValueChanged<String>? onQueryChanged;

  // Multi Params
  final List<T> values;
  final ValueChanged<List<T>>? onChangedMulti;

  @override
  State<DSAutocomplete<T>> createState() => _DSAutocompleteState();
}

class _DSAutocompleteState<T> extends State<DSAutocomplete<T>> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _textController = TextEditingController();
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _fieldKey = GlobalKey();

  OverlayEntry? _overlayEntry;
  List<DSSelectEntry<T>> _filteredEntries = [];
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _filteredEntries = widget.entries;
    _updateTextFromValue();

    _textController.addListener(_onTextChanged);
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void didUpdateWidget(DSAutocomplete<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      bool shouldUpdateText = false;
      if (widget._type == _DSAutocompleteType.single &&
          widget.value != oldWidget.value) {
        shouldUpdateText = true;
      }

      if (shouldUpdateText) {
        _updateTextFromValue();
      }

      if (widget.entries != oldWidget.entries) {
        _onTextChanged();
      }

      bool valuesChanged = false;
      if (widget._type == _DSAutocompleteType.multi) {
        if (widget.values != oldWidget.values ||
            widget.values.length != oldWidget.values.length) {
          valuesChanged = true;
        }
      } else {
        if (widget.value != oldWidget.value) {
          valuesChanged = true;
        }
      }

      if (valuesChanged && _isOpen && _overlayEntry != null) {
        _overlayEntry!.markNeedsBuild();
      }
    });
  }

  @override
  void dispose() {
    _closeMenu();
    _focusNode.dispose();
    _textController.dispose();
    super.dispose();
  }

  void _updateTextFromValue() {
    if (widget._type == _DSAutocompleteType.single) {
      if (widget.value != null) {
        final entry = widget.entries.firstWhere(
          (e) => e.value == widget.value,
          orElse: () => DSSelectEntry(value: widget.value!, label: ''),
        );
        if (_textController.text != entry.label) {
          _textController.text = entry.label;
        }
      } else {}
    }
  }

  void _onTextChanged() {
    final query = _textController.text.toLowerCase();

    widget.onQueryChanged?.call(_textController.text);

    setState(() {
      _filteredEntries = widget.entries.where((entry) {
        return entry.label.toLowerCase().contains(query);
      }).toList();
    });

    if (_focusNode.hasFocus) {
      _openMenu();
      _overlayEntry?.markNeedsBuild();
    }
  }

  void _onFocusChanged() {
    if (_focusNode.hasFocus) {
      _openMenu();
    }
    setState(() {});
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
  }

  void _handleSingleSelect(DSSelectEntry<T> entry) {
    widget.onChanged?.call(entry.value);
    _textController.text = entry.label;
    _closeMenu();
    _focusNode.unfocus();
  }

  void _handleMultiSelect(DSSelectEntry<T> entry) {
    final currentValues = List<T>.from(widget.values);
    if (currentValues.contains(entry.value)) {
      currentValues.remove(entry.value);
    } else {
      currentValues.add(entry.value);
    }
    widget.onChangedMulti?.call(currentValues);

    _textController.clear();
    _focusNode.requestFocus();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_overlayEntry != null && mounted) {
        _overlayEntry!.markNeedsBuild();
      }
    });
  }

  void _handleRemoveItem(T value) {
    if (!widget.enabled) return;
    final currentValues = List<T>.from(widget.values);
    currentValues.remove(value);
    widget.onChangedMulti?.call(currentValues);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_overlayEntry != null && mounted) {
        _overlayEntry!.markNeedsBuild();
      }
    });
  }

  void _handleClearAll() {
    if (!widget.enabled) return;
    _textController.clear();
    if (widget._type == _DSAutocompleteType.single) {
      widget.onChanged?.call(null);
    } else {
      widget.onChangedMulti?.call([]);
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_overlayEntry != null && mounted) {
        _overlayEntry!.markNeedsBuild();
      }
    });
  }

  // --- Overlay ---

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
                _focusNode.unfocus();
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
                  child: _filteredEntries.isEmpty
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
                          itemCount: _filteredEntries.length,
                          itemBuilder: (context, index) {
                            final entry = _filteredEntries[index];
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
    if (widget._type == _DSAutocompleteType.single) {
      final isSelected = entry.value == widget.value;
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.enabled && entry.enabled
              ? () => _handleSingleSelect(entry)
              : null,
          child: Container(
            color:
                isSelected ? context.colors.sysSurfaceContainerHighest : null,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                if (entry.leadingIcon != null) ...[
                  entry.leadingIcon!,
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: Text(
                    entry.label,
                    style: context.texts.bodyLarge.copyWith(
                      color: entry.enabled
                          ? context.colors.sysOnSurface
                          : context.colors.sysOnSurface.withValues(alpha: 0.38),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      final isSelected = widget.values.contains(entry.value);
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.enabled && entry.enabled
              ? () => _handleMultiSelect(entry)
              : null,
          child: Container(
            color:
                isSelected ? context.colors.sysSurfaceContainerHighest : null,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: DSCheckbox(
                    value: isSelected,
                    onChanged: (val) {},
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                const SizedBox(width: 12),
                if (entry.leadingIcon != null) ...[
                  entry.leadingIcon!,
                  const SizedBox(width: 12),
                ],
                Expanded(
                  child: Text(
                    entry.label,
                    style: context.texts.bodyLarge.copyWith(
                      color: entry.enabled
                          ? context.colors.sysOnSurface
                          : context.colors.sysOnSurface.withValues(alpha: 0.38),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  // --- Field Rendering ---

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final baseBodyLarge = context.texts.bodyLarge;
    final baseBodySmall = context.texts.bodySmall;

    final labelStyle = WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return baseBodyLarge.copyWith(
            color: context.colors.sysOnSurface.withValues(alpha: 0.38));
      }
      if (states.contains(WidgetState.error)) {
        return baseBodyLarge.copyWith(color: context.colors.sysError);
      }
      if (states.contains(WidgetState.hovered) ||
          states.contains(WidgetState.focused)) {
        return baseBodyLarge.copyWith(color: context.colors.sysOnSurface);
      }
      return baseBodyLarge.copyWith(color: context.colors.sysOnSurfaceVariant);
    });

    final floatingLabelStyle = WidgetStateTextStyle.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return baseBodySmall.copyWith(
            color: context.colors.sysOnSurface.withValues(alpha: 0.38));
      }
      if (states.contains(WidgetState.error)) {
        return baseBodySmall.copyWith(color: context.colors.sysError);
      }
      if (states.contains(WidgetState.focused)) {
        return baseBodySmall.copyWith(color: context.colors.sysPrimary);
      }
      return baseBodySmall.copyWith(color: context.colors.sysOnSurfaceVariant);
    });

    final iconColor = widget.enabled
        ? colors.sysOnSurfaceVariant
        : colors.sysOnSurfaceVariant.withValues(alpha: 0.38);

    const double borderWidth = 1.0;
    const double activeBorderWidth = 3.0;

    final bool showClearAll = widget.enabled &&
        ((widget._type == _DSAutocompleteType.single &&
                _textController.text.isNotEmpty) ||
            (widget._type == _DSAutocompleteType.multi &&
                (widget.values.isNotEmpty || _textController.text.isNotEmpty)));

    final bool isCompact = kIsWeb;
    final double verticalPadding = isCompact ? 8.0 : 16.0;

    final decoration = InputDecoration(
      labelText: widget.label,
      hintText: widget.hintText,
      errorText: widget.errorText,
      enabled: widget.enabled,
      filled: true,
      fillColor: colors.sysSurface,
      isDense: isCompact ? true : null,
      prefixIcon: widget.fieldLeadingIcon,
      prefixIconColor: iconColor,
      suffixIcon: showClearAll
          ? IconButton(
              icon: DSIcon.small(icon: Icons.highlight_off_outlined),
              color: iconColor,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: _handleClearAll,
              tooltip: 'Clear',
            )
          : null,
      contentPadding:
          EdgeInsets.symmetric(horizontal: 12, vertical: verticalPadding),
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
        child: SizedBox(
          key: _fieldKey,
          width: widget.width,
          child: widget._type == _DSAutocompleteType.single
              ? _buildSingleField(context, decoration)
              : _buildMultiField(context, decoration),
        ),
      ),
    );
  }

  Widget _buildSingleField(BuildContext context, InputDecoration decoration) {
    return TextField(
      controller: _textController,
      focusNode: _focusNode,
      enabled: widget.enabled,
      decoration: decoration,
      style: context.texts.bodyLarge.copyWith(
        color: widget.enabled
            ? context.colors.sysOnSurface
            : context.colors.sysOnSurface.withValues(alpha: 0.38),
      ),
    );
  }

  Widget _buildMultiField(BuildContext context, InputDecoration decoration) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (widget.enabled) {
          _focusNode.requestFocus();
        }
      },
      child: InputDecorator(
        decoration: decoration,
        isFocused: _focusNode.hasFocus,
        isEmpty: widget.values.isEmpty && _textController.text.isEmpty,
        child: Wrap(
          spacing: 8,
          runSpacing: 4,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            ...widget.values.map((val) {
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
            }),
            IntrinsicWidth(
              child: TextField(
                controller: _textController,
                focusNode: _focusNode,
                enabled: widget.enabled,
                decoration: const InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                ),
                style: context.texts.bodyLarge.copyWith(
                  color: widget.enabled
                      ? context.colors.sysOnSurface
                      : context.colors.sysOnSurface.withValues(alpha: 0.38),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
