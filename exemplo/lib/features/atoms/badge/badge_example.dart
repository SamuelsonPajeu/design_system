import 'package:design_system/core/components/atoms/badge/ds_badge.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class BadgeExample extends StatelessWidget {
  const BadgeExample({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = context.knobs.sliderInt(
      label: 'Notifications',
      initial: 3,
      min: 0,
      max: 1000,
    );

    final customText = context.knobs.text(
      label: 'Custom Text',
      initial: ':D',
    );

    return DSScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DSBadge(),
                const SizedBox(height: 16),
                DSBadge.count(
                  context,
                  count: notifications.toInt(),
                ),
                const SizedBox(height: 16),
                DSBadge(
                  label: DSText(
                    customText,
                    autoSize: false,
                  ),
                ),
                const SizedBox(height: 16),
                IconButton(
                  icon: DSBadge(child: const Icon(Icons.notifications)),
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                IconButton(
                  icon: DSBadge.count(context,
                      count: notifications.toInt(),
                      child: const Icon(Icons.notifications)),
                  onPressed: () {},
                ),
                const SizedBox(height: 16),
                IconButton(
                  icon: DSBadge(
                    label: DSText(
                      customText,
                      autoSize: false,
                    ),
                    child: const Icon(Icons.notifications),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
