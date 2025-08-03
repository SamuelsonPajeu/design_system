import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_symbols_icons/symbols.dart';

enum TypeOfListTile {
  listItem,
  listItemSubTitle,
  listItemLeadingIcon,
  listItemTrailingIcon,
  listItemSwitch,
  listItemAvatar,
  listItemAvatarImage,
  listItemIconsBothSides,
  listItemComplex,
  listItemClassic
}

class DSListTile extends StatefulWidget {
  const DSListTile(
      {super.key,
      required this.typeOfListTile,
      required this.title,
      this.subTitle = '',
      this.onTap,
      this.onChangedSwitch,
      this.valueSwitch,
      this.leadingIcon = Symbols.abc,
      this.trailingIcon = Symbols.chevron_right,
      this.leadingBackgroundImage,
      this.id,
      this.param1,
      this.param2,
      this.param3,
      this.param4,
      this.tab,
      this.filter1,
      this.filter2,
      this.filter3,
      this.index,
      this.status,
      this.color,
      this.icon,
      this.headline1,
      this.headline2,
      this.line1,
      this.line2,
      this.line3,
      this.line4,
      this.line5,
      this.chipText,
      this.chipColor,
      this.files,
      this.type,
      this.json,
      this.showNavigationIcon,
      this.iconAsset,
      this.unitColor});

  final TypeOfListTile typeOfListTile;
  final String title;
  final String? subTitle;
  final GestureTapCallback? onTap;
  final ValueChanged<bool>? onChangedSwitch;
  final bool? valueSwitch;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final ImageProvider? leadingBackgroundImage;

  // Classic list tile parameters
  final String? id;
  final String? param1;
  final String? param2;
  final String? param3;
  final String? param4;
  final String? tab;
  final String? filter1;
  final String? filter2;
  final String? filter3;
  final String? index;
  final String? status;
  final Color? color;
  final String? icon;
  final String? headline1;
  final String? headline2;
  final String? line1;
  final String? line2;
  final String? line3;
  final String? line4;
  final String? line5;
  final String? chipText;
  final Color? chipColor;
  final String? files;
  final String? type;
  final Map<String, dynamic>? json;
  final bool? showNavigationIcon;
  final SvgPicture? iconAsset;
  final Color? unitColor;

  @override
  State<DSListTile> createState() => _DSListTileState();
}

class _DSListTileState extends State<DSListTile> {
  @override
  Widget build(BuildContext context) {
    return getListTile(widget.typeOfListTile);
  }

  Widget getListTile(TypeOfListTile typeOfListTile) {
    switch (typeOfListTile) {
      case TypeOfListTile.listItemClassic:
        return GestureDetector(
          onTap: widget.onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.zero,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    bottom: 1,
                    top: 1,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          color: widget.unitColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(7),
                            bottomLeft: Radius.circular(7),
                            // topRight: Radius.circular(7),
                            // bottomRight: Radius.circular(7),
                          ),
                        ),
                        width: 5.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (widget.iconAsset != null) widget.iconAsset!,
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                (widget.title ?? 'N/A'),
                                style: Theme.of(context).textTheme.labelMedium!,
                                //.copyWith(color: item.mainColor),
                              ),
                              if (widget.headline1 != null &&
                                  widget.headline1!.isNotEmpty)
                                Text(
                                  widget.headline1!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface,
                                          fontWeight: FontWeight.w400),
                                  maxLines: 2,
                                ),
                              if (widget.headline2 != null &&
                                  widget.headline2!.isNotEmpty)
                                Text(
                                  widget.headline2!,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface),
                                  maxLines: 2,
                                ),
                              // if (item.line1.isValid ||
                              //     item.line2.isValid ||
                              //     item.line3.isValid ||
                              //     item.line4.isValid ||
                              //     item.line5.isValid) ...[
                              //   const SizedBox(height: iconSize),
                              // ],
                              if (widget.line1 != null &&
                                  widget.line1!.isNotEmpty)
                                classicLineBuilder(widget.line1!, context),
                              if (widget.line2 != null &&
                                  widget.line2!.isNotEmpty)
                                classicLineBuilder(widget.line2!, context),
                              if (widget.line3 != null &&
                                  widget.line3!.isNotEmpty)
                                classicLineBuilder(widget.line3!, context),
                              if (widget.line4 != null &&
                                  widget.line4!.isNotEmpty)
                                classicLineBuilder(widget.line4!, context),
                              if (widget.line5 != null &&
                                  widget.line5!.isNotEmpty)
                                classicLineBuilder(widget.line5!, context),
                              if (widget.chipText != null &&
                                  widget.chipText!.isNotEmpty) ...[
                                const SizedBox(height: 24),
                                Container(
                                  width: widget.chipText!.length * 7,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: widget.chipColor!),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Center(
                                      child: Text(
                                        widget.chipText!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ]
                            ],
                          ),
                        ),
                        if (widget.showNavigationIcon != null &&
                            widget.showNavigationIcon == true)
                          const Column(
                            children: [Icon(Icons.arrow_forward_ios)],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      case TypeOfListTile.listItem:
        return ListTile(
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          onTap: widget.onTap,
        );
      case TypeOfListTile.listItemSubTitle:
        return ListTile(
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
          onTap: widget.onTap,
        );
      case TypeOfListTile.listItemLeadingIcon:
        return ListTile(
          leading: DSIcon(
            icon: widget.leadingIcon,
            size: 14,
          ),
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
          onTap: widget.onTap,
        );
      case TypeOfListTile.listItemTrailingIcon:
        return ListTile(
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
          trailing: DSIcon(
            icon: widget.trailingIcon,
            size: 14,
          ),
          onTap: widget.onTap,
        );
      case TypeOfListTile.listItemSwitch:
        return ListTile(
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
          trailing: Switch(
            value: widget.valueSwitch ?? false,
            onChanged: widget.onChangedSwitch,
          ),
        );
      case TypeOfListTile.listItemAvatar:
        return ListTile(
          leading: CircleAvatar(
            child: DSIcon(
              icon: widget.leadingIcon,
              size: 14,
            ),
          ),
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
          onTap: widget.onTap,
        );
      case TypeOfListTile.listItemAvatarImage:
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: widget.leadingBackgroundImage,
          ),
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
          onTap: widget.onTap,
        );
      case TypeOfListTile.listItemIconsBothSides:
        return ListTile(
          leading: DSIcon(
            icon: widget.leadingIcon,
            size: 14,
          ),
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
          trailing: IconButton(
            icon: DSIcon(
              icon: widget.trailingIcon,
              size: 14,
            ),
            onPressed: widget.onTap,
          ),
          onTap: widget.onTap,
        );
      case TypeOfListTile.listItemComplex:
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: widget.leadingBackgroundImage,
          ),
          title: Text(
            widget.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14),
          ),
          subtitle: Text(
            widget.subTitle ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
          trailing: Switch(
            value: widget.valueSwitch ?? false,
            onChanged: widget.onChangedSwitch,
          ),
          onTap: widget.onTap,
        );
    }
  }

  Widget classicLineBuilder(String lineText, BuildContext context) {
    return Text(
      lineText,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: Theme.of(context).colorScheme.onSurface,
          fontWeight: FontWeight.w300),
      maxLines: 2,
    );
  }
}
