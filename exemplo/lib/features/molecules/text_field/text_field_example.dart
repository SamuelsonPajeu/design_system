import 'package:design_system/core/components/molecules/text_field/ds_text_field.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({super.key});

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  final TextEditingController _interactiveControllerStandard =
      TextEditingController();
  final TextEditingController _interactiveControllerSmall =
      TextEditingController();

  @override
  void initState() {
    super.initState();
    _interactiveControllerStandard.addListener(() {
      if (mounted) setState(() {});
    });
    _interactiveControllerSmall.addListener(() {
      if (mounted) setState(() {});
    });
  }

  @override
  void dispose() {
    _interactiveControllerStandard.dispose();
    _interactiveControllerSmall.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final enabled = context.knobs.boolean(
      label: 'Enabled',
      description: 'Enables or disables the text field',
      initial: true,
    );

    final readOnly = context.knobs.boolean(
      label: 'Read Only',
      description: 'Makes the text field read-only',
      initial: false,
    );

    final hasError = context.knobs.boolean(
      label: 'Error State',
      description: 'Sets the field to error state',
      initial: false,
    );

    final labelText = context.knobs.text(
      label: 'Label Text',
      description: 'The label displayed above the field',
      initial: 'Label',
    );

    final labelAlwaysOnTop = context.knobs.boolean(
      label: 'Label Always On Top',
      description: 'Forces the label to always float on top',
      initial: true,
    );

    final hintText = context.knobs.text(
      label: 'Hint Text',
      description: 'Hint text displayed when field is empty and focused',
      initial: 'Placeholder',
    );

    final showPrefixIcon = context.knobs.boolean(
      label: 'Show Prefix Icon',
      description: 'Shows an icon at the start of the field',
      initial: true,
    );

    final suffixOption = context.knobs.options(
      label: 'Suffix Option',
      description: 'Controls the suffix widget (end of field)',
      initial: _SuffixOption.clearButton,
      options: const [
        Option(label: 'Clear Button', value: _SuffixOption.clearButton),
        Option(label: 'Custom Icon', value: _SuffixOption.customIcon),
        Option(label: 'None', value: _SuffixOption.none),
      ],
    );

    final visualSize = context.knobs.options(
      label: 'Visual Verification Size',
      description: 'Changes the size of the static examples',
      initial: _VisualSize.standard,
      options: const [
        Option(label: 'Standard', value: _VisualSize.standard),
        Option(label: 'Small', value: _VisualSize.small),
      ],
    );

    // --- Interactive Logic ---
    final bool showClearButtonInteractive =
        suffixOption == _SuffixOption.clearButton;
    final Widget? suffixIconInteractive =
        suffixOption == _SuffixOption.customIcon
            ? const Icon(Symbols.square, size: 24)
            : null;

    return DSScaffold(
      appBar: AppBar(
        title: Text('TextField Component', style: context.texts.titleLarge),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ================= INTERACTIVE DEMO (STANDARD) =================
              Text('Interactive Demo (Standard)',
                  style: context.texts.titleMedium),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: context.colors.sysOutlineVariant),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DSTextField.standard(
                  controller: _interactiveControllerStandard,
                  enabled: enabled,
                  readOnly: readOnly,
                  labelText: labelText.isNotEmpty ? labelText : null,
                  labelAlwaysOnTop: labelAlwaysOnTop,
                  hintText: hintText.isNotEmpty ? hintText : null,
                  errorText: hasError ? 'Error Message' : null,
                  prefixIcon: showPrefixIcon
                      ? const Icon(
                          Icons.search,
                          size: 24,
                        )
                      : null,
                  suffixIcon: suffixIconInteractive,
                  showClearButtonAndErrorIcon: showClearButtonInteractive,
                ),
              ),

              const SizedBox(height: 32),

              // ================= INTERACTIVE DEMO (SMALL) =================
              Text('Interactive Demo (Small)',
                  style: context.texts.titleMedium),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: context.colors.sysOutlineVariant),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DSTextField.small(
                  controller: _interactiveControllerSmall,
                  enabled: enabled,
                  readOnly: readOnly,
                  labelText: labelText.isNotEmpty ? labelText : null,
                  labelAlwaysOnTop: labelAlwaysOnTop,
                  hintText: hintText.isNotEmpty ? hintText : null,
                  errorText: hasError ? 'Error Message' : null,
                  prefixIcon: showPrefixIcon
                      ? const Icon(
                          Icons.search,
                          size: 24,
                        )
                      : null,
                  suffixIcon: suffixIconInteractive,
                  showClearButtonAndErrorIcon: showClearButtonInteractive,
                ),
              ),

              const SizedBox(height: 48),
              Divider(color: context.colors.sysOutlineVariant),
              const SizedBox(height: 48),

              // ================= VISUAL STATIC EXAMPLES =================
              Text('Visual Verification', style: context.texts.titleMedium),
              const SizedBox(height: 24),

              _buildVisualVerificationTable(context, visualSize),

              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVisualVerificationTable(
      BuildContext context, _VisualSize visualSize) {
    final List<_ColConfig> columns = [
      // 1-3: Clear Activated, No Prefix
      const _ColConfig(
          showClear: true, showPrefix: false, content: _FieldContent.text),
      const _ColConfig(
          showClear: true,
          showPrefix: false,
          content: _FieldContent.labelInside),
      const _ColConfig(
          showClear: true, showPrefix: false, content: _FieldContent.hint),
      // 4-6: Clear Activated, Prefix Activated
      const _ColConfig(
          showClear: true, showPrefix: true, content: _FieldContent.text),
      const _ColConfig(
          showClear: true,
          showPrefix: true,
          content: _FieldContent.labelInside),
      const _ColConfig(
          showClear: true, showPrefix: true, content: _FieldContent.hint),
      // 7-9: Clear Deactivated, No Prefix
      const _ColConfig(
          showClear: false, showPrefix: false, content: _FieldContent.text),
      const _ColConfig(
          showClear: false,
          showPrefix: false,
          content: _FieldContent.labelInside),
      const _ColConfig(
          showClear: false, showPrefix: false, content: _FieldContent.hint),
      // 10-12: Clear Deactivated, Prefix Activated
      const _ColConfig(
          showClear: false, showPrefix: true, content: _FieldContent.text),
      const _ColConfig(
          showClear: false,
          showPrefix: true,
          content: _FieldContent.labelInside),
      const _ColConfig(
          showClear: false, showPrefix: true, content: _FieldContent.hint),
    ];

    final List<_RowConfig> rows = [
      const _RowConfig('Enabled', _FieldState.enabled),
      const _RowConfig('Hovered', _FieldState.hovered),
      const _RowConfig('Focused', _FieldState.focused),
      const _RowConfig('Error', _FieldState.error),
      const _RowConfig('Disabled', _FieldState.disabled),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Table(
        defaultColumnWidth: const IntrinsicColumnWidth(),
        defaultVerticalAlignment: TableCellVerticalAlignment.top,
        children: [
          // Header Row
          TableRow(
            children: [
              const SizedBox(width: 80),
              ...columns.map((col) => _buildColumnHeader(context, col)),
            ],
          ),
          // Spacer Row
          TableRow(
            children: [
              const SizedBox(height: 16),
              ...List.generate(
                  columns.length, (_) => const SizedBox(height: 16)),
            ],
          ),
          // Data Rows
          ...rows.map((row) {
            return TableRow(
              children: [
                _buildRowLabel(context, row.label),
                ...columns.map((col) => Padding(
                      padding: const EdgeInsets.only(right: 16.0, bottom: 24.0),
                      child: SizedBox(
                        width: 200,
                        child: _buildStaticField(
                          context,
                          col,
                          row.state,
                          visualSize,
                        ),
                      ),
                    )),
              ],
            );
          }),
        ],
      ),
    );
  }

  Widget _buildColumnHeader(BuildContext context, _ColConfig config) {
    String text = '';
    text += config.showClear ? 'Clear ON' : 'Clear OFF';
    text += '\n';
    text += config.showPrefix ? 'Prefix ON' : 'Prefix OFF';
    text += '\n';
    switch (config.content) {
      case _FieldContent.text:
        text += 'Input';
        break;
      case _FieldContent.labelInside:
        text += 'Empty (Inside)';
        break;
      case _FieldContent.hint:
        text += 'Hint';
        break;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: context.texts.labelSmall
              .copyWith(color: context.colors.sysOutline),
        ),
      ),
    );
  }

  Widget _buildRowLabel(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 16.0),
      child: Text(
        text,
        style: context.texts.labelMedium
            .copyWith(color: context.colors.sysOutline),
      ),
    );
  }

  Widget _buildStaticField(
    BuildContext context,
    _ColConfig config,
    _FieldState state,
    _VisualSize size,
  ) {
    final TextEditingController controller = TextEditingController(
      text: config.content == _FieldContent.text ? 'Input' : '',
    );

    // States logic
    final bool isFocused = state == _FieldState.focused;
    final bool isError = state == _FieldState.error;
    final bool isDisabled = state == _FieldState.disabled;

    final WidgetStatesController statesController = WidgetStatesController();
    if (state == _FieldState.hovered) {
      statesController.update(WidgetState.hovered, true);
    }

    final bool labelAlwaysOnTop = config.content != _FieldContent.labelInside;
    final String? hintText =
        config.content == _FieldContent.hint ? 'Placeholder' : null;

    final Widget? prefixIcon =
        config.showPrefix ? const Icon(Icons.search, size: 24) : null;

    // --- FOCUSED STATE OVERRIDE ---
    if (isFocused) {
      // For FOCUSED state, we use DSTextField.custom to force the border appearance
      // since IgnorePointer prevents real system focus.
      final EdgeInsetsGeometry padding = size == _VisualSize.small
          ? const EdgeInsets.symmetric(horizontal: 12, vertical: 8)
          : const EdgeInsets.symmetric(horizontal: 12, vertical: 16);

      final Color focusColor = context.colors.sysPrimary;
      final Color onSurfaceVariant = context.colors.sysOnSurfaceVariant;

      Widget? customSuffix;
      if (config.showClear) {
        customSuffix =
            Icon(Icons.cancel_outlined, size: 24, color: onSurfaceVariant);
      }

      final InputDecoration focusedDecoration = InputDecoration(
        filled: true,
        fillColor: context.colors.sysSurface,
        contentPadding: padding,
        isDense: size == _VisualSize.small,
        // Force Focused Border (Primary, 3px) into the 'enabledBorder' slot
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: focusColor, width: 3.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: focusColor, width: 3.0),
        ),
        // Force Label Color
        labelStyle: TextStyle(color: onSurfaceVariant),
        floatingLabelStyle:
            context.texts.bodySmall.copyWith(color: onSurfaceVariant),
        labelText: 'Label',
        hintText: hintText,
        prefixIcon: prefixIcon,
        prefixIconColor: onSurfaceVariant,
        suffixIcon: customSuffix,
        suffixIconColor: onSurfaceVariant,
        floatingLabelBehavior: labelAlwaysOnTop
            ? FloatingLabelBehavior.always
            : FloatingLabelBehavior.auto,
      );

      return IgnorePointer(
        child: DSTextField.custom(
          controller: controller,
          enabled: true,
          showCursor: true,
          cursorColor: focusColor,
          decoration: focusedDecoration,
        ),
      );
    }

    // --- STANDARD STATES (Enabled, Hovered, Error, Disabled) ---
    if (size == _VisualSize.small) {
      return IgnorePointer(
        child: DSTextField.small(
          controller: controller,
          enabled: !isDisabled,
          statesController: statesController,
          labelText: 'Label',
          labelAlwaysOnTop: labelAlwaysOnTop,
          hintText: hintText,
          errorText: isError ? 'Error' : null,
          prefixIcon: prefixIcon,
          showClearButtonAndErrorIcon: config.showClear,
        ),
      );
    } else {
      return IgnorePointer(
        child: DSTextField.standard(
          controller: controller,
          enabled: !isDisabled,
          statesController: statesController,
          labelText: 'Label',
          labelAlwaysOnTop: labelAlwaysOnTop,
          hintText: hintText,
          errorText: isError ? 'Error' : null,
          prefixIcon: prefixIcon,
          showClearButtonAndErrorIcon: config.showClear,
        ),
      );
    }
  }
}

enum _VisualSize { standard, small }

enum _FieldState { enabled, hovered, focused, error, disabled }

enum _FieldContent { text, labelInside, hint }

enum _SuffixOption { clearButton, customIcon, none }

class _ColConfig {
  final bool showClear;
  final bool showPrefix;
  final _FieldContent content;

  const _ColConfig({
    required this.showClear,
    required this.showPrefix,
    required this.content,
  });
}

class _RowConfig {
  final String label;
  final _FieldState state;

  const _RowConfig(this.label, this.state);
}
