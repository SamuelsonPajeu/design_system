import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  Future<void> loading() async {
    await Future.delayed(const Duration(seconds: 2), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DSButton(
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Elevated',
                ),
                DSButton(
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Elevated',
                  buttonIcon: Symbols.add,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DSButton.filled(
                  context: context,
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Filled',
                ),
                DSButton.filled(
                  context: context,
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Filled',
                  buttonIcon: Symbols.add,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DSButton.outlined(
                  context: context,
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Outlined',
                ),
                DSButton.outlined(
                  context: context,
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Outlined',
                  buttonIcon: Symbols.add,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DSButton.text(
                  context: context,
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Text',
                ),
                DSButton.text(
                  context: context,
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Text',
                  buttonIcon: Symbols.add,
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DSButton.tonal(
                  context: context,
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Tonal',
                ),
                DSButton.tonal(
                  context: context,
                  buttonWidth: 300,
                  buttonHeight: 60,
                  onTap: loading,
                  buttonText: 'Tonal',
                  buttonIcon: Symbols.add,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
