import 'package:design_system/core/components/atoms/badge/ds_badge.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/menu/ds_menu.dart';
import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails_group.dart';
import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails_item.dart';
import 'package:design_system/core/components/organisms/navigation_rails/ds_navigation_rails_types.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

class DSNavigationRails extends StatefulWidget {
  const DSNavigationRails({
    super.key,
    required this.groups,
    this.leadingIcon,
    this.leadingComplement,
    this.brandingIcon,
    this.brandingIconExibition = BrandingIconExibition.always,
    this.subHeaderItem,
    this.menuChildren = const [],
    this.menuIcon,
    this.menuLabel,
    this.trailingIcon,
    this.trailingComplement,
    this.trailingIconAlignment = TrailingIconAlignment.bottom,
    this.selectedIndex = 0,
    this.extended = false,
    this.minWidth = 72,
    this.extendedWidth = 256,
    this.selectedShape = DSNavigationRailsSelectedShape.circle,
    this.labelAlwaysVisible = false,
    this.onDestinationSelected,
    this.onLeadingIconPressed,
    this.onHeaderSubHeaderPressed,
    this.onTrailingIconPressed,
    this.dividerBuilder,
    this.badgeType = DSNavigationRailsBadgeType.none,
  });

  final List<DSNavigationRailsGroup> groups;
  final Widget? leadingIcon;
  final Widget? leadingComplement;
  final Widget? brandingIcon;
  final BrandingIconExibition? brandingIconExibition;
  final DSNavigationRailsItem? subHeaderItem;
  final List<Widget> menuChildren;
  final Widget? menuIcon;
  final String? menuLabel;
  final Widget? trailingIcon;
  final Widget? trailingComplement;
  final TrailingIconAlignment trailingIconAlignment;
  final int selectedIndex;
  final bool extended;
  final double minWidth;
  final double extendedWidth;
  final ValueChanged<int>? onDestinationSelected;
  final ValueChanged<bool>? onLeadingIconPressed;
  final ValueChanged<bool>? onHeaderSubHeaderPressed;
  final ValueChanged<bool>? onTrailingIconPressed;
  final DSNavigationRailsSelectedShape? selectedShape;
  final WidgetBuilder? dividerBuilder;
  final bool labelAlwaysVisible;
  final DSNavigationRailsBadgeType? badgeType;

  @override
  State<DSNavigationRails> createState() => _DSNavigationRailState();
}

