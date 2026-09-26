---
name: ds-component-mapping
description: "Use SEMPRE antes de escrever ou editar qualquer widget de UI em Flutter neste repositório (design_system) ou em projetos que o consomem. Mapeia widgets do Material 3 para o componente equivalente do Design System (DS) e torna OBRIGATÓRIO usar a versão DS em vez do widget padrão do Flutter. Dispara ao escolher/instanciar botão, card, texto, ícone, campo, dialog, appbar, switch, etc., ou ao ver Theme.of(context).colorScheme / cores hardcoded. Keywords: componente, widget, Material 3, botão, button, design system, DS."
---

# DS · Mapeamento de Componentes (Material 3 → Design System)

Este é o pacote `design_system`: uma biblioteca de componentes personalizados,
na maioria versões customizadas dos componentes base do **Material 3**, consumida por vários
projetos internos. Todos os componentes seguem o prefixo **`DS`**.

## 🔒 A REGRA (obrigatória)

> **Sempre que existir uma versão DS de um componente, use-a — nunca o widget padrão do Material 3.**

Ao escrever ou editar UI, **antes de usar qualquer widget do `package:flutter/material.dart`**,
verifique se existe um `DS*` equivalente. Se existir, use o `DS*`. Isso vale tanto dentro
deste repositório quanto em qualquer projeto que dependa de `design_system`.

Exemplos do que **NÃO** fazer / fazer:

```dart
// ❌ Errado
ElevatedButton(onPressed: save, child: const Text('Salvar'));
Text('Título', style: TextStyle(fontSize: 20, color: Colors.purple));
Card(child: ...);

// ✅ Certo
DSButton.elevated(onTap: save, buttonText: 'Salvar');
DSText('Título', style: context.texts.titleMedium);
DSCard(child: ...);
```

