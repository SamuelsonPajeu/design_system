import 'package:design_system/core/components/atoms/icon/ds_icon.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DSIcon(icon: Symbols.check_circle),
          SizedBox(
            height: 10,
          ),
          DSIcon(icon: Symbols.abc),
          SizedBox(
            height: 10,
          ),
          DSIcon(icon: Symbols.people)
        ],
      ),
    ));
  }
}
