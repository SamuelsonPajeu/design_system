import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';

class DSAppBar extends AppBar {
  DSAppBar({
    super.key,
    String? icon,
    required String text,
    required BuildContext context,
    super.centerTitle = false,
    IconData? iconData,
    bool? showNextIcon,
    Function? nextAction,
    Icon? nextIcon,
    Function? secondaryAction,
    Icon? secondaryIcon,
    Function? nextActionBack,
    Color? background,
    bool? showIconClose = false,
  }) : super(
            scrolledUnderElevation: 0,
            iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            backgroundColor: background ?? Theme.of(context).colors.sysSurface,
            title: Row(
              children: [
                Text(text,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer)),
              ],
            ),
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                if (nextActionBack != null) {
                  nextActionBack();
                } else {
                  Navigator.pop(context);
                }
              },
              child: Icon(
                showIconClose! ? Icons.close : Icons.arrow_back,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            actions: (showNextIcon == true)
                ? [
                    (secondaryIcon != null)
                        ? IconButton(
                            icon: secondaryIcon,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                            onPressed: () {
                              if (secondaryAction != null) secondaryAction();
                            },
                          )
                        : const SizedBox(width: 1),
                    IconButton(
                      icon: nextIcon ?? const Icon(Icons.add_circle_outline),
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      onPressed: () {
                        if (nextAction != null) nextAction();
                      },
                    ),
                  ]
                : [],
            systemOverlayStyle:
                Theme.of(context).appBarTheme.systemOverlayStyle);
}