Isso também vale para **tokens de tema** (cores, tipografia, tamanhos) — ver
[Tokens obrigatórios](#tokens-obrigatórios).

## Como verificar se já existe um DS equivalente

Antes de escrever o widget, procure o componente:

```bash
# 1. Por nome de classe (ex.: procurando um "chip")
grep -rniE "class DS[A-Za-z]*Chip" lib/core/components --include="*.dart"

# 2. Listar TODOS os componentes DS existentes e onde ficam
grep -rloE "class DS[A-Za-z0-9_]+" lib/core/components --include="*.dart" | sort

# 3. Navegar pela estrutura (Atomic Design)
find lib/core/components -maxdepth 2 -type d
```

Se o consumidor não tiver o código-fonte à mão, os componentes ficam sob
`package:design_system/core/components/{atoms|molecules|organisms|templates}/{componente}/ds_{componente}.dart`.

## Convenção de import (⚠️ não há barrel)

O arquivo `lib/design_system.dart` está **vazio** (`library design_system;`) — **não** reexporta nada.
Importe sempre o arquivo específico do componente pelo caminho profundo:

```dart
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart'; // context.colors / context.texts
import 'package:design_system/core/infrastructure/constants/ds_size.dart'; // DSSize
```

## Tabela de mapeamento (Material 3 → DS)

> Tabela de referência dos mais comuns. Para o índice completo, rode o `grep` acima.
> Caminho relativo a `package:design_system/core/components/`.

| Widget Material 3 | Componente DS | Categoria | Caminho |
|---|---|---|---|
| `Text` | `DSText` | atoms | `atoms/text/ds_text.dart` |
| `Icon` | `DSIcon` | atoms | `atoms/icon/ds_icon.dart` |
| `Checkbox` | `DSCheckbox` | atoms | `atoms/checkbox/…` |
| `Radio` / `RadioGroup` | `DSRadio` / `DSRadioGroup` | atoms | `atoms/radio/…` |
| `Switch` | `DSSwitch` | atoms | `atoms/switch/ds_switch.dart` |
| `Slider` / `RangeSlider` | `DSSlider` / `DSRangeSlider` | atoms | `atoms/slider/…` |
| `Divider` / `VerticalDivider` | `DSDivider` / `DSVerticalDivider` | atoms | `atoms/divider/…` |
| `Badge` | `DSBadge` | atoms | `atoms/badge/…` |
| `CircularProgressIndicator` | `DSProgressIndicator` / `DSLoading` | atoms | `atoms/progress_indicator/…`, `atoms/loading/…` |
| `PopupMenuButton` | `DSPopMenuButton` | atoms | `atoms/pop_menu_button/…` |
| `ElevatedButton`/`FilledButton`/`OutlinedButton`/`TextButton` | `DSButton` (`.elevated`/`.filled`/`.tonal`/`.outlined`/`.text`) | molecules | `molecules/button/ds_button.dart` |
| `Card` | `DSCard` | molecules | `molecules/card/ds_card.dart` |
| `Chip` / `FilterChip` | `DSChip` / `DSFilterChip` | molecules | `molecules/chip/…`, `molecules/filter/…` |
| `TextField` | `DSTextField` | molecules | `molecules/text_field/…` |
| `TextFormField` | `DSTextFormField` / `DSFormTextField` | molecules | `molecules/text_form_field/…` |
| `AlertDialog` / `Dialog` | `DSDialog` / `DSPlatformAlertDialog` | molecules | `molecules/dialog/…` |
| `showModalBottomSheet` / `BottomSheet` | (ver `molecules/bottom_sheet/…`) | molecules | `molecules/bottom_sheet/…` |
| `AppBar` | `DSTopAppBar` | molecules | `molecules/top_app_bar/ds_top_app_bar.dart` |
| `BottomAppBar` | `DSBottomAppBar` | molecules | `molecules/bottom_app_bar/…` |
| `NavigationBar` | `DSNavigationBar` | molecules | `molecules/navigation_bar/…` |
| `FloatingActionButton` | `DSFloatingActionButton` | molecules | `molecules/floating_action_button/…` |
| `TabBar` / `TabBarView` | `DSTabs` | molecules | `molecules/tabs/…` |
| `Tooltip` | `DSTooltip` | molecules | `molecules/tooltip/…` |
| `SegmentedButton` | `DSSegmentedButton` | molecules | `molecules/segmented_button/…` |
| `DropdownMenu` / `DropdownButtonFormField` | `DSSelect` / `DSDropDownButtonField` | molecules | `molecules/select/ds_select.dart` |
| `SearchAnchor` / `SearchBar` | `DSSearchAnchor` | molecules | `molecules/search/…` |
| `ListTile` | `DSListTile` | molecules | `molecules/list_tile/…` |
| `showDatePicker` / `showDateRangePicker` | `showDSDatePicker` / `showDSDateRangePicker` (funções) | molecules | `molecules/date_picker/ds_date_picker.dart` |
| `showTimePicker` | `showDSTimePicker` (função) | molecules | `molecules/time_picker/ds_time_picker.dart` |
| `Stepper` | `DSStepper` | molecules | `molecules/stepper/…` |
| `ExpansionPanelList` | `DSExpansionPanel` | molecules | `molecules/expansion_panel/…` |
| `Autocomplete` | `DSAutocomplete` | molecules | `molecules/autocomplete/…` |
| `SnackBar` / `ScaffoldMessenger` | `DSSnackbar` | molecules | `molecules/snackbar/…` |
| `CircleAvatar` | `DSAvatar` | molecules | `molecules/avatar/ds_avatar.dart` |
| `MenuAnchor` / `MenuBar` | `DSMenu` / `DSMenuBar` | molecules | `molecules/menu/…` |
| `CarouselView` | `DSCarousel` | molecules | `molecules/carousel/…` |
| `Drawer` / `NavigationDrawer` | `DSNavigationDrawer` | organisms | `organisms/navigation_drawer/…` |
| `NavigationRail` | `DSNavigationRails` | organisms | `organisms/navigation_rails/…` |
| `Form` | `DSCustomForm` | organisms | `organisms/form/…` |
| `Scaffold` | `DSScaffold` | templates | `templates/base_scaffold/ds_scaffold.dart` |
| `DataTable` / `Table` | `DSTable` | templates | `templates/table/views/ds_table.dart` |

Outros DS sem equivalente Material direto (também prefira usá-los): `DSBreadcrumb`,
`DSSideSheet`, `DSInfoCard`, `DSInfoPanel`, `DSPaginator`, `DSTimeline`, `DSButtonCard`,
`DSFilePicker`, `DSGraph`, `DSMenuList`, `DSBaseList`, `DSBaseTabPage`, `DSResponsiveContentWrapper`,
`DSVariableRadioList`, `DSTreeView`, `DSKeyboard`, `DSShakeError`.

## Tokens obrigatórios

Componentes DS são **agnósticos de tema** (existem 13 temas: Base + 12 variantes
de cor). Portanto **nunca** use cores/tipografia hardcoded nem `Theme.of(context).colorScheme`.
Use as extensions de `context` (de `theme_extensions.dart`):

- **Cores:** `context.colors.sys*` — ex.: `sysPrimary`, `sysOnPrimary`, `sysSurface`,
  `sysSurfaceContainerLow`, `sysError`, `sysOutlineVariant`, `sysOnSurfaceVariant`.
  State layers: `context.colors.stateLayersPrimaryOpacity008/012/016`.
  (Evite os tokens crus `ref*` — use os semânticos `sys*`.)
- **Tipografia:** `context.texts.*` — escala Material 3: `displayLarge…displaySmall`,
  `headline*`, `title*`, `body*` (+ `bodyMediumBold` etc.), `label*`.
- **Tamanho/espaçamento:** enum `DSSize { extraSmall, small, medium, large, extraLarge }`
  com helpers (`padding()`, `icon()`, `border()`, `responsiveGap(context)`), além de
  `context.gap(DSSize.medium)` e `context.pagePadding`.

```dart
// ❌  Color(0xFF6750A4) / Colors.purple / Theme.of(context).colorScheme.primary / TextStyle(fontSize: 16)
// ✅
color: context.colors.sysPrimary,
style: context.texts.bodyLarge,
padding: EdgeInsets.all(DSSize.medium.padding()),
```

## Fluxo de decisão

1. **Existe um `DS*` equivalente?** → Use-o (com os tokens acima). Consulte a skill
   **`ds-component-usage`** para achar o construtor certo e um exemplo de uso.
2. **Não existe, mas é altamente reutilizável e tem equivalente no Material 3?**
   → Crie-o como componente padrão do DS. Siga a skill **`ds-component-creation`**.
3. **Não existe e é específico/pontual daquela tela (não reutilizável)?** → Pode usar o widget
   Material diretamente, **mas ainda** com os tokens DS (`context.colors`, `context.texts`, `DSSize`).

## Skills relacionadas
- **`ds-component-usage`** — como implementar/instanciar um DS existente (API + exemplos do `/exemplo`).
- **`ds-component-creation`** — como criar um novo componente DS + exemplo + registro no Storybook.
