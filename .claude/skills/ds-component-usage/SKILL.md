---
name: ds-component-usage
description: "Use ao implementar/instanciar um componente do Design System (DS) já existente e precisar do construtor certo, parâmetros, variantes (construtores nomeados) e um exemplo de uso funcional. Sempre que necessário, consulte o exemplo de implementação na pasta /exemplo (app Storybook). Dispara em: 'como uso o DSButton/DSSelect/DSDialog…', 'implementar componente do design system', 'exemplo de uso de <componente> DS'. Keywords: implementar, usar, exemplo, /exemplo, storybook, construtor, DS."
---

# DS · Implementação de Componentes (usar o que já existe)

Ao usar um componente DS já existente, **não adivinhe a API** — descubra o construtor correto e
espelhe um exemplo real. Cada componente tem um exemplo interativo na pasta **`/exemplo`**
(um app **Storybook**, `storybook_flutter`).

> Antes disto, a skill **`ds-component-mapping`** decide _qual_ `DS*` usar e reforça o uso de tokens.
> Esta skill trata de _como_ instanciá-lo corretamente.

## Fluxo de implementação

1. **Localize o componente** em `lib/core/components/{categoria}/{componente}/ds_{componente}.dart`:
   ```bash
   grep -rlE "class DSButton\b" lib/core/components --include="*.dart"
   ```
2. **Leia os construtores e parâmetros** do arquivo. Muitos componentes usam **construtores
   nomeados** para variantes (padrão do Material 3):
   ```dart
   DSButton.filled(...)  DSButton.outlined(...)  DSButton.text(...)
   DSButton.elevated(...)  DSButton.tonal(...)
   ```
   Preste atenção em `assert(...)` (ex.: `DSButton` exige `buttonIcon` **ou** `buttonText`).
3. **Encontre o exemplo** correspondente em
   `exemplo/lib/features/{categoria}/{componente}/{nome}_example.dart`:
   ```bash
   find exemplo/lib/features -iname "*button*"
   ```
4. **Espelhe o exemplo**: copie o padrão de uso (props, tokens, callbacks) para o seu código,
   ajustando ao contexto real.

## Exemplo mínimo (padrão típico de uso)

```dart
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:design_system/core/infrastructure/constants/ds_size.dart';

DSButton.filled(
  onTap: () async => await controller.salvar(),  // Future<void>? Function()?
  buttonText: 'Salvar',
  buttonIcon: Symbols.check,          // opcional (material_symbols_icons)
  size: DSSize.medium,                // usa o enum DSSize, não px cru
  enabled: true,
);
```

Observações que se repetem em quase todos os componentes:
- **Cores/tipografia sempre por token:** `context.colors.sys*`, `context.texts.*`
  (nunca `Colors.x`, `Theme.of(context).colorScheme`, nem `TextStyle(...)` hardcoded).
- **Tamanho por `DSSize`** quando o componente aceitar (`DSSize.small/medium/large…`).
- **Callbacks assíncronos:** vários componentes (ex.: `DSButton.onTap`) esperam
  `Future<void>? Function()?` e cuidam sozinhos do estado de loading/sucesso.
- **Acessibilidade já embutida:** não reembrulhe em `Semantics` sem necessidade — os DS já
  anunciam estados a leitores de tela.

## A pasta `/exemplo` é um Storybook

- Cada exemplo é uma tela (`StatelessWidget`/`StatefulWidget`) que normalmente:
  - usa **`DSScaffold`** como raiz;
  - expõe controles interativos via **knobs** (`context.knobs.boolean(...)`,
    `context.knobs.text(...)`, e o helper próprio `context.knobSliderDSSize(...)`);
  - organiza seções como **"Interactive Demo"** e **"Visual Verification"/"State Matrix"**.
- Os exemplos são registrados como `Story` nos barrels de categoria
  (`exemplo/lib/features/{categoria}/{categoria}.dart`) e agregados em `exemplo/lib/main.dart`.
- Isso permite alternar **tema claro/escuro** e a **variante de cor** (`Base` ↔ `Aqua` ↔ `Blue` ↔ …) e ver
  o componente em todos os temas — útil para validar que você não hardcodou cores.

### Rodar o Storybook para pré-visualizar

```bash
cd exemplo
flutter pub get
flutter run            # escolha o device (web/desktop/emulador)
```

Use-o para conferir visualmente variantes, estados e props antes de finalizar a implementação.

## Checklist ao implementar um DS

- [ ] Usei o `DS*` correto (confirmado via `ds-component-mapping`), não o widget Material cru.
- [ ] Import pelo caminho profundo do arquivo (não existe barrel `design_system.dart`).
- [ ] Escolhi o **construtor nomeado**/variante certa e satisfiz os `assert`.
- [ ] Cores/tipografia/tamanho via `context.colors` / `context.texts` / `DSSize`.
- [ ] Conferi o exemplo em `/exemplo` e espelhei o padrão de uso.

## Skills relacionadas
- **`ds-component-mapping`** — qual `DS*` usar e a regra de tokens/imports.
- **`ds-component-creation`** — se o componente **não existir** e precisar ser criado.
