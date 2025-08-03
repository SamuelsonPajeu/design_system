import 'package:design_system/core/components/atoms/loading/ds_loading_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DSLoadingShimmer(height: 10, width: 300),
          SizedBox(
            height: 10,
          ),
          DSLoadingShimmer(height: 50, width: 300),
          SizedBox(
            height: 10,
          ),
          DSLoadingShimmer(height: 100, width: 100)
        ],
      ),
    ));
  }
}
