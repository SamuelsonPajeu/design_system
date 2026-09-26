import 'package:design_system/core/components/molecules/tree_view/tree_view.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class TreeViewExamplePage extends StatelessWidget {
  const TreeViewExamplePage({super.key});

  List<DSTreeViewNode> _buildSampleNodes() {
    return const [
      DSTreeViewNode(
        title: 'Item text',
        children: [
          DSTreeViewNode(
            title: 'Pacientes',
            children: [
              DSTreeViewNode(title: 'Profissionais'),
              DSTreeViewNode(title: 'Requisitos'),
            ],
          ),
        ],
      ),
      DSTreeViewNode(
        title: 'Item text',
        subtitle: 'Subtitle text',
        children: [
          DSTreeViewNode(title: 'Pacientes'),
          DSTreeViewNode(title: 'Profissionais'),
          DSTreeViewNode(title: 'Requisitos'),
        ],
      ),
      DSTreeViewNode(title: 'Item text'),
      DSTreeViewNode(title: 'Item text'),
      DSTreeViewNode(title: 'Item text'),
    ];
  }

  List<DSTreeViewNode> _buildSampleNodesWithoutRootChildren() {
    return const [
      DSTreeViewNode(
        title: 'Prontuários',
        children: [
          DSTreeViewNode(title: 'Pacientes'),
          DSTreeViewNode(
            title: 'Profissionais',
            children: [
              DSTreeViewNode(title: 'Requisitos'),
            ],
          ),
        ],
      ),
      DSTreeViewNode(title: 'Unidades'),
      DSTreeViewNode(title: 'Material informativo'),
      DSTreeViewNode(title: 'Histórico'),
      DSTreeViewNode(title: 'Normas'),
      DSTreeViewNode(title: 'Outros'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final density = context.knobs.options<DSTreeViewDensity?>(
      label: 'Density',
      initial: null,
      options: const [
        Option(label: 'None', value: null),
        Option(label: 'Zero', value: DSTreeViewDensity.zero),
        Option(label: 'Medium', value: DSTreeViewDensity.minus2),
        Option(label: 'Small', value: DSTreeViewDensity.minus4),
      ],
    );

    final nodesWithIcons = _buildSampleNodes();
    final nodesWithIconsAndDividers = _buildSampleNodes();
    final nodesWithoutIcons = _buildSampleNodesWithoutRootChildren();

    final heightView = 600.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DSTreeView Variations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Icon=True; Divider=False'),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: heightView,
                          child: DSTreeView(
                            nodes: nodesWithIcons,
                            showIcons: true,
                            showDividers: false,
                            density: density ?? DSTreeViewDensity.zero,
                            folderIcon: Icons.folder_outlined,
                            fileIcon: Icons.insert_drive_file_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 32),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Icon=True; Divider=True'),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: heightView,
                          child: DSTreeView(
                            nodes: nodesWithIconsAndDividers,
                            showIcons: true,
                            showDividers: true,
                            density: density ?? DSTreeViewDensity.zero,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 32),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Icon=False; Divider=False'),
                        const SizedBox(height: 24),
                        SizedBox(
                          height: heightView,
                          child: DSTreeView(
                            nodes: nodesWithoutIcons,
                            showIcons: false,
                            showDividers: false,
                            density: density ?? DSTreeViewDensity.zero,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
