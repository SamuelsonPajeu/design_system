import 'dart:io';

import 'package:flutter/widgets.dart';

abstract class DSPlatformWidget extends StatelessWidget {
  const DSPlatformWidget({super.key});

  Widget buildCupertinoWidget(BuildContext context);
  Widget buildMaterialWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildCupertinoWidget(context);
    } else {
      return buildMaterialWidget(context);
    }
  }
}
