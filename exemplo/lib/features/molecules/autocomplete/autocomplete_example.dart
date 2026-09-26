import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/molecules/autocomplete/ds_autocomplete.dart';
import 'package:design_system/core/components/molecules/select/ds_select.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class AutocompleteExample extends StatefulWidget {
  const AutocompleteExample({super.key});

  @override
  State<AutocompleteExample> createState() => _AutocompleteExampleState();
}

class _AutocompleteExampleState extends State<AutocompleteExample> {
  String? _singleValue;
  List<String> _multiValues = [];

  @override
  Widget build(BuildContext context) {
    // Knobs
    final isMulti =
        context.knobs.boolean(label: 'Multi Select', initial: false);
    final enabled = context.knobs.boolean(label: 'Enabled', initial: true);
    final showError =
        context.knobs.boolean(label: 'Show Error', initial: false);
    final showEntryIcons =
        context.knobs.boolean(label: 'Show Entry Icons', initial: false);
    final showFieldIcon =
        context.knobs.boolean(label: 'Show Field Leading Icon', initial: false);
    final labelText =
        context.knobs.text(label: 'Label', initial: 'Search Option');
    final hintText =
        context.knobs.text(label: 'Hint', initial: 'Type to filter...');

    // Dynamic Entries (Generated 1 to 10)
    final List<DSSelectEntry<String>> entries = List.generate(10, (index) {
      final int itemNumber = index + 1;
      return DSSelectEntry(
        value: 'option$itemNumber',
        label: 'Option $itemNumber',
        leadingIcon:
            showEntryIcons ? DSIcon.small(icon: Symbols.diamond) : null,
      );
    });

    // Static Entries for Visual Verification
    final List<DSSelectEntry<String>> staticEntries = [
      const DSSelectEntry(value: '1', label: 'Item 1'),
      const DSSelectEntry(value: '2', label: 'Item 2'),
      const DSSelectEntry(value: '3', label: 'Item 3'),
    ];

    return DSScaffold(
      appBar: AppBar(title: const Text('DSAutocomplete')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.headlineMedium),
            const SizedBox(height: 24),
            isMulti
                ? DSAutocomplete<String>.multi(
                    entries: entries,
                    values: _multiValues,
                    onChangedMulti: enabled
                        ? (vals) => setState(() => _multiValues = vals)
                        : null,
                    label: labelText,
                    hintText: hintText,
                    errorText: showError ? 'Selection required' : null,
                    enabled: enabled,
                    fieldLeadingIcon:
                        showFieldIcon ? DSIcon.small(icon: Icons.search) : null,
                  )
                : DSAutocomplete<String>.single(
                    entries: entries,
                    value: _singleValue,
                    onChanged: enabled
                        ? (val) => setState(() => _singleValue = val)
                        : null,
                    label: labelText,
                    hintText: hintText,
                    errorText: showError ? 'Invalid selection' : null,
                    enabled: enabled,
                    fieldLeadingIcon:
                        showFieldIcon ? DSIcon.small(icon: Icons.search) : null,
                  ),
            const SizedBox(height: 64),
            const Divider(thickness: 2),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.headlineMedium),
            const SizedBox(height: 24),
            Text('1. Single Autocomplete', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            AbsorbPointer(
              child: const DSAutocomplete<String>.single(
                entries: [],
                value: null,
                onChanged: null,
                label: 'Label',
                hintText: 'Type to search',
                enabled: true,
              ),
            ),
            const SizedBox(height: 16),
            AbsorbPointer(
              child: const DSAutocomplete<String>.single(
                entries: [DSSelectEntry(value: '1', label: 'Option 1')],
                value: '1',
                onChanged: null,
                label: 'Selected Value',
                enabled: true,
              ),
            ),
            const SizedBox(height: 32),
            Text('2. With Field Icon', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            AbsorbPointer(
              child: DSAutocomplete<String>.single(
                entries: [],
                value: null,
                onChanged: null,
                label: 'Search',
                fieldLeadingIcon: DSIcon.small(icon: Icons.search),
              ),
            ),
            const SizedBox(height: 32),
            Text('3. Multi Autocomplete', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            AbsorbPointer(
              child: DSAutocomplete<String>.multi(
                entries: staticEntries,
                values: const ['1', '2'],
                onChangedMulti: (v) {},
                label: 'Ingredients',
                hintText: 'Add more...',
              ),
            ),
            const SizedBox(height: 16),
            AbsorbPointer(
              child: DSAutocomplete<String>.multi(
                entries: staticEntries,
                values: const [],
                onChangedMulti: (v) {},
                label: 'Empty Multi',
                hintText: 'Type to filter...',
              ),
            ),
            const SizedBox(height: 32),
            Text('4. States (Error & Disabled)',
                style: context.texts.titleMedium),
            const SizedBox(height: 16),
            AbsorbPointer(
              child: const DSAutocomplete<String>.single(
                entries: [],
                value: null,
                onChanged: null,
                label: 'Error State',
                errorText: 'Not found',
              ),
            ),
            const SizedBox(height: 16),
            AbsorbPointer(
              child: const DSAutocomplete<String>.single(
                entries: [],
                value: null,
                onChanged: null,
                label: 'Disabled',
                enabled: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
