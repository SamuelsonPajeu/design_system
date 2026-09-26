import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:design_system/core/components/atoms/progress_indicator/ds_progress_indicator.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/atoms/checkbox/ds_checkbox.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/card/ds_card.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/components/molecules/chip/ds_chip.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ExampleCard extends StatelessWidget {
  const ExampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                DSText(
                  'Examples',
                  style: context.texts.titleMedium,
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: _tableCard(context, DSCardStyle.outlined),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: _tableCard(context, DSCardStyle.elevated),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: _tableCard(context, DSCardStyle.enabled),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: DSCard(
                        style: DSCardStyle.outlined,
                        title: 'Nutrição',
                        subtitle: '25/10/2025',
                        avatar: DSAvatar.medium.icon(icon: Symbols.restaurant),
                        popupMenuButton: PopupMenuButton(
                          icon: const Icon(Icons.more_vert),
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 'action1',
                              child: Text('Action 1'),
                            ),
                            const PopupMenuItem(
                              value: 'action2',
                              child: Text('Action 2'),
                            ),
                          ],
                        ),
                        actionButtons: [
                          DSButton.outlined(
                            onTap: () async {},
                            buttonText: 'Salvar',
                            enabled: true,
                          ),
                          DSButton.filled(
                            onTap: () async {},
                            buttonText: 'Ler mais',
                            enabled: true,
                          ),
                        ],
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset('assets/exemple_media.png'),
                          ),
                          SizedBox(height: 12),
                          DSText(
                            'Alimentação infantil',
                            style: context.texts.titleSmall.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          DSText(
                            'Pediatria',
                            style: context.texts.bodyMedium,
                          ),
                          SizedBox(height: 8),
                          DSText(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit lorem ipsum dolor sit amet...',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: DSCard(
                        style: DSCardStyle.enabled,
                        title: 'Insulina',
                        avatar: DSAvatar.large.icon(icon: Symbols.vaccines),
                        children: [
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                dense: true,
                                visualDensity: VisualDensity.compact,
                                minVerticalPadding: 0,
                                trailing: DSText(
                                  '100+',
                                  style: context.texts.bodyMedium.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                title: DSText('List item'),
                              );
                            },
                            shrinkWrap: true,
                            itemCount: 5,
                            physics: const NeverScrollableScrollPhysics(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: DSCard(
                        style: DSCardStyle.outlined,
                        title: 'Unidade Centro',
                        subtitle: '15/10/2025',
                        avatar:
                            DSAvatar.medium.icon(icon: Symbols.local_hospital),
                        actionButtons: [
                          DSButton.filled(
                            onTap: () async {},
                            buttonText: 'Ver no mapa',
                            buttonIcon: Symbols.assistant_direction,
                            enabled: true,
                          ),
                        ],
                        children: [
                          SizedBox(height: 8),
                          DSText(
                            'Endereço:',
                            style: context.texts.bodyMedium.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          DSText(
                            'Rua Exemplo, 123 - Centro',
                            style: context.texts.bodyMedium,
                          ),
                          SizedBox(height: 12),
                          DSText(
                            'Horário para retirada:',
                            style: context.texts.bodyMedium.copyWith(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          DSText(
                            'Seg a Sex, das 07h as 19h\nSáb, das 07 as 19h\nDom, das 07h as 19h',
                            style: context.texts.bodyMedium,
                          ),
                          SizedBox(height: 16),
                          DSListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: DSAvatar.medium.icon(
                              icon: Symbols.task_alt,
                              background: context.colors.sysSuccessContainer,
                              widgetColor: context.colors.sysOnSuccessContainer,
                            ),
                            title: const Text('Omeprazol 40mg'),
                            trailing: Text(
                              'Qtd. 156',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            showDivider: true,
                            density: DSListTileDensity.standard,
                          ),
                          DSListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: DSAvatar.medium.icon(
                              icon: Symbols.warning,
                              background: context.colors.sysWarnContainer,
                              widgetColor: context.colors.sysOnWarnContainer,
                            ),
                            title: const Text('Acitretina 10mg'),
                            trailing: Text(
                              'Qtd. 15',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            showDivider: true,
                            density: DSListTileDensity.standard,
                          ),
                          DSListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: DSAvatar.medium.icon(
                              icon: Symbols.error,
                              background: context.colors.sysErrorContainer,
                              widgetColor: context.colors.sysOnErrorContainer,
                            ),
                            title: const Text('Atenolol 25mg'),
                            trailing: Text(
                              'Qtd. 29',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            density: DSListTileDensity.standard,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: DSCard(
                        style: DSCardStyle.tinted,
                        title: 'Accu-Check',
                        subtitle: 'Conectado',
                        avatar: DSAvatar.medium.icon(icon: Symbols.fact_check),
                        children: [
                          SizedBox(height: 12),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            visualDensity: VisualDensity.compact,
                            minVerticalPadding: 0,
                            title: DSText('Última sincronização'),
                            trailing: DSText(
                              'Agora',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            visualDensity: VisualDensity.compact,
                            minVerticalPadding: 0,
                            title: DSText('Medições disponíveis'),
                            trailing: DSText(
                              '12 novas',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: DSCard(
                        title: 'One Touch',
                        subtitle: 'Vario Reflect',
                        status: DSChip.semantics(
                          status: SemanticStatus.success,
                          showIcon: true,
                          label: DSText('Conectado'),
                          trailingIcon: DSIcon.extraSmall(icon: Symbols.wifi),
                        ),
                        actionButtons: [
                          DSButton.text(
                            onTap: () async {},
                            buttonText: 'Configurar',
                            enabled: true,
                          ),
                          DSButton.outlined(
                            onTap: () async {},
                            buttonText: 'Desconectar',
                            enabled: true,
                          ),
                        ],
                        children: [
                          SizedBox(height: 12),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            visualDensity: VisualDensity.compact,
                            minVerticalPadding: 0,
                            title: DSText('Última sincronização'),
                            trailing: DSText(
                              'Há 3 dias',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            visualDensity: VisualDensity.compact,
                            minVerticalPadding: 0,
                            title: DSText('Bateria'),
                            trailing: DSText(
                              '-',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: DSCard(
                        title: 'Encaminhamento',
                        subtitle: '07/01/2025',
                        status: DSChip.semantics(
                          status: SemanticStatus.error,
                          showIcon: false,
                          label: DSText('Revisar'),
                        ),
                        actionButtons: [
                          DSButton.text(
                            onTap: () async {},
                            buttonText: 'Ver detalhes',
                            buttonIcon: Symbols.arrow_forward,
                            enabled: true,
                            invert: true,
                          ),
                        ],
                        children: [
                          SizedBox(height: 12),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            visualDensity: VisualDensity.compact,
                            minVerticalPadding: 0,
                            title: DSText('Nome do paciente'),
                            trailing: DSText(
                              'Paciente X',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                            visualDensity: VisualDensity.compact,
                            minVerticalPadding: 0,
                            title: DSText('Análise'),
                            trailing: DSText(
                              '10/01/2025',
                              style: context.texts.bodyMedium.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Divider(color: context.colors.sysOutlineVariant),
                DSText(
                  'Visual Matrix',
                  style: context.texts.titleMedium,
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _visualCard(context, DSCardStyle.outlined),
                    const SizedBox(width: 16),
                    _visualCard(context, DSCardStyle.elevated),
                    const SizedBox(width: 16),
                    _visualCard(context, DSCardStyle.enabled),
                    const SizedBox(width: 16),
                    _visualCard(context, DSCardStyle.tinted),
                    const SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _numericalCard(context, DSCardStyle.outlined),
                    const SizedBox(width: 16),
                    _numericalCard(context, DSCardStyle.elevated),
                    const SizedBox(width: 16),
                    _numericalCard(context, DSCardStyle.enabled),
                    const SizedBox(width: 16),
                    _numericalCard(context, DSCardStyle.tinted),
                    const SizedBox(width: 16),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _mediaCard(context, DSCardStyle.outlined),
                    const SizedBox(width: 16),
                    _mediaCard(context, DSCardStyle.elevated),
                    const SizedBox(width: 16),
                    _mediaCard(context, DSCardStyle.enabled),
                    const SizedBox(width: 16),
                    _mediaCard(context, DSCardStyle.tinted),
                    const SizedBox(width: 16),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buttonCard(context, DSCardStyle.outlined),
                    const SizedBox(width: 16),
                    _buttonCard(context, DSCardStyle.elevated),
                    const SizedBox(width: 16),
                    _buttonCard(context, DSCardStyle.enabled),
                    const SizedBox(width: 16),
                    _buttonCard(context, DSCardStyle.tinted),
                    const SizedBox(width: 16),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _subheader(BuildContext context) {
    return Row(
      children: [
        DSIcon.extraSmall(icon: Symbols.cut),
        DSText(
          'Text',
          style: context.texts.bodySmall,
        ),
        SizedBox(
          width: 6,
        )
      ],
    );
  }

  Color _statusBackground(BuildContext context, DSCardStyle? style) {
    if (style == DSCardStyle.elevated) {
      return context.colors.sysSurfaceContainerHigh;
    }
    if (style == DSCardStyle.tinted) {
      return context.colors.sysSurfaceTinted;
    }
    return context.colors.sysSurface;
  }

  Widget _visualCard(BuildContext context, DSCardStyle style) {
    return Expanded(
      child: DSCard(
        style: style,
        title: 'Title',
        subtitle: 'Subtitle',
        status: DSChip.assistive(
          label: DSText('Label'),
          background: _statusBackground(context, style),
          leadingIcon: DSIcon.extraSmall(icon: Symbols.content_cut),
        ),
        avatar: DSAvatar.large
            .icon(
              icon: Symbols.content_cut,
            )
            .copyWith(avatarSize: DSSize.small),
        actionButtons: [
          DSButton.outlined(
            onTap: () async {},
            buttonText: 'Label',
            enabled: true,
          ),
          DSButton.filled(
            onTap: () async {},
            buttonText: 'Label',
            enabled: true,
          ),
        ],
        children: [
          DSText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit lorem ipsum dolor sit amet...',
          ),
          SizedBox(height: 8),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                visualDensity: VisualDensity.compact,
                minVerticalPadding: 0,
                trailing: DSText(
                  '100+',
                  style: context.texts.bodyMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: DSText('List Item'),
              );
            },
            shrinkWrap: true,
            itemCount: 5,
            physics: const NeverScrollableScrollPhysics(),
          ),
          SizedBox(height: 8),
          DSProgressIndicator.linear(
            value: 0.2,
          ),
        ],
      ),
    );
  }

  Widget _numericalCard(BuildContext context, DSCardStyle style) {
    return Expanded(
      child: DSCard(
        style: style,
        title: '000',
        numericalTitle: true,
        subheader: Row(
          children: [
            _subheader(context),
            _subheader(context),
            _subheader(context),
          ],
        ),
        status: DSChip.assistive(
          label: DSText('Label'),
          background: _statusBackground(context, style),
          leadingIcon: DSIcon.extraSmall(icon: Symbols.content_cut),
        ),
        avatar: DSAvatar.large
            .icon(
              icon: Symbols.content_cut,
            )
            .copyWith(avatarSize: DSSize.small),
        actionButtons: [
          DSButton.outlined(
            onTap: () async {},
            buttonText: 'Label',
            enabled: true,
          ),
          DSButton.filled(
            onTap: () async {},
            buttonText: 'Label',
            enabled: true,
          ),
        ],
        children: [
          DSText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit lorem ipsum dolor sit amet...',
          ),
          SizedBox(height: 8),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                visualDensity: VisualDensity.compact,
                minVerticalPadding: 0,
                trailing: DSText(
                  '100+',
                  style: context.texts.bodyMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: DSText('List Item'),
              );
            },
            shrinkWrap: true,
            itemCount: 5,
            physics: const NeverScrollableScrollPhysics(),
          ),
          SizedBox(height: 8),
          DSProgressIndicator.linear(
            value: 0.2,
          ),
        ],
      ),
    );
  }

  Widget _mediaCard(BuildContext context, DSCardStyle style) {
    return Expanded(
      child: DSCard(
        style: style,
        title: 'Header',
        subtitle: 'Subheader',
        status: DSChip.assistive(
          label: DSText('Label'),
          background: _statusBackground(context, style),
          leadingIcon: DSIcon.extraSmall(icon: Symbols.content_cut),
        ),
        avatar: DSAvatar.large
            .icon(
              icon: Symbols.content_cut,
            )
            .copyWith(avatarSize: DSSize.small),
        actionButtons: [
          DSButton.outlined(
            onTap: () async {},
            buttonText: 'Label',
            enabled: true,
          ),
          DSButton.filled(
            onTap: () async {},
            buttonText: 'Label',
            enabled: true,
          ),
        ],
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset('assets/exemple_media.png'),
          ),
          SizedBox(height: 8),
          DSText(
            'Title',
            style: context.texts.titleSmall.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          DSText(
            'Subtitle',
            style: context.texts.bodyMedium,
          ),
          SizedBox(height: 8),
          DSText(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit lorem ipsum dolor sit amet...',
          ),
          SizedBox(height: 8),
          DSProgressIndicator.linear(
            value: 0.2,
          ),
        ],
      ),
    );
  }

  Widget _buttonCard(BuildContext context, DSCardStyle style) {
    return Expanded(
      child: DSCard.button(
        style: style,
        padding: EdgeInsets.zero,
        paddingAvatar: const EdgeInsets.only(left: 8),
        avatar: DSAvatar.medium
            .icon(icon: Symbols.content_cut)
            .copyWith(avatarSize: DSSize.small),
        title: 'Header',
        subtitle: 'Subtitle',
        trailingIcon: SizedBox.square(
          dimension: 55,
          child: Image.asset(
            'assets/exemple_media.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _tableCard(BuildContext context, DSCardStyle style) {
    final rows = List.generate(5, (index) {
      final isLast = index == 4;

      return DSListTile(
        title: const Text('Label'),
        trailing: Text(
          'Text',
          style: context.texts.bodyMedium.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        density: DSListTileDensity.standard,
        showDivider: !isLast,
      );
    });

    return DSCard.table(
      style: style,
      title: 'Title',
      subtitle: 'Subtitle',
      avatar: DSAvatar.medium.icon(icon: Symbols.person),
      trailingIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          DSCheckbox(
            value: false,
            onChanged: (v) {},
          ),
          SizedBox(width: 16),
          DSIcon.small(
            icon: Symbols.cut,
          ),
        ],
      ),
      actionButtons: [
        DSButton.text(
          onTap: () async {},
          buttonText: 'Label',
          enabled: true,
        ),
        DSButton.text(
          onTap: () async {},
          buttonText: 'Label',
          enabled: true,
        ),
      ],
      children: rows,
    );
  }
}
