import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';

class DSTimelineModel {
  final DSCard card;
  final IconData icon;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final bool isFirst;
  final GlobalKey cardKey;

  DSTimelineModel({
    required this.card,
    required this.icon,
    this.iconColor,
    this.iconBackgroundColor,
    this.isFirst = false,
    GlobalKey? cardKey,
  }) : cardKey = cardKey ?? GlobalKey();
}

class DSTimeline extends StatefulWidget {
  final List<DSTimelineModel> itemsDSTimeline;

  const DSTimeline({super.key, required this.itemsDSTimeline});

  @override
  State<DSTimeline> createState() => _DSTimelineState();
}

class _DSTimelineState extends State<DSTimeline> {
  final Map<int, double> cardHeights = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _calculateHeights());
  }

  void _calculateHeights() {
    for (var i = 0; i < widget.itemsDSTimeline.length; i++) {
      final context = widget.itemsDSTimeline[i].cardKey.currentContext;
      if (context != null) {
        final height = context.size?.height;
        if (height != null) {
          setState(() {
            cardHeights[i] = height - 60;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.itemsDSTimeline.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final item = widget.itemsDSTimeline[index];
        final lineHeight = cardHeights[index] ?? 40;

        return Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: item.iconBackgroundColor ??
                        Theme.of(context).colors.sysPrimary,
                    child: Icon(
                      item.icon,
                      color: item.iconColor ??
                          Theme.of(context).colors.sysOnPrimary,
                      size: 20,
                    ),
                  ),
                  if (!item.isFirst)
                    Container(
                      width: 1,
                      height: lineHeight,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      color: Theme.of(context).colors.sysPrimary,
                    ),
                ],
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Container(
                  key: item.cardKey,
                  child: item.card,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
