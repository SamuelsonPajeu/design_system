import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/info_card/ds_info_card.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class InfoCardExample extends StatelessWidget {
  const InfoCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    // --- Knobs ---
    final title = context.knobs.text(
      label: 'Title',
      initial: 'Long Title',
    );

    final subtitle = context.knobs.text(
      label: 'Subtitle',
      initial: 'Subtitle description goes here',
    );

    final showIcon = context.knobs.boolean(
      label: 'Show Icon',
      initial: true,
    );

    final size = context.knobs.options(
      label: 'Size',
      initial: DSInfoCardSize.small,
      options: [
        const Option(label: 'Small', value: DSInfoCardSize.small),
        const Option(label: 'Large', value: DSInfoCardSize.large),
      ],
    );

    final orientation = context.knobs.options(
      label: 'Orientation',
      initial: DSInfoCardOrientation.vertical,
      options: [
        const Option(label: 'Vertical', value: DSInfoCardOrientation.vertical),
        const Option(
            label: 'Horizontal', value: DSInfoCardOrientation.horizontal),
      ],
    );

    return DSScaffold(
      appBar: AppBar(
        title: const Text('DSInfoCard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          // 1. Interactive Demo
          _buildSectionHeader(context, 'Interactive Demo'),
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: DSInfoCard(
                title: title,
                subtitle: subtitle.isNotEmpty ? subtitle : null,
                icon: showIcon ? Icons.cut : null,
                size: size,
                orientation: orientation,
              ),
            ),
          ),

          const SizedBox(height: 32),

          // 2. Static Examples
          _buildSectionHeader(context, 'Vertical Examples'),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              const DSInfoCard(
                title: 'Small Vertical',
                subtitle: 'With Icon',
                icon: Icons.bolt,
                size: DSInfoCardSize.small,
                orientation: DSInfoCardOrientation.vertical,
              ),
              const DSInfoCard(
                title: 'Large Vertical',
                subtitle: 'With Icon',
                icon: Icons.star,
                size: DSInfoCardSize.large,
                orientation: DSInfoCardOrientation.vertical,
              ),
              const DSInfoCard(
                title: 'No Icon',
                subtitle: 'Vertical Small',
                size: DSInfoCardSize.small,
                orientation: DSInfoCardOrientation.vertical,
              ),
            ],
          ),

          const SizedBox(height: 32),

          _buildSectionHeader(context, 'Horizontal Examples'),
          Column(
            children: [
              const DSInfoCard(
                title: 'Small Horizontal Card',
                subtitle: 'Displays info in a row',
                icon: Icons.info_outline,
                size: DSInfoCardSize.small,
                orientation: DSInfoCardOrientation.horizontal,
              ),
              const SizedBox(height: 16),
              const DSInfoCard(
                title: 'Large Horizontal Card',
                subtitle: 'More padding and larger text presence',
                icon: Icons.check_circle_outline,
                size: DSInfoCardSize.large,
                orientation: DSInfoCardOrientation.horizontal,
              ),
              const SizedBox(height: 16),
              const DSInfoCard(
                title: 'Horizontal without Icon',
                subtitle: 'Just text content here',
                size: DSInfoCardSize.large,
                orientation: DSInfoCardOrientation.horizontal,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: DSText(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
