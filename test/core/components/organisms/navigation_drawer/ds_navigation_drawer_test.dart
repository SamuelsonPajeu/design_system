import 'package:design_system/core/components/molecules/avatar/ds_avatar.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer_account.dart';
import 'package:design_system/core/components/organisms/navigation_drawer/ds_navigation_drawer_item.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_symbols_icons/symbols.dart';

void main() {
  const items = [
    DSNavigationDrawerItem(icon: Symbols.home, label: 'Início'),
    DSNavigationDrawerItem(icon: Symbols.person, label: 'Perfil'),
  ];

  Future<void> pump(WidgetTester tester, Widget drawer) {
    return tester.pumpWidget(
      MaterialApp(
        theme: BaseAppTheme.dark,
        home: Scaffold(body: Row(children: [drawer])),
      ),
    );
  }

  BoxDecoration drawerDecoration(WidgetTester tester) {
    final container = tester.widget<Container>(
      find
          .descendant(
            of: find.byType(DSNavigationDrawer),
            matching: find.byType(Container),
          )
          .first,
    );
    return container.decoration! as BoxDecoration;
  }

  testWidgets('padrão: título de seção, sem rodapé nem divisória',
      (tester) async {
    await pump(
      tester,
      const DSNavigationDrawer(title: 'Menu', items: items, selectedIndex: 0),
    );

    expect(find.text('Menu'), findsOneWidget);
    expect(find.text('Início'), findsOneWidget);
    expect(find.byType(DSNavigationDrawerAccount), findsNothing);
    expect(drawerDecoration(tester).border, isNull);
  });

  testWidgets('brand: logo + nome no topo e conta no rodapé', (tester) async {
    var logoutTaps = 0;
    int? selected;
    await pump(
      tester,
      DSNavigationDrawer.brand(
        title: 'semtetPlayground',
        logo: const SizedBox.square(key: Key('logo'), dimension: 28),
        items: items,
        selectedIndex: 0,
        onItemSelected: (index) => selected = index,
        showDivider: true,
        footer: DSNavigationDrawerAccount(
          name: 'Joana Lima',
          initials: 'JL',
          supportingText: 'Sair',
          onTap: () => logoutTaps++,
        ),
      ),
    );

    expect(find.byKey(const Key('logo')), findsOneWidget);
    expect(find.text('semtetPlayground'), findsOneWidget);
    expect(find.text('Joana Lima'), findsOneWidget);
    expect(find.text('JL'), findsOneWidget);
    expect(drawerDecoration(tester).border, isNotNull);

    // O rodapé fica abaixo do último item.
    expect(
      tester.getTopLeft(find.text('Joana Lima')).dy,
      greaterThan(tester.getTopLeft(find.text('Perfil')).dy),
    );

    await tester.tap(find.text('Sair'));
    await tester.tap(find.text('Perfil'));
    expect(logoutTaps, 1);
    expect(selected, 1);
  });

  testWidgets('conta sem iniciais mostra avatar de ícone', (tester) async {
    await pump(
      tester,
      const DSNavigationDrawer(
        title: 'Menu',
        items: items,
        selectedIndex: 0,
        footer: DSNavigationDrawerAccount(name: 'Joana'),
      ),
    );

    expect(find.byType(DSAvatar), findsOneWidget);
    expect(find.byIcon(Symbols.person), findsWidgets);
    expect(tester.takeException(), isNull);
  });

  testWidgets('legenda de seção e itens fixos no rodapé mantêm os índices',
      (tester) async {
    int? selected;
    await pump(
      tester,
      SizedBox(
        height: 700,
        child: DSNavigationDrawer(
          title: 'Menu',
          selectedIndex: 2,
          onItemSelected: (index) => selected = index,
          pinnedBottomCount: 2,
          items: const [
            DSNavigationDrawerItem(icon: Symbols.home, label: 'Início'),
            DSNavigationDrawerItem(icon: Symbols.list, label: 'Lista'),
            DSNavigationDrawerItem(
              icon: Symbols.admin_panel_settings,
              label: 'Acessos',
              sectionLabel: 'Administração',
            ),
            DSNavigationDrawerItem(icon: Symbols.badge, label: 'Cadastro'),
            DSNavigationDrawerItem(icon: Symbols.logout, label: 'Sair'),
          ],
        ),
      ),
    );

    // A legenda fica entre o grupo anterior e o primeiro item do grupo.
    final caption = tester.getTopLeft(find.text('Administração')).dy;
    expect(caption, greaterThan(tester.getTopLeft(find.text('Lista')).dy));
    expect(caption, lessThan(tester.getTopLeft(find.text('Acessos')).dy));

    // Os fixos ficam no fim do drawer, longe dos demais.
    final drawerBottom = tester.getBottomLeft(find.byType(DSNavigationDrawer));
    expect(
      drawerBottom.dy - tester.getBottomLeft(find.text('Sair')).dy,
      lessThan(60),
    );
    expect(
      tester.getTopLeft(find.text('Cadastro')).dy -
          tester.getTopLeft(find.text('Acessos')).dy,
      greaterThan(200),
    );

    await tester.tap(find.text('Administração'));
    expect(selected, isNull, reason: 'a legenda não é um item');
    await tester.tap(find.text('Acessos'));
    expect(selected, 2);
    await tester.tap(find.text('Sair'));
    expect(selected, 4);
    expect(tester.takeException(), isNull);
  });

  testWidgets('contador do item aparece só com rótulo', (tester) async {
    await pump(
      tester,
      const DSNavigationDrawer(
        title: 'Menu',
        selectedIndex: 0,
        items: [
          DSNavigationDrawerItem(icon: Symbols.home, label: 'Início'),
          DSNavigationDrawerItem(
            icon: Symbols.notifications,
            label: 'Notificações',
            badgeLabel: '3',
          ),
          DSNavigationDrawerItem(
            icon: Symbols.person,
            label: 'Perfil',
            badgeLabel: '',
          ),
        ],
      ),
    );

    expect(find.text('Notificações'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
