import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DSLoadingShimmer extends StatelessWidget {
  const DSLoadingShimmer(
      {super.key, required this.height, required this.width, this.decoration});

  final double height;
  final double width;

  /// Só a forma conta (ex.: `borderRadius`): a cor é pintada pelo shimmer.
  final BoxDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    // Superfícies do tema: cinza-claro no tema claro e tons escuros no escuro
    // (o cinza fixo ficava quase branco no dark mode).
    return Shimmer.fromColors(
      baseColor: colors.sysSurfaceContainerHighest,
      highlightColor: colors.sysSurfaceContainerLow,
      period: const Duration(milliseconds: 800),
      enabled: true,
      child: Container(
        decoration: decoration ??
            BoxDecoration(color: colors.sysSurfaceContainerHighest),
        height: height,
        width: width,
      ),
    );
  }
}
