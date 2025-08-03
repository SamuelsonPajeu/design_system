import 'package:design_system/core/components/molecules/listtile/ds_listtile.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Item Variations'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 400),
        children: [
          const SectionTitle('Basic List Item'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItem,
            title: 'List item',
            onTap: () {},
          ),
          const SectionTitle('List Item with Subtitle'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItemSubTitle,
            title: 'List item',
            subTitle: 'Supporting line text lorem ipsum',
            onTap: () {},
          ),
          const SectionTitle('List Item with Leading Icon'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItemLeadingIcon,
            title: 'List item',
            onTap: () {},
          ),
          const SectionTitle('List Item with Trailing Icon'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItemTrailingIcon,
            title: 'List item',
            onTap: () {},
          ),
          const SectionTitle('List Item with Switch'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItemSwitch,
            title: 'List item',
            subTitle: 'Supporting line text lorem ipsum',
            valueSwitch: false,
            onChangedSwitch: (bool value) {},
            onTap: () {},
          ),
          const SectionTitle('List Item with Avatar'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItemAvatarImage,
            title: 'List item',
            leadingIcon: Symbols.abc,
            subTitle: 'Supporting line text lorem ipsum',
            onTap: () {},
          ),
          const SectionTitle('List Item with Image Avatar'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItemAvatarImage,
            title: 'List item',
            leadingBackgroundImage:
                const NetworkImage('https://via.placeholder.com/150'),
            subTitle: 'Supporting line text lorem ipsum',
            onTap: () {},
          ),
          const SectionTitle('List Item with Icons on Both Sides'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItemIconsBothSides,
            title: 'List item',
            leadingIcon: Symbols.folder,
            trailingIcon: Symbols.more_vert,
            onTap: () {},
          ),
          const SectionTitle('Complex List Item'),
          DSListTile(
            typeOfListTile: TypeOfListTile.listItemComplex,
            leadingBackgroundImage:
                const NetworkImage('https://via.placeholder.com/150'),
            title: 'List item',
            subTitle: 'Supporting line text lorem ipsum',
            valueSwitch: false,
            onChangedSwitch: (bool value) {},
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
