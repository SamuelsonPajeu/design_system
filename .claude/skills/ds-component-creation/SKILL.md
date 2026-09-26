---
name: ds-component-creation
description: "Use ao criar um NOVO componente que ainda não existe no Design System (DS) — especialmente se for altamente reutilizável e já existir como componente do Material 3. Cobre o fluxo completo de autoria: escolher a categoria do Atomic Design (atoms/molecules/organisms/templates), criar lib/core/components/…/ds_<nome>.dart seguindo as convenções, criar o exemplo em /exemplo e registrar a Story no Storybook. Dispara em: 'crie um componente <X> no design system', 'adicionar novo DS', 'padronizar <widget> como componente'. Keywords: criar, novo componente, design system, atoms, molecules, organisms, templates, exemplo, storybook."
---

# DS · Criação de Componentes (autoria de um novo DS)

Use quando pedirem para **criar um componente que ainda não existe** no design system.
Antes de criar, confirme via **`ds-component-mapping`** que realmente não há um `DS*` equivalente.

## 1. Decidir: isto deve virar um componente DS?

Crie como componente padrão do DS quando **ambos**:
- é **altamente reutilizável** (vários projetos/telas se beneficiam), **e**
- tem contraparte no **Material 3** (ou é um padrão de UI recorrente).

Se for algo pontual de **uma** tela/feature, **não** crie no DS — implemente localmente na feature,
mas ainda usando os tokens DS (`context.colors`, `context.texts`, `DSSize`).

## 2. Escolher a categoria (Atomic Design)

| Categoria | O que é | Exemplos no repo |
|---|---|---|
| **atoms** | blocos básicos e indivisíveis | `DSText`, `DSIcon`, `DSCheckbox`, `DSSwitch`, `DSBadge`, `DSDivider` |
| **molecules** | combinação de átomos formando um componente coeso | `DSButton`, `DSCard`, `DSChip`, `DSTextField`, `DSDialog`, `DSSelect`, `DSAvatar` |
| **organisms** | blocos complexos compostos de moléculas/átomos | `DSCustomForm`, `DSNavigationDrawer`, `DSNavigationRails`, `DSTimeline`, `DSMenuList` |
| **templates** | estruturas de layout / página base | `DSScaffold`, `DSTable`, `DSFilePicker`, `DSBaseList`, `DSBaseTabPage` |

Regra prática: se envolve estado/estrutura de tela ou orquestra vários componentes → organism/template.
Se é um único controle reutilizável → atom/molecule (o Material 3 costuma indicar: `Button`, `Chip`,
`Card` são molecules; `Icon`, `Switch`, `Text` são atoms).

## 3. Convenções de arquivo e nomenclatura

- Pasta: `lib/core/components/{categoria}/{componente}/`
- Arquivo: `ds_{componente}.dart` (snake_case). Componentes maiores podem separar em subpastas
  `controller/`, `model/`, `views/` (ver `templates/file_picker`, `templates/table`).
- Classe: **`DS{Nome}`** em PascalCase (ex.: `DSRating`).
- Variantes: **construtores nomeados** (ex.: `DSRating.compact(...)`), não flags soltas quando
  representarem "tipos" distintos — siga o padrão de `DSButton` (`.filled/.outlined/.text/…`).

## 4. Convenções de implementação (obrigatórias)

Espelhe os componentes existentes (leia `molecules/button/ds_button.dart` e
`atoms/switch/ds_switch.dart` como referência canônica):

1. **Embrulhe o widget Material 3**, não reinvente comportamento. Personalize aparência/estados
   por cima do widget base (`ElevatedButton`, `Switch`, `Card`, …).
2. **Tokens sempre** — nunca hardcode cor/tipografia/tamanho:
   - `context.colors.sys*` (ex.: `sysPrimary`, `sysOnSurface`, `sysSurfaceContainerLow`,
     `sysOutlineVariant`) e state layers `context.colors.stateLayersPrimaryOpacity008/012`.
   - `context.texts.*` (`titleMedium`, `bodyLarge`, `labelLarge`, …).
   - `DSSize` para dimensões/espaçamentos; aceite `DSSize? size` quando fizer sentido.
   - Imports: `theme_extensions.dart` (colors/texts) e `constants/ds_size.dart` (DSSize).
3. **Estados visuais** (hover/focus/pressed/disabled) via `WidgetStateProperty.resolveWith` +
   state layers — como em `getButtonStyle` do `DSButton`.
4. **Acessibilidade**: embrulhe em `Semantics` com `label`/`hint`/`value` e, para estados
   assíncronos, anuncie a leitores de tela com `SemanticsService.sendAnnouncement`
   (só quando `MediaQuery.of(context).accessibleNavigation`). Ver `_announceStateChange` no `DSButton`.
5. **Validações**: use `assert(...)` para pré-condições de parâmetros (ex.: "informe texto ou ícone").
6. **Comentários/doc** em **pt-BR** nos parâmetros públicos, seguindo o estilo já usado (`///`).
7. **Agnóstico de tema**: precisa funcionar nos 13 temas (Base + 12 variantes de cor).
   Se hardcodar cor, quebra — por isso tokens.

