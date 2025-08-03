import 'package:flutter/material.dart';

class DSLoading extends StatelessWidget {
  const DSLoading({super.key, this.color = Colors.white});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color),
      ),
    );
  }
}
