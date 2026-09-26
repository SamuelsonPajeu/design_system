import 'package:flutter/material.dart';

extension DSVisibilityAdapter on Widget {
  Widget visibilityAdapter({bool visible = true}) {
    return Visibility(visible: visible, child: this);
  }
}
