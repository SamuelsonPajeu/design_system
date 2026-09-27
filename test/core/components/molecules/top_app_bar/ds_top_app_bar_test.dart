import 'package:design_system/core/components/molecules/top_app_bar/ds_top_app_bar.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Color curvatureColor = BaseAppTheme.lightAppColors.sysPrimary;

  Finder curvatureBoxes() => find.descendant(
        of: find.byType(DSTopAppBar),
        matching: find.byWidgetPredicate(
          (w) => w is ColoredBox && w.color == curvatureColor,
        ),
      );

  Future<void> pumpBar(WidgetTester tester, {required bool isWeb}) {
    return tester.pumpWidget(
      MaterialApp(
        theme: BaseAppTheme.light,
        home: Scaffold(
          appBar: DSTopAppBar.small(title: 'Notificações', isWeb: isWeb),
        ),
      ),
    );
  }

  group('curvatura', () {
    testWidgets('app: cor da curvatura atrás dos cantos', (tester) async {
      await pumpBar(tester, isWeb: false);
      expect(curvatureBoxes(), findsOneWidget);
      expect(find.byType(ClipRRect), findsWidgets);
    });

    testWidgets('web: só os cantos arredondados, sem a cor', (tester) async {
      await pumpBar(tester, isWeb: true);
      expect(curvatureBoxes(), findsNothing);
      expect(
        find.descendant(
          of: find.byType(DSTopAppBar),
          matching: find.byType(ClipRRect),
        ),
        findsWidgets,
      );
      expect(tester.takeException(), isNull);
    });
  });

  group('faixa primária', () {
    DSTopAppBar bar({required bool isWeb}) => DSTopAppBar.small(
          title: 'Notificações',
          showPrimaryBand: true,
          primaryBandHeight: 24,
          isWeb: isWeb,
        );

    test('conta a faixa só fora da web', () {
      expect(bar(isWeb: false).preferredSize.height, 64 + 24);
      expect(bar(isWeb: true).preferredSize.height, 64);
    });

    test('getHeightForWidth segue a mesma regra', () {
      double height({required bool isWeb}) => DSTopAppBar.getHeightForWidth(
            width: 1280,
            type: DSTopAppBarType.small,
            isSearchVisible: false,
            searchBehavior: DSTopAppBarSearchBehavior.icon,
            primaryBandHeight: 24,
            showPrimaryBand: true,
            isWeb: isWeb,
          );
      expect(height(isWeb: false), 64 + 24);
      expect(height(isWeb: true), 64);
    });

    testWidgets('web: não desenha a faixa', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(appBar: bar(isWeb: true)),
        ),
      );
      expect(curvatureBoxes(), findsNothing);
      expect(tester.getSize(find.byType(DSTopAppBar)).height, 64);
    });
  });
}
