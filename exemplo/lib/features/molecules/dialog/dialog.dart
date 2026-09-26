import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/dialog/ds_dialog.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({super.key});

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  void _showBasicDialog() {
    showDSDialog(
      context: context,
      showDivider: false,
      minWidth: 312,
      minHeight: 350,
      title: 'Diálogo Básico',
      alignment: Alignment.center,
      description:
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
      icon: Icon(Symbols.content_cut),
      action1: DSButton.text(
        buttonText: 'Action 1',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
      action2: DSButton.text(
        buttonText: 'Action 2',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void _showMutiBasicDialog() {
    showDSDialogWithPages(
      context: context,
      pages: [
        DSDialogPage(
          icon: Icon(Symbols.content_cut),
          title: 'Página Inicial',
          description:
              'Conteúdo para primeira página. Lorem ipsum dolor sit amet, consectetur.',
        ),
        DSDialogPage(
          icon: Image.asset('assets/exemple_media.png'),
          iconHeight: 180,
          iconWidth: 180,
          iconBackgroundColor: Colors.transparent,
          title: 'Segunda Página',
          description:
              'Conteúdo segunda página. A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
        ),
        DSDialogPage(
          icon: Image.asset(
            'assets/exemple_media.png',
            height: 180,
          ),
          iconWidth: 120,
          iconHeight: 200,
          iconBackgroundColor: Colors.transparent,
          title: 'Terceira Página',
          description:
              'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
        ),
      ],
      action1: DSButton.text(
        buttonText: 'Action 1',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
      action2: DSButton.text(
        buttonText: 'Action 2',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void _showBasicDialogWithWarning() {
    showDSDialog(
      context: context,
      showDivider: false,
      minWidth: 312,
      minHeight: 350,
      title: 'Basic dialog title',
      alignment: Alignment.center,
      description:
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
      icon: Icon(Symbols.warning),
      iconBackgroundColor: Colors.yellow.withOpacity(0.2),
      iconColor: Colors.orange,
      action1: DSButton(
        buttonText: 'Action 1',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
      action2: DSButton.text(
        buttonText: 'Action 2',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void _showListDialogSingle() {
    showDSDialog(
      context: context,
      title: 'List dialog title',
      description:
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
      icon: Icon(Symbols.content_cut),
      list: [
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: context.colors.sysOnPrimaryContainer,
            child: Text(
              'A',
              style: TextStyle(
                color: context.colors.sysPrimaryContainer,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          overline: const Text('Overline'),
          supportingText: const Text(
            'Supporting line text lorem ipsum dolor sit amet, consectetur.',
          ),
          trailing: Checkbox(value: true, onChanged: (param) {}),
          showDivider: false,
        ),
      ],
      action1: DSButton.text(
        buttonText: 'Action 1',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
      action2: DSButton.text(
        buttonText: 'Action 2',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void _showListDialogSingleWithWarning() {
    showDSDialog(
      context: context,
      title: 'List dialog title',
      description:
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
      icon: Icon(Symbols.warning),
      iconBackgroundColor: Colors.yellow.withOpacity(0.2),
      iconColor: Colors.orange,
      list: [
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: Text(
              'A',
              style: TextStyle(
                color: context.colors.sysOnSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          overline: const Text('Overline'),
          supportingText: const Text(
            'Supporting line text lorem ipsum dolor sit amet, consectetur.',
          ),
          trailing: Checkbox(value: true, onChanged: null),
          showDivider: false,
        ),
      ],
      action1: DSButton(
        buttonText: 'Action 1',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
      action2: DSButton.text(
        buttonText: 'Action 2',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void _showListDialogMultiple() {
    showDSDialog(
      context: context,
      title: 'List Dialog title',
      description:
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
      icon: Icon(Symbols.content_cut),
      list: [
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: Text(
              'A',
              style: TextStyle(
                color: context.colors.sysOnSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          overline: const Text('Overline'),
          supportingText: const Text(
            'Supporting line text lorem ipsum dolor sit amet, consectetur.',
          ),
          trailing: Checkbox(value: true, onChanged: null),
          showDivider: false,
        ),
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: Icon(
              Symbols.check,
              color: context.colors.sysOnSurface,
              size: 20,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: context.colors.sysSurfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '100+',
                  style: context.texts.labelSmall.copyWith(
                    color: context.colors.sysOnSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Checkbox(value: true, onChanged: null),
            ],
          ),
          showDivider: false,
        ),
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: Icon(
              Symbols.check,
              color: context.colors.sysOnSurface,
              size: 20,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: context.colors.sysSurfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '100+',
                  style: context.texts.labelSmall.copyWith(
                    color: context.colors.sysOnSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Checkbox(value: true, onChanged: null),
            ],
          ),
          showDivider: false,
        ),
      ],
      action1: DSButton.text(
        buttonText: 'Action 1',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
      action2: DSButton.text(
        buttonText: 'Action 2',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
    );
  }

  void _showListDialogMultipleWithWarning() {
    showDSDialog(
      context: context,
      title: 'List Dialog title',
      description:
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
      icon: Icon(Symbols.warning),
      iconBackgroundColor: Colors.yellow.withOpacity(0.2),
      iconColor: Colors.orange,
      minHeight: 800,
      action1: DSButton(
        buttonText: 'Action 1',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
      action2: DSButton.text(
        buttonText: 'Action 2',
        onTap: () async {
          Navigator.of(context).pop();
        },
      ),
      list: [
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.blue.withOpacity(0.2),
            child: Text(
              'A',
              style: TextStyle(
                color: context.colors.sysOnSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          overline: const Text('Overline'),
          supportingText: const Text(
            'Supporting line text lorem ipsum dolor sit amet, consectetur.',
          ),
          trailing: Checkbox(value: true, onChanged: null),
          showDivider: false,
        ),
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.yellow.withOpacity(0.2),
            child: Icon(
              Symbols.check,
              color: context.colors.sysOnSurface,
              size: 20,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: context.colors.sysSurfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '100+',
                  style: context.texts.labelSmall.copyWith(
                    color: context.colors.sysOnSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Checkbox(value: true, onChanged: null),
            ],
          ),
          showDivider: false,
        ),
        DSListTile(
          title: const DSText('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.yellow.withOpacity(0.2),
            child: Icon(
              Symbols.check,
              color: context.colors.sysOnSurface,
              size: 20,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: context.colors.sysSurfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '100+',
                  style: context.texts.labelSmall.copyWith(
                    color: context.colors.sysOnSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Checkbox(value: true, onChanged: null),
            ],
          ),
          showDivider: false,
        ),
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.yellow.withOpacity(0.2),
            child: Icon(
              Symbols.check,
              color: context.colors.sysOnSurface,
              size: 20,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: context.colors.sysSurfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '100+',
                  style: context.texts.labelSmall.copyWith(
                    color: context.colors.sysOnSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Checkbox(value: true, onChanged: null),
            ],
          ),
          showDivider: false,
        ),
        DSListTile(
          title: const Text('List item'),
          density: DSListTileDensity.compact,
          leading: CircleAvatar(
            backgroundColor: Colors.yellow.withOpacity(0.2),
            child: Icon(
              Symbols.check,
              color: context.colors.sysOnSurface,
              size: 20,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: context.colors.sysSurfaceContainer,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '100+',
                  style: context.texts.labelSmall.copyWith(
                    color: context.colors.sysOnSurfaceVariant,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Checkbox(value: true, onChanged: null),
            ],
          ),
          showDivider: false,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DSDialog Examples'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Basic Dialogs',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _showBasicDialog,
              child: const Text('Basic Dialog'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _showBasicDialogWithWarning,
              child: const Text('Basic Dialog Warning'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _showMutiBasicDialog,
              child: const Text('List Dialog Single Multiple Pages'),
            ),
            const SizedBox(height: 24),
            const Text(
              'List Dialogs - Single Item',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _showListDialogSingle,
              child: const Text('List Dialog Single'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _showListDialogSingleWithWarning,
              child: const Text('List Dialog Single'),
            ),
            const SizedBox(height: 24),
            const Text(
              'List Dialogs - Multiple Items',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _showListDialogMultiple,
              child: const Text('List Dialog Multiple'),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _showListDialogMultipleWithWarning,
              child: const Text('List Dialog Multiple'),
            ),
          ],
        ),
      ),
    );
  }
}
