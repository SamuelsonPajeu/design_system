import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

/// Usuário logado no rodapé do `DSNavigationDrawer` (parâmetro `footer`):
/// avatar, nome e uma linha de apoio (ex.: e-mail ou "Sair").
class DSNavigationDrawerAccount extends StatelessWidget {
  const DSNavigationDrawerAccount({
    super.key,
    required this.name,
    this.initials,
    this.avatar,
    this.supportingText,
    this.onTap,
  }) : assert(
          initials == null || initials.length <= 2,
          'initials deve ter no máximo 2 caracteres',
        );

  /// Nome exibido ao lado do avatar.
  final String name;

  /// Iniciais (1 ou 2 letras) do avatar padrão. Sem elas, o avatar mostra
  /// um ícone de pessoa. Ignorado quando [avatar] é informado.
  final String? initials;

  /// Avatar próprio (ex.: foto), no lugar do avatar de iniciais.
  final Widget? avatar;

  /// Linha menor abaixo do nome.
  final String? supportingText;

  /// Toque em toda a linha (ex.: sair da conta, abrir o perfil).
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final texts = context.texts;
    final initials = this.initials;
    final supportingText = this.supportingText;

    final leading = avatar ??
        (initials != null && initials.isNotEmpty
            ? DSAvatar.medium.initial(
                initial: initials,
                background: colors.sysSecondaryContainer,
                widgetColor: colors.sysOnSecondaryContainer,
              )
            : DSAvatar.medium.icon(
                icon: Symbols.person,
                background: colors.sysSecondaryContainer,
                widgetColor: colors.sysOnSecondaryContainer,
              ));

    return Semantics(
      button: onTap != null,
      label: [name, if (supportingText != null) supportingText].join(', '),
      excludeSemantics: true,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                leading,
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DSText(
                        name,
                        style: texts.labelLarge.copyWith(
                          color: colors.sysOnSurface,
                          fontWeight: FontWeight.w600,
                        ),
                        autoSize: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (supportingText != null)
                        DSText(
                          supportingText,
                          style: texts.bodySmall.copyWith(
                            color: colors.sysOnSurfaceVariant,
                          ),
                          autoSize: false,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
