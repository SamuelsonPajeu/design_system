import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:design_system/core/components/molecules/menu/ds_menu.dart';

import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class CustomChips extends StatefulWidget {
  const CustomChips({super.key});

  @override
  State<CustomChips> createState() => _CustomChipsState();
}

class _CustomChipsState extends State<CustomChips> {
  List<bool> inputSelected = List.generate(6, (index) => false);
  List<bool> filterSelected = List.generate(8, (index) => false);

  void toggleInputSelected(int index) {
    setState(() {
      inputSelected[index] = !inputSelected[index];
    });
  }

  void toggleFilterSelected(int index) {
    setState(() {
      filterSelected[index] = !filterSelected[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    final avatar = DSAvatar.small
        .icon(
          icon: Icons.person_outline,
          background: context.colors.sysOnPrimaryContainer,
          widgetColor: context.colors.sysSecondaryContainer,
        )
        .copyWith(borderRadius: 9);

    final avatarImage = DSAvatar.small
        .image(
          child: Image.asset('assets/exemple_media.png'),
          background: context.colors.black,
        )
        .copyWith(borderRadius: 24);

    final labelText = DSText(
      'Label',
      autoSize: false,
      style: context.texts.labelLarge.copyWith(
        color: context.colors.sysOnSurfaceVariant,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    );

    final leadingIcon = DSIcon.custom(
      icon: Icons.car_crash_outlined,
      color: context.colors.sysOnPrimaryContainer,
      size: 16,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Chips Variations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Interactive Input Chip'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DSChip.input(
                    label: labelText,
                    selected: inputSelected[0],
                    useBackground: true,
                    onPressed: () => toggleInputSelected(0),
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: inputSelected[1],
                    useBackground: true,
                    onPressed: () => toggleInputSelected(1),
                    onDeleted: () {},
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: inputSelected[2],
                    useBackground: true,
                    onPressed: () => toggleInputSelected(2),
                    leadingIcon: leadingIcon,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: inputSelected[3],
                    useBackground: true,
                    onPressed: () => toggleInputSelected(3),
                    onDeleted: () {},
                    leadingIcon: leadingIcon,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: inputSelected[4],
                    useBackground: true,
                    onPressed: () => toggleInputSelected(4),
                    avatar: avatar,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: inputSelected[5],
                    useBackground: true,
                    onPressed: () => toggleInputSelected(5),
                    onDeleted: () {},
                    avatar: avatar,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Input Chip Visual State'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DSChip.input(
                    label: labelText,
                    selected: false,
                    useBackground: true,
                    onPressed: () {},
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: false,
                    useBackground: true,
                    onPressed: () {},
                    onDeleted: () {},
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: false,
                    useBackground: true,
                    onPressed: () {},
                    leadingIcon: leadingIcon,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: false,
                    useBackground: true,
                    onPressed: () {},
                    onDeleted: () {},
                    leadingIcon: leadingIcon,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: false,
                    useBackground: true,
                    onPressed: () {},
                    avatar: avatar,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: false,
                    useBackground: true,
                    onPressed: () {},
                    onDeleted: () {},
                    avatar: avatar,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DSChip.input(
                    label: labelText,
                    selected: true,
                    useBackground: true,
                    onPressed: () {},
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: true,
                    useBackground: true,
                    onPressed: () {},
                    onDeleted: () {},
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: true,
                    useBackground: true,
                    onPressed: () {},
                    leadingIcon: leadingIcon,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: true,
                    useBackground: true,
                    onPressed: () {},
                    onDeleted: () {},
                    leadingIcon: leadingIcon,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: true,
                    useBackground: true,
                    onPressed: () {},
                    avatar: avatar,
                  ),
                  DSChip.input(
                    label: labelText,
                    selected: true,
                    useBackground: true,
                    onPressed: () {},
                    onDeleted: () {},
                    avatar: avatar,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Assistive Chip'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DSChip.assistive(
                    label: labelText,
                  ),
                  DSChip.assistive(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                  ),
                  DSChip.assistive(
                    label: labelText,
                    leadingIcon: leadingIcon,
                  ),
                  DSChip.assistive(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                    leadingIcon: leadingIcon,
                  ),
                  DSChip.assistive(
                    label: labelText,
                    avatar: avatarImage,
                  ),
                  DSChip.assistive(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                    avatar: avatarImage,
                  ),
                  DSChip.assistive(
                    label: labelText,
                    avatar: avatar,
                  ),
                  DSChip.assistive(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                    avatar: avatar,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Filter Chip Interactive'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DSChip.filter(
                    label: labelText,
                    selected: filterSelected[0],
                    onSelected: (value) => toggleFilterSelected(0),
                  ),
                  DSChip.filter(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                    selected: filterSelected[1],
                    onSelected: (value) => toggleFilterSelected(1),
                  ),
                  DSChip.filter(
                    label: labelText,
                    onSelected: (value) => toggleFilterSelected(2),
                    selected: filterSelected[2],
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  DSChip.filter(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) => toggleFilterSelected(3),
                    selected: filterSelected[3],
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  DSChip.filter(
                    label: labelText,
                    leadingIcon: leadingIcon,
                    selected: filterSelected[4],
                    onSelected: (value) => toggleFilterSelected(4),
                  ),
                  DSChip.filter(
                    label: labelText,
                    leadingIcon: leadingIcon,
                    chipStyle: ChipStyle.elevated,
                    selected: filterSelected[5],
                    onSelected: (value) => toggleFilterSelected(5),
                  ),
                  DSChip.filter(
                    label: labelText,
                    onSelected: (value) => toggleFilterSelected(6),
                    selected: filterSelected[6],
                    leadingIcon: leadingIcon,
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Filter Chip Visual State'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DSChip.filter(
                    label: labelText,
                    onSelected: (value) {},
                  ),
                  DSChip.filter(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) {},
                  ),
                  DSChip.filter(
                    label: labelText,
                    onSelected: (value) {},
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  DSChip.filter(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) {},
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  DSChip.filter(
                    label: labelText,
                    leadingIcon: leadingIcon,
                    onSelected: (value) {},
                  ),
                  DSChip.filter(
                    label: labelText,
                    leadingIcon: leadingIcon,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) {},
                  ),
                  DSChip.filter(
                    label: labelText,
                    onSelected: (value) {},
                    leadingIcon: leadingIcon,
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  DSChip.filter(
                    label: labelText,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) {},
                    leadingIcon: leadingIcon,
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DSChip.filter(
                    label: labelText,
                    selected: true,
                    onSelected: (value) {},
                  ),
                  DSChip.filter(
                    label: labelText,
                    selected: true,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) {},
                  ),
                  DSChip.filter(
                    label: labelText,
                    onSelected: (value) {},
                    selected: true,
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  DSChip.filter(
                    label: labelText,
                    selected: true,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) {},
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  DSChip.filter(
                    label: labelText,
                    selected: true,
                    leadingIcon: leadingIcon,
                    onSelected: (value) {},
                  ),
                  DSChip.filter(
                    label: labelText,
                    selected: true,
                    leadingIcon: leadingIcon,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) {},
                  ),
                  DSChip.filter(
                    label: labelText,
                    selected: true,
                    onSelected: (value) {},
                    leadingIcon: leadingIcon,
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                  DSChip.filter(
                    label: labelText,
                    selected: true,
                    chipStyle: ChipStyle.elevated,
                    onSelected: (value) {},
                    leadingIcon: leadingIcon,
                    menu: DSMenu.anchor(
                      menuChildren: List.generate(10, (index) {
                        return DSMenuItemButton(
                          onPressed: () {},
                          leadingIcon: const Icon(Icons.circle, size: 8),
                          child: Text('Item ${index + 1}'),
                        );
                      }),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text('Semantic Chip'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DSChip.semantics(
                    label: labelText,
                    status: SemanticStatus.error,
                    showIcon: true,
                  ),
                  SizedBox(width: 32),
                  DSChip.semantics(
                    label: labelText,
                    status: SemanticStatus.warning,
                    showIcon: true,
                  ),
                  SizedBox(width: 32),
                  DSChip.semantics(
                    label: labelText,
                    status: SemanticStatus.success,
                    showIcon: true,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DSChip.semantics(
                    label: labelText,
                    status: SemanticStatus.error,
                    showIcon: false,
                  ),
                  SizedBox(width: 32),
                  DSChip.semantics(
                    label: labelText,
                    status: SemanticStatus.warning,
                    showIcon: false,
                  ),
                  SizedBox(width: 32),
                  DSChip.semantics(
                    label: labelText,
                    status: SemanticStatus.success,
                    showIcon: false,
                  ),
                ],
              ),
              SizedBox(height: 64),
            ],
          ),
        ),
      ),
    );
  }
}
