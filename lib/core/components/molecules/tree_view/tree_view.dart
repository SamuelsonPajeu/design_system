import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Data model that represents a single node in the tree.
///
/// Each node can contain a title, an optional subtitle and a list of children.
class DSTreeViewNode {
  const DSTreeViewNode({
    required this.title,
    this.subtitle,
    this.children = const <DSTreeViewNode>[],
  });

  /// Main text of the node.
  final String title;

  /// Optional supporting text displayed below the title.
  final String? subtitle;

  /// Child nodes of this node.
  final List<DSTreeViewNode> children;

  bool get hasChildren => children.isNotEmpty;
}

/// Controls the vertical density (height) of each tree node.
///
/// The values map directly to a fixed minimum height:
/// - [zero]  -> 56px
/// - [minus2] -> 48px
/// - [minus4] -> 40px
enum DSTreeViewDensity {
  zero,
  minus2,
  minus4,
}

DSListTileDensity _mapToListTileDensity(DSTreeViewDensity density) {
  switch (density) {
    case DSTreeViewDensity.zero:
      return DSListTileDensity.standard;
    case DSTreeViewDensity.minus2:
      return DSListTileDensity.compact;
    case DSTreeViewDensity.minus4:
      return DSListTileDensity.ultraCompact;
  }
}

double _minHeightForDensity(DSTreeViewDensity density) {
  switch (density) {
    case DSTreeViewDensity.zero:
      return 56.0;
    case DSTreeViewDensity.minus2:
      return 48.0;
    case DSTreeViewDensity.minus4:
      return 40.0;
  }
}

/// A Design System tree view widget.
///
/// The widget renders a hierarchical list of [DSTreeViewNode] items and
/// supports:
/// - Smooth expand / collapse animations;
/// - Optional leading icons for each node;
/// - Optional dividers between nodes;
/// - A modern appearance aligned with the Design System.
class DSTreeView extends StatelessWidget {
  const DSTreeView({
    super.key,
    required this.nodes,
    this.showIcons = true,
    this.showDividers = false,
    this.iconBuilder,
    this.indent = 24.0,
    this.density = DSTreeViewDensity.zero,
    this.folderIcon = Icons.folder,
    this.fileIcon = Icons.insert_drive_file,
  });

  /// Root nodes rendered by the tree view.
  final List<DSTreeViewNode> nodes;

  /// Whether an icon area should be shown next to each node.
  ///
  /// When `true`, a leading icon area is reserved and the [iconBuilder] is
  /// used (or a default folder icon when it is null).
  final bool showIcons;

  /// Whether to show dividers between the rows (nodes).
  final bool showDividers;

  /// Builder used to create the icon widget for each node.
  ///
  /// If null and [showIcons] is `true`, a default folder icon is used.
  final Widget Function(
      BuildContext context, DSTreeViewNode node, bool isExpanded)? iconBuilder;

  /// Horizontal indentation applied for each nested level.
  final double indent;

  /// Vertical density applied to each node.
  ///
  /// Controls the minimum height of each row (56, 48 or 40 pixels).
  final DSTreeViewDensity density;

  /// Icon used for nodes that have children (folders).
  final IconData folderIcon;

  /// Icon used for leaf nodes (files).
  final IconData fileIcon;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: nodes.length,
      itemBuilder: (context, index) {
        final node = nodes[index];
        return _DSTreeViewNodeWidget(
          node: node,
          level: 0,
          showIcons: showIcons,
          showDividers: showDividers,
          iconBuilder: iconBuilder,
          indent: indent,
          density: density,
          folderIcon: folderIcon,
          fileIcon: fileIcon,
        );
      },
    );
  }
}

/// Internal widget responsible for rendering a single node (and its children).
class _DSTreeViewNodeWidget extends StatefulWidget {
  const _DSTreeViewNodeWidget({
    required this.node,
    required this.level,
    required this.showIcons,
    required this.showDividers,
    required this.indent,
    required this.density,
    required this.folderIcon,
    required this.fileIcon,
    this.iconBuilder,
  });

  final DSTreeViewNode node;
  final int level;
  final bool showIcons;
  final bool showDividers;
  final double indent;
  final DSTreeViewDensity density;
  final IconData folderIcon;
  final IconData fileIcon;
  final Widget Function(
      BuildContext context, DSTreeViewNode node, bool isExpanded)? iconBuilder;

  @override
  State<_DSTreeViewNodeWidget> createState() => _DSTreeViewNodeWidgetState();
}

class _DSTreeViewNodeWidgetState extends State<_DSTreeViewNodeWidget> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    if (!widget.node.hasChildren) return;
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final hasChildren = widget.node.hasChildren;

    // Chevron that rotates when the node is expanded.
    final Widget chevron = hasChildren
        ? AnimatedRotation(
            turns: _isExpanded ? 0.25 : 0.0, // 90 degrees when expanded
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: Icon(
              Icons.chevron_right,
              size: 18,
              color: colors.sysOnSurfaceVariant,
            ),
          )
        : const SizedBox(width: 18);

    // Optional custom icon area.
    Widget? leadingIcon;
    if (widget.showIcons) {
      leadingIcon =
          widget.iconBuilder?.call(context, widget.node, _isExpanded) ??
              DSIcon.small(
                icon: hasChildren ? widget.folderIcon : widget.fileIcon,
                color: colors.sysOnSurfaceVariant,
              );
    }

    final leadingRowChildren = <Widget>[
      chevron,
      if (widget.showIcons) const SizedBox(width: 8),
      if (leadingIcon != null) leadingIcon,
    ];

    final leading = Row(
      mainAxisSize: MainAxisSize.min,
      children: leadingRowChildren,
    );

    final titleText =
        DSText(widget.node.title, style: context.texts.bodyMedium);
    final subtitleText = widget.node.subtitle != null
        ? DSText(widget.node.subtitle!, style: context.texts.bodySmall)
        : null;

    final tile = Padding(
      padding: EdgeInsets.only(left: widget.level * widget.indent),
      child: DSListTile(
        title: titleText,
        density: _mapToListTileDensity(widget.density),
        minTileHeight: _minHeightForDensity(widget.density),
        supportingText: subtitleText,
        leading: leading,
        showDivider: widget.showDividers,
        onTap: hasChildren ? _toggleExpanded : null,
      ),
    );

    final childrenWidgets = widget.node.children
        .map(
          (child) => _DSTreeViewNodeWidget(
            node: child,
            level: widget.level + 1,
            showIcons: widget.showIcons,
            showDividers: widget.showDividers,
            iconBuilder: widget.iconBuilder,
            indent: widget.indent,
            density: widget.density,
            folderIcon: widget.folderIcon,
            fileIcon: widget.fileIcon,
          ),
        )
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        tile,
        AnimatedSize(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          alignment: Alignment.topCenter,
          child: ClipRect(
            child: _isExpanded
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: childrenWidgets,
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
