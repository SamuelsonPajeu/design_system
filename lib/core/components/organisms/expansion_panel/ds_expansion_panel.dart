import 'package:design_system/core/components/templates/animated_collapse/ds_animated_collapse.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ItemDSExpansionPanel {
  String header;
  bool isExpanded;
  bool isChecked;
  List<Widget>? children;

  ItemDSExpansionPanel({
    required this.header,
    this.isExpanded = false,
    this.isChecked = false,
    this.children,
  });
}

class DSExpansionPanel extends StatefulWidget {
  final bool showHeader;
  final String titlePanel;
  final bool showCheckBox;
  bool? allSelect;
  final Widget? trailing;
  final List<ItemDSExpansionPanel> items;
  final Widget child;

  DSExpansionPanel({
    super.key,
    required this.showHeader,
    this.titlePanel = '',
    required this.showCheckBox,
    this.allSelect = false,
    required this.trailing,
    required this.items,
    required this.child,
  });

  @override
  _DSExpansionPanelState createState() => _DSExpansionPanelState();
}

class _DSExpansionPanelState extends State<DSExpansionPanel> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          if (widget.showHeader) ...[
            ListTile(
              leading: widget.showCheckBox
                  ? Checkbox(
                      value: widget.allSelect,
                      onChanged: (value) {
                        setState(() {
                          for (var element in widget.items) {
                            if (element.isChecked != true) {
                              element.isChecked = !element.isChecked;
                              widget.allSelect = true;
                            } else {
                              element.isChecked = false;
                              widget.allSelect = false;
                            }
                          }
                        });
                      },
                    )
                  : null,
              title: Text(
                widget.titlePanel,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: widget.trailing,
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
            ),
          ],
          DSAnimatedCollapse(
              collapsed: !isExpanded,
              duration: const Duration(seconds: 1),
              child: widget.child),
          ListView.builder(
            itemCount: widget.items.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return _buildCheckboxTile(index);
            },
          )
        ],
      ),
    );
  }

  Widget _buildCheckboxTile(int index) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        onExpansionChanged: (value) {
          setState(() {
            widget.items[index].isExpanded = value;
          });
        },
        leading: widget.showCheckBox
            ? Checkbox(
                value: widget.items[index].isChecked,
                onChanged: (value) {
                  setState(() {
                    widget.items[index].isChecked = value ?? false;
                    widget.allSelect =
                        widget.items.every((item) => item.isChecked);
                  });
                },
              )
            : null,
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(widget.items[index].isExpanded
                ? Symbols.keyboard_arrow_up
                : Symbols.keyboard_arrow_down)
          ],
        ),
        title: Text(widget.items[index].header),
        expandedAlignment: Alignment.centerLeft,
        children: widget.items[index].children ?? <Widget>[],
      ),
    );
  }
}
