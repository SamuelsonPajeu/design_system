import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DSLoadingShimmer extends StatelessWidget {
  const DSLoadingShimmer(
      {super.key, required this.height, required this.width, this.decoration});

  final double height;
  final double width;
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      period: const Duration(milliseconds: 800),
      enabled: true,
      child: Container(
        decoration: decoration ?? BoxDecoration(color: Colors.grey.shade300),
        height: height,
        width: width,
      ),
    );
  }
}
