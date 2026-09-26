import 'package:design_system/core/infrastructure/constants/ds_size.dart';
import 'package:flutter/material.dart';

class DSLoading extends StatelessWidget {
  const DSLoading({
    super.key,
    this.color = Colors.white,
    this.size,
  });
  final Color color;
  final DSSize? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _getLoadingSize(size),
      height: _getLoadingSize(size),
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }

  double? _getLoadingSize(DSSize? size) {
    switch (size) {
      case DSSize.extraSmall:
        return 4.0;
      case DSSize.small:
        return 8.0;
      case DSSize.medium:
        return 16.0;
      case DSSize.large:
        return 32.0;
      case DSSize.extraLarge:
        return 48.0;
      case null:
        return null;
    }
  }
}