### Esqueleto anotado

```dart
import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';

/// Breve descrição do componente e quando usá-lo.
class DSExample extends StatelessWidget {
  const DSExample({
    super.key,
    required this.onTap,
    this.label,
    this.size = DSSize.medium,
    this.enabled = true,
  }) : assert(label != null, 'label é obrigatório');

  final VoidCallback? onTap;
  final String? label;
  final DSSize size;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: label,
      enabled: enabled,
      child: Material( // ou o widget Material 3 base equivalente
        color: context.colors.sysSurfaceContainerLow,
        borderRadius: BorderRadius.circular(size.border()),
        child: InkWell(
          onTap: enabled ? onTap : null,
          overlayColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.pressed)) {
              return context.colors.stateLayersPrimaryOpacity012;
            }
            if (states.contains(WidgetState.hovered)) {
              return context.colors.stateLayersPrimaryOpacity008;
            }
            return null;
          }),
          child: Padding(
            padding: EdgeInsets.all(size.padding()),
            child: Text(label!, style: context.texts.labelLarge),
          ),
        ),
      ),
    );
  }
}
```

## 5. Criar o exemplo no Storybook (obrigatório)

Todo componente novo precisa de um exemplo em `/exemplo`. O app é um **Storybook**
(`storybook_flutter`).

**5a. Crie** `exemplo/lib/features/{categoria}/{componente}/{componente}_example.dart`.
Siga o padrão de `exemplo/lib/features/atoms/switch/switch_example.dart` (referência leve) ou
`.../molecules/button/button.dart` (referência completa):

```dart
import 'package:design_system/core/components/{categoria}/{componente}/ds_{componente}.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

class ExampleExample extends StatelessWidget {
  const ExampleExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Knobs = controles interativos do Storybook
    final enabled = context.knobs.boolean(label: 'Enabled', initial: true);

    return DSScaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Interactive Demo', style: context.texts.titleMedium),
            const SizedBox(height: 16),
            DSExample(label: 'Exemplo', onTap: () {}, enabled: enabled),
            const SizedBox(height: 32),
            Divider(color: context.colors.sysOutlineVariant),
            const SizedBox(height: 32),
            Text('Visual Verification', style: context.texts.titleMedium),
            // ... matriz de estados (enabled/hovered/focused/pressed/disabled)
          ],
        ),
      ),
    );
  }
}
```

**5b. Registre a `Story`** no barrel da categoria
(`exemplo/lib/features/{categoria}/{categoria}.dart`) — adicione o `import` e um item na lista
`designSystem{Categoria}Story`:

```dart
Story(
  name: '{Categoria}/{Componente}',          // ex.: 'Molecules/Example'
  description: '{Componente} padrão do aplicativo.',
  builder: (context) => const ColoredBox(
    color: Colors.white,
    child: ExampleExample(),
  ),
),
```

`main.dart` já agrega `designSystemAtomsStory`, `...MoleculesStory`, `...OrganismsStory`,
`...TemplatesStory` e ordena por nome — não precisa mexer nele.

**5c. Valide visualmente** rodando o Storybook e alternando tema claro/escuro e a variante de cor
(Base ↔ Aqua ↔ Blue ↔ …) para garantir que não hardcodou cores:

```bash
cd exemplo && flutter pub get && flutter run
```

## 6. Testes

Se possível, adicione testes em `test/` espelhando a estrutura de pastas de `lib/`
(convenção do `README.md`).

## 7. Fechar o ciclo — atualizar o mapeamento

Depois de criar o componente, ele passa a ser o padrão obrigatório: a partir daí, use o novo `DS*`
em vez do widget Material (ver **`ds-component-mapping`**). Se mantiver uma tabela/índice de
mapeamento, acrescente a nova linha.

## Checklist final

- [ ] Confirmado que não existia `DS*` equivalente (`ds-component-mapping`).
- [ ] Categoria correta (atoms/molecules/organisms/templates).
- [ ] `lib/core/components/{categoria}/{componente}/ds_{componente}.dart`, classe `DS{Nome}`.
- [ ] Embrulha o widget Material 3; variantes via construtores nomeados.
- [ ] Tokens em tudo: `context.colors.sys*`, `context.texts.*`, `DSSize` (zero cor/tamanho hardcoded).
- [ ] Estados via `WidgetStateProperty` + state layers; acessibilidade (`Semantics`/announcements).
- [ ] Doc `///` em pt-BR; `assert` nas pré-condições.
- [ ] Exemplo em `exemplo/lib/features/{categoria}/{componente}/…_example.dart` (`DSScaffold` + knobs).
- [ ] `Story` registrada no barrel `…/{categoria}.dart`.
- [ ] Validado no Storybook em claro/escuro e em mais de uma variante de cor.
- [ ] (Opcional) Testes em `test/`.

## Skills relacionadas
- **`ds-component-mapping`** — checar se já existe e a regra de tokens/imports.
- **`ds-component-usage`** — como consumir o componente depois de criado.
