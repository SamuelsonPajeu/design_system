import 'package:design_system/core/components/molecules/select/ds_select.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class SelectExample extends StatefulWidget {
  const SelectExample({super.key});

  @override
  State<SelectExample> createState() => _SelectExampleState();
}

class _SelectExampleState extends State<SelectExample> {
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
    final showIcons =
        context.knobs.boolean(label: 'Show Entry Icons', initial: false);
    final labelText =
        context.knobs.text(label: 'Label', initial: 'Select Option');
    final hintText = context.knobs.text(label: 'Hint', initial: 'Choose...');

    // Dynamic Entries
    final List<DSSelectEntry<String>> entries = [
      DSSelectEntry(
        value: 'opt1',
        label: 'Option 1',
        leadingIcon: showIcons ? const Icon(Icons.home) : null,
      ),
      DSSelectEntry(
        value: 'opt2',
        label: 'Option 2 (Disabled)',
        enabled: false,
        leadingIcon: showIcons ? const Icon(Icons.block) : null,
      ),
      DSSelectEntry(
        value: 'opt3',
        label: 'Option 3',
        leadingIcon: showIcons ? const Icon(Icons.star) : null,
      ),
      DSSelectEntry(
        value: 'opt4',
        label: 'Option 4',
        leadingIcon: showIcons ? const Icon(Icons.settings) : null,
      ),
      DSSelectEntry(
        value: 'opt5',
        label: 'Option 5',
        leadingIcon: showIcons ? const Icon(Icons.person) : null,
      ),
    ];

    // Static Entries for verification
    final List<DSSelectEntry<String>> staticEntries = [
      const DSSelectEntry(value: '1', label: 'Item 1'),
      const DSSelectEntry(value: '2', label: 'Item 2'),
    ];

    final List<DSSelectEntry<String>> staticEntriesWithIcons = [
      const DSSelectEntry(
        value: 'cut',
        label: 'Cut',
        leadingIcon: Icon(Icons.content_cut),
      ),
      const DSSelectEntry(
        value: 'copy',
        label: 'Copy',
        leadingIcon: Icon(Icons.content_copy),
      ),
    ];

    return DSScaffold(
      appBar: AppBar(title: const Text('DSSelect')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Interactive Demo', style: context.texts.headlineMedium),
            const SizedBox(height: 16),

            isMulti
                ? DSSelect<String>.multi(
                    entries: entries,
                    values: _multiValues,
                    onChangedMulti: enabled
                        ? (vals) => setState(() => _multiValues = vals)
                        : null,
                    label: labelText,
                    hintText: hintText,
                    errorText: showError ? 'Selection required' : null,
                    enabled: enabled,
                  )
                : DSSelect<String>.single(
                    entries: entries,
                    value: _singleValue,
                    onChanged: enabled
                        ? (val) => setState(() => _singleValue = val)
                        : null,
                    label: labelText,
                    hintText: hintText,
                    errorText: showError ? 'Invalid selection' : null,
                    enabled: enabled,
                  ),

            const SizedBox(height: 64),
            const Divider(thickness: 2),
            const SizedBox(height: 32),

            Text('Visual Verification', style: context.texts.headlineMedium),
            const SizedBox(height: 24),

            // 1. Single Select
            Text('Single Select', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            const DSSelect<String>.single(
              entries: [],
              value: null,
              onChanged: null,
              label: 'Label',
              hintText: 'Select',
              enabled: true,
            ),
            const SizedBox(height: 16),
            const DSSelect<String>.single(
              entries: [DSSelectEntry(value: '1', label: 'Option 1')],
              value: '1',
              onChanged: null,
              label: 'Selected',
              enabled: true,
            ),

            const SizedBox(height: 32),

            // 2. Single Select with Icons in Menu
            Text('Single Select (With Icons in Menu)',
                style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSSelect<String>.single(
              entries: staticEntriesWithIcons,
              value: null,
              onChanged: (val) {},
              label: 'Actions',
            ),
            const SizedBox(height: 16),
            DSSelect<String>.single(
              entries: staticEntriesWithIcons,
              value: 'copy',
              onChanged: (val) {},
              label: 'Selected Action',
            ),

            const SizedBox(height: 32),

            // 3. Multi Select
            Text('Multi Select (Chips)', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSSelect<String>.multi(
              entries: staticEntries,
              values: const ['1', '2'],
              onChangedMulti: (v) {},
              label: 'Ingredients',
              hintText: 'Select items',
            ),
            const SizedBox(height: 16),
            DSSelect<String>.multi(
              entries: staticEntries,
              values: const [],
              onChangedMulti: (v) {},
              label: 'Empty Multi',
              hintText: 'Select items',
            ),

            const SizedBox(height: 32),

            // 4. States
            Text('States (Error & Disabled)', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            const DSSelect<String>.single(
              entries: [],
              value: null,
              onChanged: null,
              label: 'Error State',
              errorText: 'Required field',
            ),
            const SizedBox(height: 16),
            const DSSelect<String>.single(
              entries: [],
              value: null,
              onChanged: null,
              label: 'Disabled',
              enabled: false,
            ),
          ],
        ),
      ),
    );
  }
}