class _DSNavigationRailState extends State<DSNavigationRails>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final bool isExtended = widget.extended;
    final double railWidth =
        isExtended ? widget.extendedWidth : widget.minWidth;
    final dividerComponent = widget.dividerBuilder?.call(context) ??
        Divider(color: context.colors.sysOutlineVariant, height: 1);
    final divider = Padding(
      padding: EdgeInsets.only(
        top: 16,
        bottom: 8,
        left: 12,
        right: 12,
      ),
      child: dividerComponent,
    );

    // Usa try-catch para evitar erros durante a inicialização
    Color surface;
    Color primaryContainer;
    try {
      surface = context.colors.sysSurface;
      primaryContainer = context.colors.sysSecondaryContainer;
    } catch (e) {
      // Fallback caso o contexto não esteja pronto
      surface = Colors.white;
      primaryContainer = Colors.blue;
    }

    DSMenu<String> _buildAnchor(
      BuildContext context,
      VisualDensity density,
      bool showPrefix,
      bool showSuffix,
      bool openDialog,
      Alignment alignment,
      double actualWidth,
    ) {
      // Só mostra o texto quando há espaço suficiente (80% do extendedWidth)
      final double minWidthForMenuLabel =
          widget.minWidth + (widget.extendedWidth - widget.minWidth) * 0.8;
      final bool showMenuLabel =
          isExtended && actualWidth >= minWidthForMenuLabel;

      return DSMenu.anchor(
        visualDensity: density,
        menuAlignment: alignment,
        menuChildren: widget.menuChildren.isNotEmpty
            ? widget.menuChildren
            : List.generate(5, (index) {
                return DSMenuItemButton(
                  onPressed: () {
                    if (openDialog) {
                      showDialog(
                        context: context,
                        builder: (c) => AlertDialog(
                          title: Text('Item $index clicked'),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(c),
                                child: const Text('OK'))
                          ],
                        ),
                      );
                    }
                  },
                  leadingIcon: showPrefix ? const Icon(Icons.edit) : null,
                  trailingIcon:
                      showSuffix ? const Icon(Icons.arrow_right) : null,
                  child: Text('Menu Item $index'),
                );
              }),
        builder: (context, controller, child) {
          return Container(
            decoration: BoxDecoration(
              color: context.colors.sysSurfaceContainer,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: InkWell(
              onTap: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.menuIcon ?? const Icon(Icons.search),
                  if (showMenuLabel && widget.menuLabel != null) ...[
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        widget.menuLabel!,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                  const SizedBox(width: 8),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          );
        },
      );
    }

    Widget buildHeader(double actualWidth) {
      final spaceHeight = SizedBox(height: 12);
      if (widget.leadingIcon == null && widget.brandingIcon == null) {
        return const SizedBox.shrink();
      }
      final List<Widget> icons = [];
      if (widget.leadingIcon != null) {
        // Só mostra leadingComplement quando há espaço suficiente (80% do extendedWidth)
        final double minWidthForComplement =
            widget.minWidth + (widget.extendedWidth - widget.minWidth) * 0.8;
        final bool showComplement = widget.leadingComplement != null &&
            isExtended &&
            actualWidth >= minWidthForComplement;

        if (showComplement) {
          icons.add(Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: widget.leadingIcon!,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
                onPressed: () => widget.onLeadingIconPressed?.call(!isExtended),
              ),
              const SizedBox(width: 8),
              Flexible(
                child: widget.leadingComplement!,
              ),
            ],
          ));
        } else {
          icons.add(IconButton(
            icon: widget.leadingIcon!,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
            onPressed: () => widget.onLeadingIconPressed?.call(!isExtended),
          ));
        }
      }
      if (widget.brandingIcon != null &&
          (widget.brandingIconExibition == BrandingIconExibition.always ||
              (widget.brandingIconExibition ==
                      BrandingIconExibition.whenCollapsed &&
                  !isExtended))) {
        icons.add(spaceHeight);
        icons.add(IconButton(
          icon: widget.brandingIcon!,
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
          onPressed: () => widget.onHeaderSubHeaderPressed?.call(!isExtended),
        ));
      }
      final double minWidthForsubHeaderItem =
          widget.minWidth + (widget.extendedWidth - widget.minWidth) * 0.8;
      final bool showsubHeaderItemText =
          isExtended && actualWidth >= minWidthForsubHeaderItem;

      if (widget.subHeaderItem != null) {
        icons.add(spaceHeight);
        // Só mostra o texto quando há espaço suficiente (80% do extendedWidth)

        if (showsubHeaderItemText) {
          icons.add(InkWell(
            onTap: () => widget.onHeaderSubHeaderPressed?.call(!isExtended),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                widget.subHeaderItem!.icon,
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    widget.subHeaderItem!.label,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ));
        } else {
          icons.add(IconButton(
            icon: widget.subHeaderItem!.icon,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
            onPressed: () => widget.onHeaderSubHeaderPressed?.call(!isExtended),
          ));
        }
      }
      if (widget.menuChildren.isNotEmpty) {
        icons.add(spaceHeight);
        if (isExtended && showsubHeaderItemText) {
          icons.add(SizedBox(
              child: _buildAnchor(
                  context,
                  VisualDensity.adaptivePlatformDensity,
                  true,
                  true,
                  false,
                  Alignment.center,
                  actualWidth)));
        } else {
          icons.add(IconButton(
            icon: widget.menuIcon ?? const Icon(Icons.search),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
            onPressed: () => widget.onLeadingIconPressed?.call(!isExtended),
          ));
        }
      }
      icons.add(divider);
      return Padding(
        padding: EdgeInsets.only(
          left: isExtended ? 16 : 8,
          right: isExtended ? 16 : 8,
          top: 8,
        ),
        child: Align(
          alignment: isExtended ? Alignment.centerLeft : Alignment.center,
          child: Column(
            crossAxisAlignment: isExtended
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: icons,
          ),
        ),
      );
    }

    Widget buildTrailing(double actualWidth) {
      if (widget.trailingIcon == null) {
        return const SizedBox.shrink();
      }

      final icon = IconButton(
        icon: widget.trailingIcon!,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(minWidth: 24, minHeight: 24),
        onPressed: () => widget.onTrailingIconPressed?.call(!isExtended),
      );

      // Só mostra trailingComplement quando a animação estiver completa
      // (diferença menor que 5px do extendedWidth)
      final bool isAnimationComplete =
          isExtended && (widget.extendedWidth - actualWidth).abs() < 5;
      final bool showTrailingComplement =
          isAnimationComplete && widget.trailingComplement != null;

      final iconTrailling = showTrailingComplement
          ? Row(
              children: [
                Expanded(
                  child: ClipRect(
                    child: widget.trailingComplement!,
                  ),
                ),
                icon,
              ],
            )
          : icon;

      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isExtended ? 16 : 8,
          vertical: 12,
        ),
        child: Align(
          alignment: isExtended ? Alignment.centerLeft : Alignment.center,
          child: iconTrailling,
        ),
      );
    }

    Widget _decorateTile(Widget tile, bool selected) {
      // Quando deselecionando, muda instantaneamente (0ms) para evitar piscar em cinza
      // Quando selecionando, anima suavemente (200ms)
      return AnimatedContainer(
        duration: selected ? const Duration(milliseconds: 200) : Duration.zero,
        curve: selected ? Curves.easeInOut : Curves.linear,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
          color: selected ? primaryContainer : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: tile,
      );
    }

    Widget addBg(Widget icon, String? badgeValue) => switch (widget.badgeType) {
          DSNavigationRailsBadgeType.small =>
            badgeValue != null ? DSBadge(child: icon) : icon,
          DSNavigationRailsBadgeType.large => badgeValue != null
              ? DSBadge(
                  label: DSText(
                    badgeValue,
                    autoSize: false,
                  ),
                  child: icon,
                )
              : icon,
          _ => icon,
        };

    List<Widget> buildGroups(double actualWidth) {
      final tiles = <Widget>[];
      int globalIndex = 0;

      for (final group in widget.groups) {
        // group title
        if (group.title != null && isExtended) {
          tiles.add(Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Text(
              group.title!,
              style: context.texts.labelMedium
                  .copyWith(color: context.colors.sysOnSurfaceVariant),
            ),
          ));
        }

        for (final item in group.items) {
          final int itemIndex = globalIndex++;
          final bool selected = itemIndex == widget.selectedIndex;

          final Widget leadingIcon = () {
            if (selected && isExtended && item.selectedIcon != null) {
              return addBg(item.selectedIcon!, item.badgeValue);
            }
            // Quando collapsed e selecionado, aplica indicador apenas no ícone
            if (selected && !isExtended) {
              return _indicatorDot(
                  child: addBg(item.icon, item.badgeValue),
                  color: primaryContainer);
            }
            return addBg(item.icon, item.badgeValue);
          }();

          // Calcula se deve mostrar o texto baseado na largura real atual
          final double minWidthForText =
              widget.minWidth + (widget.extendedWidth - widget.minWidth) * 0.7;
          final bool showText = actualWidth >= minWidthForText;

          // O valor só aparece quando a animação está quase completa (95%)
          // e quando a largura está muito próxima do extendedWidth para evitar overflow
          final double minWidthForValue =
              widget.minWidth + (widget.extendedWidth - widget.minWidth) * 0.95;
          // Verifica se está realmente próximo do tamanho final (diferença menor que 10px)
          final bool showValue = actualWidth >= minWidthForValue &&
              (widget.extendedWidth - actualWidth) < 10;

          final Widget tile = isExtended
              ? InkWell(
                  key: ValueKey('tile_$itemIndex'),
                  onTap: () => widget.onDestinationSelected?.call(itemIndex),
                  borderRadius: BorderRadius.circular(16),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: leadingIcon,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ClipRect(
                          child: AnimatedOpacity(
                            opacity: showText ? 1.0 : 0.0,
                            duration: const Duration(milliseconds: 150),
                            curve: Curves.easeOut,
                            child: Text(
                              item.label,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                      if (item.value != null && showValue) ...[
                        const SizedBox(width: 12),
                        ClipRect(
                          child: Text(
                            item.value!,
                            style: context.texts.labelMedium.copyWith(
                              color: context.colors.sysOnSurfaceVariant,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ],
                  ),
                )
              : InkWell(
                  key: ValueKey('tile_$itemIndex'),
                  onTap: () => widget.onDestinationSelected?.call(itemIndex),
                  child: SizedBox(
                    width: railWidth,
                    height: widget.labelAlwaysVisible ? 64 : 48,
                    child: widget.labelAlwaysVisible
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              leadingIcon,
                              const SizedBox(height: 4),
                              SizedBox(
                                width: 50,
                                child: Text(
                                  item.label,
                                  style: context.texts.labelSmall,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          )
                        : Center(child: leadingIcon),
                  ),
                );

          // Quando extended = true, o indicador cobre ícone e label
          // Quando extended = false, o indicador cobre apenas o ícone (já aplicado no leadingIcon)
          final Widget wrappedTile =
              isExtended ? _decorateTile(tile, selected) : tile;

          tiles.add(wrappedTile);
        }

        // group divider
        if (group != widget.groups.last) {
          tiles.add(divider);
        }
      }
      return tiles;
    }

    return RepaintBoundary(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 320),
        curve: Curves.easeInOutCubicEmphasized,
        width: railWidth,
        decoration: BoxDecoration(
          color: surface,
          boxShadow: kElevationToShadow[1],
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final bool bounded = constraints.hasBoundedHeight;
            // Usa a largura real do container durante a animação
            final double actualWidth = constraints.maxWidth.isFinite
                ? constraints.maxWidth
                : railWidth;
            final listView = ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: !bounded,
              physics: bounded
                  ? const AlwaysScrollableScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              children: buildGroups(actualWidth),
            );

            if (bounded) {
              if (widget.trailingIconAlignment == TrailingIconAlignment.after) {
                return Column(
                  crossAxisAlignment: isExtended
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    buildHeader(actualWidth),
                    Expanded(
                      child: CustomScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        slivers: [
                          SliverPadding(
                            padding: EdgeInsets.zero,
                            sliver: SliverList(
                              delegate: SliverChildListDelegate(
                                buildGroups(actualWidth),
                              ),
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: buildTrailing(actualWidth),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Column(
                  crossAxisAlignment: isExtended
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    buildHeader(actualWidth),
                    Expanded(child: listView),
                    divider,
                    buildTrailing(actualWidth),
                  ],
                );
              }
            }

            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: isExtended
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                buildHeader(actualWidth),
                listView,
                buildTrailing(actualWidth),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _indicatorDot({required Widget child, required Color color}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: color,
            shape: widget.selectedShape == DSNavigationRailsSelectedShape.circle
                ? BoxShape.circle
                : BoxShape.rectangle,
            borderRadius:
                widget.selectedShape == DSNavigationRailsSelectedShape.circle
                    ? null
                    : BorderRadius.circular(16),
          ),
        ),
        child,
      ],
    );
  }
}
