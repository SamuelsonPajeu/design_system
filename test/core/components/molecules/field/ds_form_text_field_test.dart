import 'package:design_system/core/components/molecules/field/ds_form_text_field.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget app(Widget child) => MaterialApp(
        theme: BaseAppTheme.light,
        home: Scaffold(body: child),
      );

  testWidgets('controller que sobrevive ao campo não chama setState no state morto',
      (tester) async {
    final controller = TextEditingController();
    addTearDown(controller.dispose);

    await tester.pumpWidget(
      app(DSFormTextField(hintText: 'Nome', controller: controller)),
    );
    // Tela troca de etapa: o campo sai, o controller continua.
    await tester.pumpWidget(app(const SizedBox()));

    controller.text = 'Joana';
    await tester.pump();
    expect(tester.takeException(), isNull);
  });

  testWidgets('trocar o controller passa a ouvir o novo', (tester) async {
    final first = TextEditingController();
    final second = TextEditingController();
    addTearDown(first.dispose);
    addTearDown(second.dispose);

    await tester.pumpWidget(
      app(DSFormTextField(hintText: 'Nome', controller: first, required: true)),
    );
    await tester.pumpWidget(
      app(DSFormTextField(hintText: 'Nome', controller: second, required: true)),
    );

    first.text = 'antigo';
    second.text = 'novo';
    await tester.pump();
    expect(tester.takeException(), isNull);
    expect(find.text('novo'), findsOneWidget);
  });
}
