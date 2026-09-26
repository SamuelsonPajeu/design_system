import 'package:flutter/material.dart';

class ColorsThemeExtension extends ThemeExtension<ColorsThemeExtension> {
  ColorsThemeExtension({
    required this.hyperlinkActive,
    required this.hyperlinkFocused,
    required this.hyperlinkHovered,
    required this.hyperlinkNormal,
    required this.hyperlinkVisited,
    required this.refErrorE0,
    required this.refErrorE10,
    required this.refErrorE100,
    required this.refErrorE15,
    required this.refErrorE2,
    required this.refErrorE20,
    required this.refErrorE30,
    required this.refErrorE4,
    required this.refErrorE40,
    required this.refErrorE50,
    required this.refErrorE6,
    required this.refErrorE60,
    required this.refErrorE70,
    required this.refErrorE8,
    required this.refErrorE80,
    required this.refErrorE85,
    required this.refErrorE90,
    required this.refErrorE93,
    required this.refErrorE95,
    required this.refErrorE98,
    required this.refErrorE99,
    required this.refNeutralN0,
    required this.refNeutralN10,
    required this.refNeutralN100,
    required this.refNeutralN15,
    required this.refNeutralN2,
    required this.refNeutralN20,
    required this.refNeutralN30,
    required this.refNeutralN4,
    required this.refNeutralN40,
    required this.refNeutralN50,
    required this.refNeutralN6,
    required this.refNeutralN60,
    required this.refNeutralN70,
    required this.refNeutralN8,
    required this.refNeutralN80,
    required this.refNeutralN85,
    required this.refNeutralN90,
    required this.refNeutralN93,
    required this.refNeutralN95,
    required this.refNeutralN98,
    required this.refNeutralN99,
    required this.refNeutralVariantNv0,
    required this.refNeutralVariantNv10,
    required this.refNeutralVariantNv100,
    required this.refNeutralVariantNv15,
    required this.refNeutralVariantNv2,
    required this.refNeutralVariantNv20,
    required this.refNeutralVariantNv30,
    required this.refNeutralVariantNv4,
    required this.refNeutralVariantNv40,
    required this.refNeutralVariantNv50,
    required this.refNeutralVariantNv6,
    required this.refNeutralVariantNv60,
    required this.refNeutralVariantNv70,
    required this.refNeutralVariantNv8,
    required this.refNeutralVariantNv80,
    required this.refNeutralVariantNv85,
    required this.refNeutralVariantNv90,
    required this.refNeutralVariantNv93,
    required this.refNeutralVariantNv95,
    required this.refNeutralVariantNv98,
    required this.refNeutralVariantNv99,
    required this.refPrimaryP0,
    required this.refPrimaryP10,
    required this.refPrimaryP100,
    required this.refPrimaryP15,
    required this.refPrimaryP2,
    required this.refPrimaryP20,
    required this.refPrimaryP30,
    required this.refPrimaryP4,
    required this.refPrimaryP40,
    required this.refPrimaryP50,
    required this.refPrimaryP6,
    required this.refPrimaryP60,
    required this.refPrimaryP70,
    required this.refPrimaryP8,
    required this.refPrimaryP80,
    required this.refPrimaryP85,
    required this.refPrimaryP90,
    required this.refPrimaryP93,
    required this.refPrimaryP95,
    required this.refPrimaryP98,
    required this.refPrimaryP99,
    required this.refSecondaryS0,
    required this.refSecondaryS10,
    required this.refSecondaryS100,
    required this.refSecondaryS15,
    required this.refSecondaryS2,
    required this.refSecondaryS20,
    required this.refSecondaryS30,
    required this.refSecondaryS4,
    required this.refSecondaryS40,
    required this.refSecondaryS50,
    required this.refSecondaryS6,
    required this.refSecondaryS60,
    required this.refSecondaryS70,
    required this.refSecondaryS8,
    required this.refSecondaryS80,
    required this.refSecondaryS85,
    required this.refSecondaryS90,
    required this.refSecondaryS93,
    required this.refSecondaryS95,
    required this.refSecondaryS98,
    required this.refSecondaryS99,
    required this.refSuccessU0,
    required this.refSuccessU10,
    required this.refSuccessU100,
    required this.refSuccessU15,
    required this.refSuccessU2,
    required this.refSuccessU20,
    required this.refSuccessU30,
    required this.refSuccessU4,
    required this.refSuccessU40,
    required this.refSuccessU50,
    required this.refSuccessU6,
    required this.refSuccessU60,
    required this.refSuccessU70,
    required this.refSuccessU8,
    required this.refSuccessU80,
    required this.refSuccessU85,
    required this.refSuccessU90,
    required this.refSuccessU93,
    required this.refSuccessU95,
    required this.refSuccessU98,
    required this.refSuccessU99,
    required this.refTertiaryT0,
    required this.refTertiaryT10,
    required this.refTertiaryT100,
    required this.refTertiaryT15,
    required this.refTertiaryT2,
    required this.refTertiaryT20,
    required this.refTertiaryT30,
    required this.refTertiaryT4,
    required this.refTertiaryT40,
    required this.refTertiaryT50,
    required this.refTertiaryT6,
    required this.refTertiaryT60,
    required this.refTertiaryT70,
    required this.refTertiaryT8,
    required this.refTertiaryT80,
    required this.refTertiaryT85,
    required this.refTertiaryT90,
    required this.refTertiaryT93,
    required this.refTertiaryT95,
    required this.refTertiaryT98,
    required this.refTertiaryT99,
    required this.refWarnW0,
    required this.refWarnW10,
    required this.refWarnW100,
    required this.refWarnW15,
    required this.refWarnW2,
    required this.refWarnW20,
    required this.refWarnW30,
    required this.refWarnW4,
    required this.refWarnW40,
    required this.refWarnW50,
    required this.refWarnW6,
    required this.refWarnW60,
    required this.refWarnW70,
    required this.refWarnW8,
    required this.refWarnW80,
    required this.refWarnW85,
    required this.refWarnW90,
    required this.refWarnW93,
    required this.refWarnW95,
    required this.refWarnW98,
    required this.refWarnW99,
    required this.stateLayersErrorContainerOpacity008,
    required this.stateLayersErrorContainerOpacity012,
    required this.stateLayersErrorContainerOpacity016,
    required this.stateLayersErrorOpacity008,
    required this.stateLayersErrorOpacity012,
    required this.stateLayersErrorOpacity016,
    required this.stateLayersInverseOnSurfaceOpacity008,
    required this.stateLayersInverseOnSurfaceOpacity012,
    required this.stateLayersInverseOnSurfaceOpacity016,
    required this.stateLayersInversePrimaryOpacity008,
    required this.stateLayersInversePrimaryOpacity012,
    required this.stateLayersInversePrimaryOpacity016,
    required this.stateLayersInverseSurfaceOpacity008,
    required this.stateLayersInverseSurfaceOpacity012,
    required this.stateLayersInverseSurfaceOpacity016,
    required this.stateLayersOnErrorContainerOpacity008,
    required this.stateLayersOnErrorContainerOpacity012,
    required this.stateLayersOnErrorContainerOpacity016,
    required this.stateLayersOnErrorOpacity008,
    required this.stateLayersOnErrorOpacity012,
    required this.stateLayersOnErrorOpacity016,
    required this.stateLayersOnPrimaryContainerOpacity008,
    required this.stateLayersOnPrimaryContainerOpacity012,
    required this.stateLayersOnPrimaryContainerOpacity016,
    required this.stateLayersOnPrimaryFixedOpacity008,
    required this.stateLayersOnPrimaryFixedOpacity012,
    required this.stateLayersOnPrimaryFixedOpacity016,
    required this.stateLayersOnPrimaryFixedVariantOpacity008,
    required this.stateLayersOnPrimaryFixedVariantOpacity012,
    required this.stateLayersOnPrimaryFixedVariantOpacity016,
    required this.stateLayersOnPrimaryOpacity008,
    required this.stateLayersOnPrimaryOpacity012,
    required this.stateLayersOnPrimaryOpacity016,
    required this.stateLayersOnSecondaryContainerOpacity008,
    required this.stateLayersOnSecondaryContainerOpacity012,
    required this.stateLayersOnSecondaryContainerOpacity016,
    required this.stateLayersOnSecondaryFixedOpacity008,
    required this.stateLayersOnSecondaryFixedOpacity012,
    required this.stateLayersOnSecondaryFixedOpacity016,
    required this.stateLayersOnSecondaryFixedVariantOpacity008,
    required this.stateLayersOnSecondaryFixedVariantOpacity012,
    required this.stateLayersOnSecondaryFixedVariantOpacity016,
    required this.stateLayersOnSecondaryOpacity008,
    required this.stateLayersOnSecondaryOpacity012,
    required this.stateLayersOnSecondaryOpacity016,
    required this.stateLayersOnSuccessContainerOpacity008,
    required this.stateLayersOnSuccessContainerOpacity012,
    required this.stateLayersOnSuccessContainerOpacity016,
    required this.stateLayersOnSuccessOpacity008,
    required this.stateLayersOnSuccessOpacity012,
    required this.stateLayersOnSuccessOpacity016,
    required this.stateLayersOnSurfaceOpacity008,
    required this.stateLayersOnSurfaceOpacity012,
    required this.stateLayersOnSurfaceOpacity016,
    required this.stateLayersOnSurfaceVariantOpacity008,
    required this.stateLayersOnSurfaceVariantOpacity012,
    required this.stateLayersOnSurfaceVariantOpacity016,
    required this.stateLayersOnTertiaryContainerOpacity008,
    required this.stateLayersOnTertiaryContainerOpacity012,
    required this.stateLayersOnTertiaryContainerOpacity016,
    required this.stateLayersOnTertiaryFixedOpacity008,
    required this.stateLayersOnTertiaryFixedOpacity012,
    required this.stateLayersOnTertiaryFixedOpacity016,
    required this.stateLayersOnTertiaryFixedVariantOpacity008,
    required this.stateLayersOnTertiaryFixedVariantOpacity012,
    required this.stateLayersOnTertiaryFixedVariantOpacity016,
    required this.stateLayersOnTertiaryOpacity008,
    required this.stateLayersOnTertiaryOpacity012,
    required this.stateLayersOnTertiaryOpacity016,
    required this.stateLayersOnWarnContainerOpacity008,
    required this.stateLayersOnWarnContainerOpacity012,
    required this.stateLayersOnWarnContainerOpacity016,
    required this.stateLayersOnWarnOpacity008,
    required this.stateLayersOnWarnOpacity012,
    required this.stateLayersOnWarnOpacity016,
    required this.stateLayersOutlineOpacity008,
    required this.stateLayersOutlineOpacity012,
    required this.stateLayersOutlineOpacity016,
    required this.stateLayersOutlineVariantOpacity008,
    required this.stateLayersOutlineVariantOpacity012,
    required this.stateLayersOutlineVariantOpacity016,
    required this.stateLayersPrimaryContainerOpacity008,
    required this.stateLayersPrimaryContainerOpacity012,
    required this.stateLayersPrimaryContainerOpacity016,
    required this.stateLayersPrimaryFixedDimOpacity008,
    required this.stateLayersPrimaryFixedDimOpacity012,
    required this.stateLayersPrimaryFixedDimOpacity016,
    required this.stateLayersPrimaryFixedOpacity008,
    required this.stateLayersPrimaryFixedOpacity012,
    required this.stateLayersPrimaryFixedOpacity016,
    required this.stateLayersPrimaryOpacity008,
    required this.stateLayersPrimaryOpacity012,
    required this.stateLayersPrimaryOpacity016,
    required this.stateLayersScrimOpacity008,
    required this.stateLayersScrimOpacity012,
    required this.stateLayersScrimOpacity016,
    required this.stateLayersSecondaryContainerOpacity008,
    required this.stateLayersSecondaryContainerOpacity012,
    required this.stateLayersSecondaryContainerOpacity016,
    required this.stateLayersSecondaryFixedDimOpacity008,
    required this.stateLayersSecondaryFixedDimOpacity012,
    required this.stateLayersSecondaryFixedDimOpacity016,
    required this.stateLayersSecondaryFixedOpacity008,
    required this.stateLayersSecondaryFixedOpacity012,
    required this.stateLayersSecondaryFixedOpacity016,
    required this.stateLayersSecondaryOpacity008,
    required this.stateLayersSecondaryOpacity012,
    required this.stateLayersSecondaryOpacity016,
    required this.stateLayersShadowOpacity008,
    required this.stateLayersShadowOpacity012,
    required this.stateLayersShadowOpacity016,
    required this.stateLayersSuccessContainerOpacity008,
    required this.stateLayersSuccessContainerOpacity012,
    required this.stateLayersSuccessContainerOpacity016,
    required this.stateLayersSuccessOpacity008,
    required this.stateLayersSuccessOpacity012,
    required this.stateLayersSuccessOpacity016,
    required this.stateLayersSurfaceBrightOpacity008,
    required this.stateLayersSurfaceBrightOpacity012,
    required this.stateLayersSurfaceBrightOpacity016,
    required this.stateLayersSurfaceContainerHighOpacity008,
    required this.stateLayersSurfaceContainerHighOpacity012,
    required this.stateLayersSurfaceContainerHighOpacity016,
    required this.stateLayersSurfaceContainerHighestOpacity008,
    required this.stateLayersSurfaceContainerHighestOpacity012,
    required this.stateLayersSurfaceContainerHighestOpacity016,
    required this.stateLayersSurfaceContainerLowOpacity008,
    required this.stateLayersSurfaceContainerLowOpacity012,
    required this.stateLayersSurfaceContainerLowOpacity016,
    required this.stateLayersSurfaceContainerLowestOpacity008,
    required this.stateLayersSurfaceContainerLowestOpacity012,
    required this.stateLayersSurfaceContainerLowestOpacity016,
    required this.stateLayersSurfaceContainerOpacity008,
    required this.stateLayersSurfaceContainerOpacity012,
    required this.stateLayersSurfaceContainerOpacity016,
    required this.stateLayersSurfaceDimOpacity008,
    required this.stateLayersSurfaceDimOpacity012,
    required this.stateLayersSurfaceDimOpacity016,
    required this.stateLayersSurfaceOpacity008,
    required this.stateLayersSurfaceOpacity012,
    required this.stateLayersSurfaceOpacity016,
    required this.stateLayersTertiaryContainerOpacity008,
    required this.stateLayersTertiaryContainerOpacity012,
    required this.stateLayersTertiaryContainerOpacity016,
    required this.stateLayersTertiaryFixedDimOpacity008,
    required this.stateLayersTertiaryFixedDimOpacity012,
    required this.stateLayersTertiaryFixedDimOpacity016,
    required this.stateLayersTertiaryFixedOpacity008,
    required this.stateLayersTertiaryFixedOpacity012,
    required this.stateLayersTertiaryFixedOpacity016,
    required this.stateLayersTertiaryOpacity008,
    required this.stateLayersTertiaryOpacity012,
    required this.stateLayersTertiaryOpacity016,
    required this.stateLayersWarnContainerOpacity008,
    required this.stateLayersWarnContainerOpacity012,
    required this.stateLayersWarnContainerOpacity016,
    required this.stateLayersWarnOpacity008,
    required this.stateLayersWarnOpacity012,
    required this.stateLayersWarnOpacity016,
    required this.sysError,
    required this.sysErrorContainer,
    required this.sysInverseOnSurface,
    required this.sysInversePrimary,
    required this.sysInverseSurface,
    required this.sysOnError,
    required this.sysOnErrorContainer,
    required this.sysOnPrimary,
    required this.sysOnPrimaryContainer,
    required this.sysOnPrimaryFixed,
    required this.sysOnPrimaryFixedVariant,
    required this.sysOnSecondary,
    required this.sysOnSecondaryContainer,
    required this.sysOnSecondaryFixed,
    required this.sysOnSecondaryFixedVariant,
    required this.sysOnSuccess,
    required this.sysOnSuccessContainer,
    required this.sysOnSurface,
    required this.sysOnSurfaceVariant,
    required this.sysOnTertiary,
    required this.sysOnTertiaryContainer,
    required this.sysOnTertiaryFixed,
    required this.sysOnTertiaryFixedVariant,
    required this.sysOnWarn,
    required this.sysOnWarnContainer,
    required this.sysOutline,
    required this.sysOutlineVariant,
    required this.sysPrimary,
    required this.sysPrimaryContainer,
    required this.sysPrimaryFixed,
    required this.sysPrimaryFixedDim,
    required this.sysScrim,
    required this.sysSecondary,
    required this.sysSecondaryContainer,
    required this.sysSecondaryFixed,
    required this.sysSecondaryFixedDim,
    required this.sysShadow,
    required this.sysSuccess,
    required this.sysSuccessContainer,
    required this.sysSurfaceTinted,
    required this.sysSurface,
    required this.sysSurfaceBright,
    required this.sysSurfaceContainer,
    required this.sysSurfaceContainerHigh,
    required this.sysSurfaceContainerHighest,
    required this.sysSurfaceContainerLow,
    required this.sysSurfaceContainerLowest,
    required this.sysSurfaceDim,
    required this.sysTertiary,
    required this.sysTertiaryContainer,
    required this.sysTertiaryFixed,
    required this.sysTertiaryFixedDim,
    required this.sysWarn,
    required this.sysWarnContainer,
    required this.aqua,
    required this.black,
    required this.blue,
    required this.cyan,
    required this.grape,
    required this.green,
    required this.lime,
    required this.magenta,
    required this.orange,
    required this.pink,
    required this.purple,
    required this.red,
    required this.white,
    required this.yellow,
    required this.onRed,
    required this.onOrange,
    required this.onYellow,
    required this.onLime,
    required this.onGreen,
    required this.onAqua,
    required this.onCyan,
    required this.onBlue,
    required this.onPurple,
    required this.onGrape,
    required this.onPink,
    required this.onMagenta,
  });

  final Color hyperlinkActive;
  final Color hyperlinkFocused;
  final Color hyperlinkHovered;
  final Color hyperlinkNormal;
  final Color hyperlinkVisited;
  final Color refErrorE0;
  final Color refErrorE10;
  final Color refErrorE100;
  final Color refErrorE15;
  final Color refErrorE2;
  final Color refErrorE20;
  final Color refErrorE30;
  final Color refErrorE4;
  final Color refErrorE40;
  final Color refErrorE50;
  final Color refErrorE6;
  final Color refErrorE60;
  final Color refErrorE70;
  final Color refErrorE8;
  final Color refErrorE80;
  final Color refErrorE85;
  final Color refErrorE90;
  final Color refErrorE93;
  final Color refErrorE95;
  final Color refErrorE98;
  final Color refErrorE99;
  final Color refNeutralN0;
  final Color refNeutralN10;
  final Color refNeutralN100;
  final Color refNeutralN15;
  final Color refNeutralN2;
  final Color refNeutralN20;
  final Color refNeutralN30;
  final Color refNeutralN4;
  final Color refNeutralN40;
  final Color refNeutralN50;
  final Color refNeutralN6;
  final Color refNeutralN60;
  final Color refNeutralN70;
  final Color refNeutralN8;
  final Color refNeutralN80;
  final Color refNeutralN85;
  final Color refNeutralN90;
  final Color refNeutralN93;
  final Color refNeutralN95;
  final Color refNeutralN98;
  final Color refNeutralN99;
  final Color refNeutralVariantNv0;
  final Color refNeutralVariantNv10;
  final Color refNeutralVariantNv100;
  final Color refNeutralVariantNv15;
  final Color refNeutralVariantNv2;
  final Color refNeutralVariantNv20;
  final Color refNeutralVariantNv30;
  final Color refNeutralVariantNv4;
  final Color refNeutralVariantNv40;
  final Color refNeutralVariantNv50;
  final Color refNeutralVariantNv6;
  final Color refNeutralVariantNv60;
  final Color refNeutralVariantNv70;
  final Color refNeutralVariantNv8;
  final Color refNeutralVariantNv80;
  final Color refNeutralVariantNv85;
  final Color refNeutralVariantNv90;
  final Color refNeutralVariantNv93;
  final Color refNeutralVariantNv95;
  final Color refNeutralVariantNv98;
  final Color refNeutralVariantNv99;
  final Color refPrimaryP0;
  final Color refPrimaryP10;
  final Color refPrimaryP100;
  final Color refPrimaryP15;
  final Color refPrimaryP2;
  final Color refPrimaryP20;
  final Color refPrimaryP30;
  final Color refPrimaryP4;
  final Color refPrimaryP40;
  final Color refPrimaryP50;
  final Color refPrimaryP6;
  final Color refPrimaryP60;
  final Color refPrimaryP70;
  final Color refPrimaryP8;
  final Color refPrimaryP80;
  final Color refPrimaryP85;
  final Color refPrimaryP90;
  final Color refPrimaryP93;
  final Color refPrimaryP95;
  final Color refPrimaryP98;
  final Color refPrimaryP99;
  final Color refSecondaryS0;
  final Color refSecondaryS10;
  final Color refSecondaryS100;
  final Color refSecondaryS15;
  final Color refSecondaryS2;
  final Color refSecondaryS20;
  final Color refSecondaryS30;
  final Color refSecondaryS4;
  final Color refSecondaryS40;
  final Color refSecondaryS50;
  final Color refSecondaryS6;
  final Color refSecondaryS60;
  final Color refSecondaryS70;
  final Color refSecondaryS8;
  final Color refSecondaryS80;
  final Color refSecondaryS85;
  final Color refSecondaryS90;
  final Color refSecondaryS93;
  final Color refSecondaryS95;
  final Color refSecondaryS98;
  final Color refSecondaryS99;
  final Color refSuccessU0;
  final Color refSuccessU10;
  final Color refSuccessU100;
  final Color refSuccessU15;
  final Color refSuccessU2;
  final Color refSuccessU20;
  final Color refSuccessU30;
  final Color refSuccessU4;
  final Color refSuccessU40;
  final Color refSuccessU50;
  final Color refSuccessU6;
  final Color refSuccessU60;
  final Color refSuccessU70;
  final Color refSuccessU8;
  final Color refSuccessU80;
  final Color refSuccessU85;
  final Color refSuccessU90;
  final Color refSuccessU93;
  final Color refSuccessU95;
  final Color refSuccessU98;
  final Color refSuccessU99;
  final Color refTertiaryT0;
  final Color refTertiaryT10;
  final Color refTertiaryT100;
  final Color refTertiaryT15;
  final Color refTertiaryT2;
  final Color refTertiaryT20;
  final Color refTertiaryT30;
  final Color refTertiaryT4;
  final Color refTertiaryT40;
  final Color refTertiaryT50;
  final Color refTertiaryT6;
  final Color refTertiaryT60;
  final Color refTertiaryT70;
  final Color refTertiaryT8;
  final Color refTertiaryT80;
  final Color refTertiaryT85;
  final Color refTertiaryT90;
  final Color refTertiaryT93;
  final Color refTertiaryT95;
  final Color refTertiaryT98;
  final Color refTertiaryT99;
  final Color refWarnW0;
  final Color refWarnW10;
  final Color refWarnW100;
  final Color refWarnW15;
  final Color refWarnW2;
  final Color refWarnW20;
  final Color refWarnW30;
  final Color refWarnW4;
  final Color refWarnW40;
  final Color refWarnW50;
  final Color refWarnW6;
  final Color refWarnW60;
  final Color refWarnW70;
  final Color refWarnW8;
  final Color refWarnW80;
  final Color refWarnW85;
  final Color refWarnW90;
  final Color refWarnW93;
  final Color refWarnW95;
  final Color refWarnW98;
  final Color refWarnW99;
  final Color stateLayersErrorContainerOpacity008;
  final Color stateLayersErrorContainerOpacity012;
  final Color stateLayersErrorContainerOpacity016;
  final Color stateLayersErrorOpacity008;
  final Color stateLayersErrorOpacity012;
  final Color stateLayersErrorOpacity016;
  final Color stateLayersInverseOnSurfaceOpacity008;
  final Color stateLayersInverseOnSurfaceOpacity012;
  final Color stateLayersInverseOnSurfaceOpacity016;
  final Color stateLayersInversePrimaryOpacity008;
  final Color stateLayersInversePrimaryOpacity012;
  final Color stateLayersInversePrimaryOpacity016;
  final Color stateLayersInverseSurfaceOpacity008;
  final Color stateLayersInverseSurfaceOpacity012;
  final Color stateLayersInverseSurfaceOpacity016;
  final Color stateLayersOnErrorContainerOpacity008;
  final Color stateLayersOnErrorContainerOpacity012;
  final Color stateLayersOnErrorContainerOpacity016;
  final Color stateLayersOnErrorOpacity008;
  final Color stateLayersOnErrorOpacity012;
  final Color stateLayersOnErrorOpacity016;
  final Color stateLayersOnPrimaryContainerOpacity008;
  final Color stateLayersOnPrimaryContainerOpacity012;
  final Color stateLayersOnPrimaryContainerOpacity016;
  final Color stateLayersOnPrimaryFixedOpacity008;
  final Color stateLayersOnPrimaryFixedOpacity012;
  final Color stateLayersOnPrimaryFixedOpacity016;
  final Color stateLayersOnPrimaryFixedVariantOpacity008;
  final Color stateLayersOnPrimaryFixedVariantOpacity012;
  final Color stateLayersOnPrimaryFixedVariantOpacity016;
  final Color stateLayersOnPrimaryOpacity008;
  final Color stateLayersOnPrimaryOpacity012;
  final Color stateLayersOnPrimaryOpacity016;
  final Color stateLayersOnSecondaryContainerOpacity008;
  final Color stateLayersOnSecondaryContainerOpacity012;
  final Color stateLayersOnSecondaryContainerOpacity016;
  final Color stateLayersOnSecondaryFixedOpacity008;
  final Color stateLayersOnSecondaryFixedOpacity012;
  final Color stateLayersOnSecondaryFixedOpacity016;
  final Color stateLayersOnSecondaryFixedVariantOpacity008;
  final Color stateLayersOnSecondaryFixedVariantOpacity012;
  final Color stateLayersOnSecondaryFixedVariantOpacity016;
  final Color stateLayersOnSecondaryOpacity008;
  final Color stateLayersOnSecondaryOpacity012;
  final Color stateLayersOnSecondaryOpacity016;
  final Color stateLayersOnSuccessContainerOpacity008;
  final Color stateLayersOnSuccessContainerOpacity012;
  final Color stateLayersOnSuccessContainerOpacity016;
  final Color stateLayersOnSuccessOpacity008;
  final Color stateLayersOnSuccessOpacity012;
  final Color stateLayersOnSuccessOpacity016;
  final Color stateLayersOnSurfaceOpacity008;
  final Color stateLayersOnSurfaceOpacity012;
  final Color stateLayersOnSurfaceOpacity016;
  final Color stateLayersOnSurfaceVariantOpacity008;
  final Color stateLayersOnSurfaceVariantOpacity012;
  final Color stateLayersOnSurfaceVariantOpacity016;
  final Color stateLayersOnTertiaryContainerOpacity008;
  final Color stateLayersOnTertiaryContainerOpacity012;
  final Color stateLayersOnTertiaryContainerOpacity016;
  final Color stateLayersOnTertiaryFixedOpacity008;
  final Color stateLayersOnTertiaryFixedOpacity012;
  final Color stateLayersOnTertiaryFixedOpacity016;
  final Color stateLayersOnTertiaryFixedVariantOpacity008;
  final Color stateLayersOnTertiaryFixedVariantOpacity012;
  final Color stateLayersOnTertiaryFixedVariantOpacity016;
  final Color stateLayersOnTertiaryOpacity008;
  final Color stateLayersOnTertiaryOpacity012;
  final Color stateLayersOnTertiaryOpacity016;
  final Color stateLayersOnWarnContainerOpacity008;
  final Color stateLayersOnWarnContainerOpacity012;
  final Color stateLayersOnWarnContainerOpacity016;
  final Color stateLayersOnWarnOpacity008;
  final Color stateLayersOnWarnOpacity012;
  final Color stateLayersOnWarnOpacity016;
  final Color stateLayersOutlineOpacity008;
  final Color stateLayersOutlineOpacity012;
  final Color stateLayersOutlineOpacity016;
  final Color stateLayersOutlineVariantOpacity008;
  final Color stateLayersOutlineVariantOpacity012;
  final Color stateLayersOutlineVariantOpacity016;
  final Color stateLayersPrimaryContainerOpacity008;
  final Color stateLayersPrimaryContainerOpacity012;
  final Color stateLayersPrimaryContainerOpacity016;
  final Color stateLayersPrimaryFixedDimOpacity008;
  final Color stateLayersPrimaryFixedDimOpacity012;
  final Color stateLayersPrimaryFixedDimOpacity016;
  final Color stateLayersPrimaryFixedOpacity008;
  final Color stateLayersPrimaryFixedOpacity012;
  final Color stateLayersPrimaryFixedOpacity016;
  final Color stateLayersPrimaryOpacity008;
  final Color stateLayersPrimaryOpacity012;
  final Color stateLayersPrimaryOpacity016;
  final Color stateLayersScrimOpacity008;
  final Color stateLayersScrimOpacity012;
  final Color stateLayersScrimOpacity016;
  final Color stateLayersSecondaryContainerOpacity008;
  final Color stateLayersSecondaryContainerOpacity012;
  final Color stateLayersSecondaryContainerOpacity016;
  final Color stateLayersSecondaryFixedDimOpacity008;
  final Color stateLayersSecondaryFixedDimOpacity012;
  final Color stateLayersSecondaryFixedDimOpacity016;
  final Color stateLayersSecondaryFixedOpacity008;
  final Color stateLayersSecondaryFixedOpacity012;
  final Color stateLayersSecondaryFixedOpacity016;
  final Color stateLayersSecondaryOpacity008;
  final Color stateLayersSecondaryOpacity012;
  final Color stateLayersSecondaryOpacity016;
  final Color stateLayersShadowOpacity008;
  final Color stateLayersShadowOpacity012;
  final Color stateLayersShadowOpacity016;
  final Color stateLayersSuccessContainerOpacity008;
  final Color stateLayersSuccessContainerOpacity012;
  final Color stateLayersSuccessContainerOpacity016;
  final Color stateLayersSuccessOpacity008;
  final Color stateLayersSuccessOpacity012;
  final Color stateLayersSuccessOpacity016;
  final Color stateLayersSurfaceBrightOpacity008;
  final Color stateLayersSurfaceBrightOpacity012;
  final Color stateLayersSurfaceBrightOpacity016;
  final Color stateLayersSurfaceContainerHighOpacity008;
  final Color stateLayersSurfaceContainerHighOpacity012;
  final Color stateLayersSurfaceContainerHighOpacity016;
  final Color stateLayersSurfaceContainerHighestOpacity008;
  final Color stateLayersSurfaceContainerHighestOpacity012;
  final Color stateLayersSurfaceContainerHighestOpacity016;
  final Color stateLayersSurfaceContainerLowOpacity008;
  final Color stateLayersSurfaceContainerLowOpacity012;
  final Color stateLayersSurfaceContainerLowOpacity016;
  final Color stateLayersSurfaceContainerLowestOpacity008;
  final Color stateLayersSurfaceContainerLowestOpacity012;
  final Color stateLayersSurfaceContainerLowestOpacity016;
  final Color stateLayersSurfaceContainerOpacity008;
  final Color stateLayersSurfaceContainerOpacity012;
  final Color stateLayersSurfaceContainerOpacity016;
  final Color stateLayersSurfaceDimOpacity008;
  final Color stateLayersSurfaceDimOpacity012;
  final Color stateLayersSurfaceDimOpacity016;
  final Color stateLayersSurfaceOpacity008;
  final Color stateLayersSurfaceOpacity012;
  final Color stateLayersSurfaceOpacity016;
  final Color stateLayersTertiaryContainerOpacity008;
  final Color stateLayersTertiaryContainerOpacity012;
  final Color stateLayersTertiaryContainerOpacity016;
  final Color stateLayersTertiaryFixedDimOpacity008;
  final Color stateLayersTertiaryFixedDimOpacity012;
  final Color stateLayersTertiaryFixedDimOpacity016;
  final Color stateLayersTertiaryFixedOpacity008;
  final Color stateLayersTertiaryFixedOpacity012;
  final Color stateLayersTertiaryFixedOpacity016;
  final Color stateLayersTertiaryOpacity008;
  final Color stateLayersTertiaryOpacity012;
  final Color stateLayersTertiaryOpacity016;
  final Color stateLayersWarnContainerOpacity008;
  final Color stateLayersWarnContainerOpacity012;
  final Color stateLayersWarnContainerOpacity016;
  final Color stateLayersWarnOpacity008;
  final Color stateLayersWarnOpacity012;
  final Color stateLayersWarnOpacity016;
  final Color sysError;
  final Color sysErrorContainer;
  final Color sysInverseOnSurface;
  final Color sysInversePrimary;
  final Color sysInverseSurface;
  final Color sysOnError;
  final Color sysOnErrorContainer;
  final Color sysOnPrimary;
  final Color sysOnPrimaryContainer;
  final Color sysOnPrimaryFixed;
  final Color sysOnPrimaryFixedVariant;
  final Color sysOnSecondary;
  final Color sysOnSecondaryContainer;
  final Color sysOnSecondaryFixed;
  final Color sysOnSecondaryFixedVariant;
  final Color sysOnSuccess;
  final Color sysOnSuccessContainer;
  final Color sysOnSurface;
  final Color sysOnSurfaceVariant;
  final Color sysOnTertiary;
  final Color sysOnTertiaryContainer;
  final Color sysOnTertiaryFixed;
  final Color sysOnTertiaryFixedVariant;
  final Color sysOnWarn;
  final Color sysOnWarnContainer;
  final Color sysOutline;
  final Color sysOutlineVariant;
  final Color sysPrimary;
  final Color sysPrimaryContainer;
  final Color sysPrimaryFixed;
  final Color sysPrimaryFixedDim;
  final Color sysScrim;
  final Color sysSecondary;
  final Color sysSecondaryContainer;
  final Color sysSecondaryFixed;
  final Color sysSecondaryFixedDim;
  final Color sysShadow;
  final Color sysSuccess;
  final Color sysSuccessContainer;
  final Color sysSurfaceTinted;
  final Color sysSurface;
  final Color sysSurfaceBright;
  final Color sysSurfaceContainer;
  final Color sysSurfaceContainerHigh;
  final Color sysSurfaceContainerHighest;
  final Color sysSurfaceContainerLow;
  final Color sysSurfaceContainerLowest;
  final Color sysSurfaceDim;
  final Color sysTertiary;
  final Color sysTertiaryContainer;
  final Color sysTertiaryFixed;
  final Color sysTertiaryFixedDim;
  final Color sysWarn;
  final Color sysWarnContainer;
  final Color aqua;
  final Color black;
  final Color blue;
  final Color cyan;
  final Color grape;
  final Color green;
  final Color lime;
  final Color magenta;
  final Color orange;
  final Color pink;
  final Color purple;
  final Color red;
  final Color white;
  final Color yellow;
  final Color onRed;
  final Color onOrange;
  final Color onYellow;
  final Color onLime;
  final Color onGreen;
  final Color onAqua;
  final Color onCyan;
  final Color onBlue;
  final Color onPurple;
  final Color onGrape;
  final Color onPink;
  final Color onMagenta;

  @override
  ThemeExtension<ColorsThemeExtension> copyWith({
    Color? hyperlinkActive,
    Color? hyperlinkFocused,
    Color? hyperlinkHovered,
    Color? hyperlinkNormal,
    Color? hyperlinkVisited,
    Color? refErrorE0,
    Color? refErrorE10,
    Color? refErrorE100,
    Color? refErrorE15,
    Color? refErrorE2,
    Color? refErrorE20,
    Color? refErrorE30,
    Color? refErrorE4,
    Color? refErrorE40,
    Color? refErrorE50,
    Color? refErrorE6,
    Color? refErrorE60,
    Color? refErrorE70,
    Color? refErrorE8,
    Color? refErrorE80,
    Color? refErrorE85,
    Color? refErrorE90,
    Color? refErrorE93,
    Color? refErrorE95,
    Color? refErrorE98,
    Color? refErrorE99,
    Color? refNeutralN0,
    Color? refNeutralN10,
    Color? refNeutralN100,
    Color? refNeutralN15,
    Color? refNeutralN2,
    Color? refNeutralN20,
    Color? refNeutralN30,
    Color? refNeutralN4,
    Color? refNeutralN40,
    Color? refNeutralN50,
    Color? refNeutralN6,
    Color? refNeutralN60,
    Color? refNeutralN70,
    Color? refNeutralN8,
    Color? refNeutralN80,
    Color? refNeutralN85,
    Color? refNeutralN90,
    Color? refNeutralN93,
    Color? refNeutralN95,
    Color? refNeutralN98,
    Color? refNeutralN99,
    Color? refNeutralVariantNv0,
    Color? refNeutralVariantNv10,
    Color? refNeutralVariantNv100,
    Color? refNeutralVariantNv15,
    Color? refNeutralVariantNv2,
    Color? refNeutralVariantNv20,
    Color? refNeutralVariantNv30,
    Color? refNeutralVariantNv4,
    Color? refNeutralVariantNv40,
    Color? refNeutralVariantNv50,
    Color? refNeutralVariantNv6,
    Color? refNeutralVariantNv60,
    Color? refNeutralVariantNv70,
    Color? refNeutralVariantNv8,
    Color? refNeutralVariantNv80,
    Color? refNeutralVariantNv85,
    Color? refNeutralVariantNv90,
    Color? refNeutralVariantNv93,
    Color? refNeutralVariantNv95,
    Color? refNeutralVariantNv98,
    Color? refNeutralVariantNv99,
    Color? refPrimaryP0,
    Color? refPrimaryP10,
    Color? refPrimaryP100,
    Color? refPrimaryP15,
    Color? refPrimaryP2,
    Color? refPrimaryP20,
    Color? refPrimaryP30,
    Color? refPrimaryP4,
    Color? refPrimaryP40,
    Color? refPrimaryP50,
    Color? refPrimaryP6,
    Color? refPrimaryP60,
    Color? refPrimaryP70,
    Color? refPrimaryP8,
    Color? refPrimaryP80,
    Color? refPrimaryP85,
    Color? refPrimaryP90,
    Color? refPrimaryP93,
    Color? refPrimaryP95,
    Color? refPrimaryP98,
    Color? refPrimaryP99,
    Color? refSecondaryS0,
    Color? refSecondaryS10,
    Color? refSecondaryS100,
    Color? refSecondaryS15,
    Color? refSecondaryS2,
    Color? refSecondaryS20,
    Color? refSecondaryS30,
    Color? refSecondaryS4,
    Color? refSecondaryS40,
    Color? refSecondaryS50,
    Color? refSecondaryS6,
    Color? refSecondaryS60,
    Color? refSecondaryS70,
    Color? refSecondaryS8,
    Color? refSecondaryS80,
    Color? refSecondaryS85,
    Color? refSecondaryS90,
    Color? refSecondaryS93,
    Color? refSecondaryS95,
    Color? refSecondaryS98,
    Color? refSecondaryS99,
    Color? refSuccessU0,
    Color? refSuccessU10,
    Color? refSuccessU100,
    Color? refSuccessU15,
    Color? refSuccessU2,
    Color? refSuccessU20,
    Color? refSuccessU30,
    Color? refSuccessU4,
    Color? refSuccessU40,
    Color? refSuccessU50,
    Color? refSuccessU6,
    Color? refSuccessU60,
    Color? refSuccessU70,
    Color? refSuccessU8,
    Color? refSuccessU80,
    Color? refSuccessU85,
    Color? refSuccessU90,
    Color? refSuccessU93,
    Color? refSuccessU95,
    Color? refSuccessU98,
    Color? refSuccessU99,
    Color? refTertiaryT0,
    Color? refTertiaryT10,
    Color? refTertiaryT100,
    Color? refTertiaryT15,
    Color? refTertiaryT2,
    Color? refTertiaryT20,
    Color? refTertiaryT30,
    Color? refTertiaryT4,
    Color? refTertiaryT40,
    Color? refTertiaryT50,
    Color? refTertiaryT6,
    Color? refTertiaryT60,
    Color? refTertiaryT70,
    Color? refTertiaryT8,
    Color? refTertiaryT80,
    Color? refTertiaryT85,
    Color? refTertiaryT90,
    Color? refTertiaryT93,
    Color? refTertiaryT95,
    Color? refTertiaryT98,
    Color? refTertiaryT99,
    Color? refWarnW0,
    Color? refWarnW10,
    Color? refWarnW100,
    Color? refWarnW15,
    Color? refWarnW2,
    Color? refWarnW20,
    Color? refWarnW30,
    Color? refWarnW4,
    Color? refWarnW40,
    Color? refWarnW50,
    Color? refWarnW6,
    Color? refWarnW60,
    Color? refWarnW70,
    Color? refWarnW8,
    Color? refWarnW80,
    Color? refWarnW85,
    Color? refWarnW90,
    Color? refWarnW93,
    Color? refWarnW95,
    Color? refWarnW98,
    Color? refWarnW99,
    Color? stateLayersErrorContainerOpacity008,
    Color? stateLayersErrorContainerOpacity012,
    Color? stateLayersErrorContainerOpacity016,
    Color? stateLayersErrorOpacity008,
    Color? stateLayersErrorOpacity012,
    Color? stateLayersErrorOpacity016,
    Color? stateLayersInverseOnSurfaceOpacity008,
    Color? stateLayersInverseOnSurfaceOpacity012,
    Color? stateLayersInverseOnSurfaceOpacity016,
    Color? stateLayersInversePrimaryOpacity008,
    Color? stateLayersInversePrimaryOpacity012,
    Color? stateLayersInversePrimaryOpacity016,
    Color? stateLayersInverseSurfaceOpacity008,
    Color? stateLayersInverseSurfaceOpacity012,
    Color? stateLayersInverseSurfaceOpacity016,
    Color? stateLayersOnErrorContainerOpacity008,
    Color? stateLayersOnErrorContainerOpacity012,
    Color? stateLayersOnErrorContainerOpacity016,
    Color? stateLayersOnErrorOpacity008,
    Color? stateLayersOnErrorOpacity012,
    Color? stateLayersOnErrorOpacity016,
    Color? stateLayersOnPrimaryContainerOpacity008,
    Color? stateLayersOnPrimaryContainerOpacity012,
    Color? stateLayersOnPrimaryContainerOpacity016,
    Color? stateLayersOnPrimaryFixedOpacity008,
    Color? stateLayersOnPrimaryFixedOpacity012,
    Color? stateLayersOnPrimaryFixedOpacity016,
    Color? stateLayersOnPrimaryFixedVariantOpacity008,
    Color? stateLayersOnPrimaryFixedVariantOpacity012,
    Color? stateLayersOnPrimaryFixedVariantOpacity016,
    Color? stateLayersOnPrimaryOpacity008,
    Color? stateLayersOnPrimaryOpacity012,
    Color? stateLayersOnPrimaryOpacity016,
    Color? stateLayersOnSecondaryContainerOpacity008,
    Color? stateLayersOnSecondaryContainerOpacity012,
    Color? stateLayersOnSecondaryContainerOpacity016,
    Color? stateLayersOnSecondaryFixedOpacity008,
    Color? stateLayersOnSecondaryFixedOpacity012,
    Color? stateLayersOnSecondaryFixedOpacity016,
    Color? stateLayersOnSecondaryFixedVariantOpacity008,
    Color? stateLayersOnSecondaryFixedVariantOpacity012,
    Color? stateLayersOnSecondaryFixedVariantOpacity016,
    Color? stateLayersOnSecondaryOpacity008,
    Color? stateLayersOnSecondaryOpacity012,
    Color? stateLayersOnSecondaryOpacity016,
    Color? stateLayersOnSuccessContainerOpacity008,
    Color? stateLayersOnSuccessContainerOpacity012,
    Color? stateLayersOnSuccessContainerOpacity016,
    Color? stateLayersOnSuccessOpacity008,
    Color? stateLayersOnSuccessOpacity012,
    Color? stateLayersOnSuccessOpacity016,
    Color? stateLayersOnSurfaceOpacity008,
    Color? stateLayersOnSurfaceOpacity012,
    Color? stateLayersOnSurfaceOpacity016,
    Color? stateLayersOnSurfaceVariantOpacity008,
    Color? stateLayersOnSurfaceVariantOpacity012,
    Color? stateLayersOnSurfaceVariantOpacity016,
    Color? stateLayersOnTertiaryContainerOpacity008,
    Color? stateLayersOnTertiaryContainerOpacity012,
    Color? stateLayersOnTertiaryContainerOpacity016,
    Color? stateLayersOnTertiaryFixedOpacity008,
    Color? stateLayersOnTertiaryFixedOpacity012,
    Color? stateLayersOnTertiaryFixedOpacity016,
    Color? stateLayersOnTertiaryFixedVariantOpacity008,
    Color? stateLayersOnTertiaryFixedVariantOpacity012,
    Color? stateLayersOnTertiaryFixedVariantOpacity016,
    Color? stateLayersOnTertiaryOpacity008,
    Color? stateLayersOnTertiaryOpacity012,
    Color? stateLayersOnTertiaryOpacity016,
    Color? stateLayersOnWarnContainerOpacity008,
    Color? stateLayersOnWarnContainerOpacity012,
    Color? stateLayersOnWarnContainerOpacity016,
    Color? stateLayersOnWarnOpacity008,
    Color? stateLayersOnWarnOpacity012,
    Color? stateLayersOnWarnOpacity016,
    Color? stateLayersOutlineOpacity008,
    Color? stateLayersOutlineOpacity012,
    Color? stateLayersOutlineOpacity016,
    Color? stateLayersOutlineVariantOpacity008,
    Color? stateLayersOutlineVariantOpacity012,
    Color? stateLayersOutlineVariantOpacity016,
    Color? stateLayersPrimaryContainerOpacity008,
    Color? stateLayersPrimaryContainerOpacity012,
    Color? stateLayersPrimaryContainerOpacity016,
    Color? stateLayersPrimaryFixedDimOpacity008,
    Color? stateLayersPrimaryFixedDimOpacity012,
    Color? stateLayersPrimaryFixedDimOpacity016,
    Color? stateLayersPrimaryFixedOpacity008,
    Color? stateLayersPrimaryFixedOpacity012,
    Color? stateLayersPrimaryFixedOpacity016,
    Color? stateLayersPrimaryOpacity008,
    Color? stateLayersPrimaryOpacity012,
    Color? stateLayersPrimaryOpacity016,
    Color? stateLayersScrimOpacity008,
    Color? stateLayersScrimOpacity012,
    Color? stateLayersScrimOpacity016,
    Color? stateLayersSecondaryContainerOpacity008,
    Color? stateLayersSecondaryContainerOpacity012,
    Color? stateLayersSecondaryContainerOpacity016,
    Color? stateLayersSecondaryFixedDimOpacity008,
    Color? stateLayersSecondaryFixedDimOpacity012,
    Color? stateLayersSecondaryFixedDimOpacity016,
    Color? stateLayersSecondaryFixedOpacity008,
    Color? stateLayersSecondaryFixedOpacity012,
    Color? stateLayersSecondaryFixedOpacity016,
    Color? stateLayersSecondaryOpacity008,
    Color? stateLayersSecondaryOpacity012,
    Color? stateLayersSecondaryOpacity016,
    Color? stateLayersShadowOpacity008,
    Color? stateLayersShadowOpacity012,
    Color? stateLayersShadowOpacity016,
    Color? stateLayersSuccessContainerOpacity008,
    Color? stateLayersSuccessContainerOpacity012,
    Color? stateLayersSuccessContainerOpacity016,
    Color? stateLayersSuccessOpacity008,
    Color? stateLayersSuccessOpacity012,
    Color? stateLayersSuccessOpacity016,
    Color? stateLayersSurfaceBrightOpacity008,
    Color? stateLayersSurfaceBrightOpacity012,
    Color? stateLayersSurfaceBrightOpacity016,
    Color? stateLayersSurfaceContainerHighOpacity008,
    Color? stateLayersSurfaceContainerHighOpacity012,
    Color? stateLayersSurfaceContainerHighOpacity016,
    Color? stateLayersSurfaceContainerHighestOpacity008,
    Color? stateLayersSurfaceContainerHighestOpacity012,
    Color? stateLayersSurfaceContainerHighestOpacity016,
    Color? stateLayersSurfaceContainerLowOpacity008,
    Color? stateLayersSurfaceContainerLowOpacity012,
    Color? stateLayersSurfaceContainerLowOpacity016,
    Color? stateLayersSurfaceContainerLowestOpacity008,
    Color? stateLayersSurfaceContainerLowestOpacity012,
    Color? stateLayersSurfaceContainerLowestOpacity016,
    Color? stateLayersSurfaceContainerOpacity008,
    Color? stateLayersSurfaceContainerOpacity012,
    Color? stateLayersSurfaceContainerOpacity016,
    Color? stateLayersSurfaceDimOpacity008,
    Color? stateLayersSurfaceDimOpacity012,
    Color? stateLayersSurfaceDimOpacity016,
    Color? stateLayersSurfaceOpacity008,
    Color? stateLayersSurfaceOpacity012,
    Color? stateLayersSurfaceOpacity016,
    Color? stateLayersTertiaryContainerOpacity008,
    Color? stateLayersTertiaryContainerOpacity012,
    Color? stateLayersTertiaryContainerOpacity016,
    Color? stateLayersTertiaryFixedDimOpacity008,
    Color? stateLayersTertiaryFixedDimOpacity012,
    Color? stateLayersTertiaryFixedDimOpacity016,
    Color? stateLayersTertiaryFixedOpacity008,
    Color? stateLayersTertiaryFixedOpacity012,
    Color? stateLayersTertiaryFixedOpacity016,
    Color? stateLayersTertiaryOpacity008,
    Color? stateLayersTertiaryOpacity012,
    Color? stateLayersTertiaryOpacity016,
    Color? stateLayersWarnContainerOpacity008,
    Color? stateLayersWarnContainerOpacity012,
    Color? stateLayersWarnContainerOpacity016,
    Color? stateLayersWarnOpacity008,
    Color? stateLayersWarnOpacity012,
    Color? stateLayersWarnOpacity016,
    Color? sysError,
    Color? sysErrorContainer,
    Color? sysInverseOnSurface,
    Color? sysInversePrimary,
    Color? sysInverseSurface,
    Color? sysOnError,
    Color? sysOnErrorContainer,
    Color? sysOnPrimary,
    Color? sysOnPrimaryContainer,
    Color? sysOnPrimaryFixed,
    Color? sysOnPrimaryFixedVariant,
    Color? sysOnSecondary,
    Color? sysOnSecondaryContainer,
    Color? sysOnSecondaryFixed,
    Color? sysOnSecondaryFixedVariant,
    Color? sysOnSuccess,
    Color? sysOnSuccessContainer,
    Color? sysOnSurface,
    Color? sysOnSurfaceVariant,
    Color? sysOnTertiary,
    Color? sysOnTertiaryContainer,
    Color? sysOnTertiaryFixed,
    Color? sysOnTertiaryFixedVariant,
    Color? sysOnWarn,
    Color? sysOnWarnContainer,
    Color? sysOutline,
    Color? sysOutlineVariant,
    Color? sysPrimary,
    Color? sysPrimaryContainer,
    Color? sysPrimaryFixed,
    Color? sysPrimaryFixedDim,
    Color? sysScrim,
    Color? sysSecondary,
    Color? sysSecondaryContainer,
    Color? sysSecondaryFixed,
    Color? sysSecondaryFixedDim,
    Color? sysShadow,
    Color? sysSuccess,
    Color? sysSuccessContainer,
    Color? sysSurfaceTinted,
    Color? sysSurface,
    Color? sysSurfaceBright,
    Color? sysSurfaceContainer,
    Color? sysSurfaceContainerHigh,
    Color? sysSurfaceContainerHighest,
    Color? sysSurfaceContainerLow,
    Color? sysSurfaceContainerLowest,
    Color? sysSurfaceDim,
    Color? sysTertiary,
    Color? sysTertiaryContainer,
    Color? sysTertiaryFixed,
    Color? sysTertiaryFixedDim,
    Color? sysWarn,
    Color? sysWarnContainer,
    Color? aqua,
    Color? black,
    Color? blue,
    Color? cyan,
    Color? grape,
    Color? green,
    Color? lime,
    Color? magenta,
    Color? orange,
    Color? pink,
    Color? purple,
    Color? red,
    Color? white,
    Color? yellow,
    Color? onRed,
    Color? onOrange,
    Color? onYellow,
    Color? onLime,
    Color? onGreen,
    Color? onAqua,
    Color? onCyan,
    Color? onBlue,
    Color? onPurple,
    Color? onGrape,
    Color? onPink,
    Color? onMagenta,
  }) {
    return ColorsThemeExtension(
      hyperlinkActive: hyperlinkActive ?? this.hyperlinkActive,
      hyperlinkFocused: hyperlinkFocused ?? this.hyperlinkFocused,
      hyperlinkHovered: hyperlinkHovered ?? this.hyperlinkHovered,
      hyperlinkNormal: hyperlinkNormal ?? this.hyperlinkNormal,
      hyperlinkVisited: hyperlinkVisited ?? this.hyperlinkVisited,
      refErrorE0: refErrorE0 ?? this.refErrorE0,
      refErrorE10: refErrorE10 ?? this.refErrorE10,
      refErrorE100: refErrorE100 ?? this.refErrorE100,
      refErrorE15: refErrorE15 ?? this.refErrorE15,
      refErrorE2: refErrorE2 ?? this.refErrorE2,
      refErrorE20: refErrorE20 ?? this.refErrorE20,
      refErrorE30: refErrorE30 ?? this.refErrorE30,
      refErrorE4: refErrorE4 ?? this.refErrorE4,
      refErrorE40: refErrorE40 ?? this.refErrorE40,
      refErrorE50: refErrorE50 ?? this.refErrorE50,
      refErrorE6: refErrorE6 ?? this.refErrorE6,
      refErrorE60: refErrorE60 ?? this.refErrorE60,
      refErrorE70: refErrorE70 ?? this.refErrorE70,
      refErrorE8: refErrorE8 ?? this.refErrorE8,
      refErrorE80: refErrorE80 ?? this.refErrorE80,
      refErrorE85: refErrorE85 ?? this.refErrorE85,
      refErrorE90: refErrorE90 ?? this.refErrorE90,
      refErrorE93: refErrorE93 ?? this.refErrorE93,
      refErrorE95: refErrorE95 ?? this.refErrorE95,
      refErrorE98: refErrorE98 ?? this.refErrorE98,
      refErrorE99: refErrorE99 ?? this.refErrorE99,
      refNeutralN0: refNeutralN0 ?? this.refNeutralN0,
      refNeutralN10: refNeutralN10 ?? this.refNeutralN10,
      refNeutralN100: refNeutralN100 ?? this.refNeutralN100,
      refNeutralN15: refNeutralN15 ?? this.refNeutralN15,
      refNeutralN2: refNeutralN2 ?? this.refNeutralN2,
      refNeutralN20: refNeutralN20 ?? this.refNeutralN20,
      refNeutralN30: refNeutralN30 ?? this.refNeutralN30,
      refNeutralN4: refNeutralN4 ?? this.refNeutralN4,
      refNeutralN40: refNeutralN40 ?? this.refNeutralN40,
      refNeutralN50: refNeutralN50 ?? this.refNeutralN50,
      refNeutralN6: refNeutralN6 ?? this.refNeutralN6,
      refNeutralN60: refNeutralN60 ?? this.refNeutralN60,
      refNeutralN70: refNeutralN70 ?? this.refNeutralN70,
      refNeutralN8: refNeutralN8 ?? this.refNeutralN8,
      refNeutralN80: refNeutralN80 ?? this.refNeutralN80,
      refNeutralN85: refNeutralN85 ?? this.refNeutralN85,
      refNeutralN90: refNeutralN90 ?? this.refNeutralN90,
      refNeutralN93: refNeutralN93 ?? this.refNeutralN93,
      refNeutralN95: refNeutralN95 ?? this.refNeutralN95,
      refNeutralN98: refNeutralN98 ?? this.refNeutralN98,
      refNeutralN99: refNeutralN99 ?? this.refNeutralN99,
      refNeutralVariantNv0: refNeutralVariantNv0 ?? this.refNeutralVariantNv0,
      refNeutralVariantNv10:
          refNeutralVariantNv10 ?? this.refNeutralVariantNv10,
      refNeutralVariantNv100:
          refNeutralVariantNv100 ?? this.refNeutralVariantNv100,
      refNeutralVariantNv15:
          refNeutralVariantNv15 ?? this.refNeutralVariantNv15,
      refNeutralVariantNv2: refNeutralVariantNv2 ?? this.refNeutralVariantNv2,
      refNeutralVariantNv20:
          refNeutralVariantNv20 ?? this.refNeutralVariantNv20,
      refNeutralVariantNv30:
          refNeutralVariantNv30 ?? this.refNeutralVariantNv30,
      refNeutralVariantNv4: refNeutralVariantNv4 ?? this.refNeutralVariantNv4,
      refNeutralVariantNv40:
          refNeutralVariantNv40 ?? this.refNeutralVariantNv40,
      refNeutralVariantNv50:
          refNeutralVariantNv50 ?? this.refNeutralVariantNv50,
      refNeutralVariantNv6: refNeutralVariantNv6 ?? this.refNeutralVariantNv6,
      refNeutralVariantNv60:
          refNeutralVariantNv60 ?? this.refNeutralVariantNv60,
      refNeutralVariantNv70:
          refNeutralVariantNv70 ?? this.refNeutralVariantNv70,
      refNeutralVariantNv8: refNeutralVariantNv8 ?? this.refNeutralVariantNv8,
      refNeutralVariantNv80:
          refNeutralVariantNv80 ?? this.refNeutralVariantNv80,
      refNeutralVariantNv85:
          refNeutralVariantNv85 ?? this.refNeutralVariantNv85,
      refNeutralVariantNv90:
          refNeutralVariantNv90 ?? this.refNeutralVariantNv90,
      refNeutralVariantNv93:
          refNeutralVariantNv93 ?? this.refNeutralVariantNv93,
      refNeutralVariantNv95:
          refNeutralVariantNv95 ?? this.refNeutralVariantNv95,
      refNeutralVariantNv98:
          refNeutralVariantNv98 ?? this.refNeutralVariantNv98,
      refNeutralVariantNv99:
          refNeutralVariantNv99 ?? this.refNeutralVariantNv99,
      refPrimaryP0: refPrimaryP0 ?? this.refPrimaryP0,
      refPrimaryP10: refPrimaryP10 ?? this.refPrimaryP10,
      refPrimaryP100: refPrimaryP100 ?? this.refPrimaryP100,
      refPrimaryP15: refPrimaryP15 ?? this.refPrimaryP15,
      refPrimaryP2: refPrimaryP2 ?? this.refPrimaryP2,
      refPrimaryP20: refPrimaryP20 ?? this.refPrimaryP20,
      refPrimaryP30: refPrimaryP30 ?? this.refPrimaryP30,
      refPrimaryP4: refPrimaryP4 ?? this.refPrimaryP4,
      refPrimaryP40: refPrimaryP40 ?? this.refPrimaryP40,
      refPrimaryP50: refPrimaryP50 ?? this.refPrimaryP50,
      refPrimaryP6: refPrimaryP6 ?? this.refPrimaryP6,
      refPrimaryP60: refPrimaryP60 ?? this.refPrimaryP60,
      refPrimaryP70: refPrimaryP70 ?? this.refPrimaryP70,
      refPrimaryP8: refPrimaryP8 ?? this.refPrimaryP8,
      refPrimaryP80: refPrimaryP80 ?? this.refPrimaryP80,
      refPrimaryP85: refPrimaryP85 ?? this.refPrimaryP85,
      refPrimaryP90: refPrimaryP90 ?? this.refPrimaryP90,
      refPrimaryP93: refPrimaryP93 ?? this.refPrimaryP93,
      refPrimaryP95: refPrimaryP95 ?? this.refPrimaryP95,
      refPrimaryP98: refPrimaryP98 ?? this.refPrimaryP98,
      refPrimaryP99: refPrimaryP99 ?? this.refPrimaryP99,
      refSecondaryS0: refSecondaryS0 ?? this.refSecondaryS0,
      refSecondaryS10: refSecondaryS10 ?? this.refSecondaryS10,
      refSecondaryS100: refSecondaryS100 ?? this.refSecondaryS100,
      refSecondaryS15: refSecondaryS15 ?? this.refSecondaryS15,
      refSecondaryS2: refSecondaryS2 ?? this.refSecondaryS2,
      refSecondaryS20: refSecondaryS20 ?? this.refSecondaryS20,
      refSecondaryS30: refSecondaryS30 ?? this.refSecondaryS30,
      refSecondaryS4: refSecondaryS4 ?? this.refSecondaryS4,
      refSecondaryS40: refSecondaryS40 ?? this.refSecondaryS40,
      refSecondaryS50: refSecondaryS50 ?? this.refSecondaryS50,
      refSecondaryS6: refSecondaryS6 ?? this.refSecondaryS6,
      refSecondaryS60: refSecondaryS60 ?? this.refSecondaryS60,
      refSecondaryS70: refSecondaryS70 ?? this.refSecondaryS70,
      refSecondaryS8: refSecondaryS8 ?? this.refSecondaryS8,
      refSecondaryS80: refSecondaryS80 ?? this.refSecondaryS80,
      refSecondaryS85: refSecondaryS85 ?? this.refSecondaryS85,
      refSecondaryS90: refSecondaryS90 ?? this.refSecondaryS90,
      refSecondaryS93: refSecondaryS93 ?? this.refSecondaryS93,
      refSecondaryS95: refSecondaryS95 ?? this.refSecondaryS95,
      refSecondaryS98: refSecondaryS98 ?? this.refSecondaryS98,
      refSecondaryS99: refSecondaryS99 ?? this.refSecondaryS99,
      refSuccessU0: refSuccessU0 ?? this.refSuccessU0,
      refSuccessU10: refSuccessU10 ?? this.refSuccessU10,
      refSuccessU100: refSuccessU100 ?? this.refSuccessU100,
      refSuccessU15: refSuccessU15 ?? this.refSuccessU15,
      refSuccessU2: refSuccessU2 ?? this.refSuccessU2,
      refSuccessU20: refSuccessU20 ?? this.refSuccessU20,
      refSuccessU30: refSuccessU30 ?? this.refSuccessU30,
      refSuccessU4: refSuccessU4 ?? this.refSuccessU4,
      refSuccessU40: refSuccessU40 ?? this.refSuccessU40,
      refSuccessU50: refSuccessU50 ?? this.refSuccessU50,
      refSuccessU6: refSuccessU6 ?? this.refSuccessU6,
      refSuccessU60: refSuccessU60 ?? this.refSuccessU60,
      refSuccessU70: refSuccessU70 ?? this.refSuccessU70,
      refSuccessU8: refSuccessU8 ?? this.refSuccessU8,
      refSuccessU80: refSuccessU80 ?? this.refSuccessU80,
      refSuccessU85: refSuccessU85 ?? this.refSuccessU85,
      refSuccessU90: refSuccessU90 ?? this.refSuccessU90,
      refSuccessU93: refSuccessU93 ?? this.refSuccessU93,
      refSuccessU95: refSuccessU95 ?? this.refSuccessU95,
      refSuccessU98: refSuccessU98 ?? this.refSuccessU98,
      refSuccessU99: refSuccessU99 ?? this.refSuccessU99,
      refTertiaryT0: refTertiaryT0 ?? this.refTertiaryT0,
      refTertiaryT10: refTertiaryT10 ?? this.refTertiaryT10,
      refTertiaryT100: refTertiaryT100 ?? this.refTertiaryT100,
      refTertiaryT15: refTertiaryT15 ?? this.refTertiaryT15,
      refTertiaryT2: refTertiaryT2 ?? this.refTertiaryT2,
      refTertiaryT20: refTertiaryT20 ?? this.refTertiaryT20,
      refTertiaryT30: refTertiaryT30 ?? this.refTertiaryT30,
      refTertiaryT4: refTertiaryT4 ?? this.refTertiaryT4,
      refTertiaryT40: refTertiaryT40 ?? this.refTertiaryT40,
      refTertiaryT50: refTertiaryT50 ?? this.refTertiaryT50,
      refTertiaryT6: refTertiaryT6 ?? this.refTertiaryT6,
      refTertiaryT60: refTertiaryT60 ?? this.refTertiaryT60,
      refTertiaryT70: refTertiaryT70 ?? this.refTertiaryT70,
      refTertiaryT8: refTertiaryT8 ?? this.refTertiaryT8,
      refTertiaryT80: refTertiaryT80 ?? this.refTertiaryT80,
      refTertiaryT85: refTertiaryT85 ?? this.refTertiaryT85,
      refTertiaryT90: refTertiaryT90 ?? this.refTertiaryT90,
      refTertiaryT93: refTertiaryT93 ?? this.refTertiaryT93,
      refTertiaryT95: refTertiaryT95 ?? this.refTertiaryT95,
      refTertiaryT98: refTertiaryT98 ?? this.refTertiaryT98,
      refTertiaryT99: refTertiaryT99 ?? this.refTertiaryT99,
      refWarnW0: refWarnW0 ?? this.refWarnW0,
      refWarnW10: refWarnW10 ?? this.refWarnW10,
      refWarnW100: refWarnW100 ?? this.refWarnW100,
      refWarnW15: refWarnW15 ?? this.refWarnW15,
      refWarnW2: refWarnW2 ?? this.refWarnW2,
      refWarnW20: refWarnW20 ?? this.refWarnW20,
      refWarnW30: refWarnW30 ?? this.refWarnW30,
      refWarnW4: refWarnW4 ?? this.refWarnW4,
      refWarnW40: refWarnW40 ?? this.refWarnW40,
      refWarnW50: refWarnW50 ?? this.refWarnW50,
      refWarnW6: refWarnW6 ?? this.refWarnW6,
      refWarnW60: refWarnW60 ?? this.refWarnW60,
      refWarnW70: refWarnW70 ?? this.refWarnW70,
      refWarnW8: refWarnW8 ?? this.refWarnW8,
      refWarnW80: refWarnW80 ?? this.refWarnW80,
      refWarnW85: refWarnW85 ?? this.refWarnW85,
      refWarnW90: refWarnW90 ?? this.refWarnW90,
      refWarnW93: refWarnW93 ?? this.refWarnW93,
      refWarnW95: refWarnW95 ?? this.refWarnW95,
      refWarnW98: refWarnW98 ?? this.refWarnW98,
      refWarnW99: refWarnW99 ?? this.refWarnW99,
      stateLayersErrorContainerOpacity008:
          stateLayersErrorContainerOpacity008 ??
              this.stateLayersErrorContainerOpacity008,
      stateLayersErrorContainerOpacity012:
          stateLayersErrorContainerOpacity012 ??
              this.stateLayersErrorContainerOpacity012,
      stateLayersErrorContainerOpacity016:
          stateLayersErrorContainerOpacity016 ??
              this.stateLayersErrorContainerOpacity016,
      stateLayersErrorOpacity008:
          stateLayersErrorOpacity008 ?? this.stateLayersErrorOpacity008,
      stateLayersErrorOpacity012:
          stateLayersErrorOpacity012 ?? this.stateLayersErrorOpacity012,
      stateLayersErrorOpacity016:
          stateLayersErrorOpacity016 ?? this.stateLayersErrorOpacity016,
      stateLayersInverseOnSurfaceOpacity008:
          stateLayersInverseOnSurfaceOpacity008 ??
              this.stateLayersInverseOnSurfaceOpacity008,
      stateLayersInverseOnSurfaceOpacity012:
          stateLayersInverseOnSurfaceOpacity012 ??
              this.stateLayersInverseOnSurfaceOpacity012,
      stateLayersInverseOnSurfaceOpacity016:
          stateLayersInverseOnSurfaceOpacity016 ??
              this.stateLayersInverseOnSurfaceOpacity016,
      stateLayersInversePrimaryOpacity008:
          stateLayersInversePrimaryOpacity008 ??
              this.stateLayersInversePrimaryOpacity008,
      stateLayersInversePrimaryOpacity012:
          stateLayersInversePrimaryOpacity012 ??
              this.stateLayersInversePrimaryOpacity012,
      stateLayersInversePrimaryOpacity016:
          stateLayersInversePrimaryOpacity016 ??
              this.stateLayersInversePrimaryOpacity016,
      stateLayersInverseSurfaceOpacity008:
          stateLayersInverseSurfaceOpacity008 ??
              this.stateLayersInverseSurfaceOpacity008,
      stateLayersInverseSurfaceOpacity012:
          stateLayersInverseSurfaceOpacity012 ??
              this.stateLayersInverseSurfaceOpacity012,
      stateLayersInverseSurfaceOpacity016:
          stateLayersInverseSurfaceOpacity016 ??
              this.stateLayersInverseSurfaceOpacity016,
      stateLayersOnErrorContainerOpacity008:
          stateLayersOnErrorContainerOpacity008 ??
              this.stateLayersOnErrorContainerOpacity008,
      stateLayersOnErrorContainerOpacity012:
          stateLayersOnErrorContainerOpacity012 ??
              this.stateLayersOnErrorContainerOpacity012,
      stateLayersOnErrorContainerOpacity016:
          stateLayersOnErrorContainerOpacity016 ??
              this.stateLayersOnErrorContainerOpacity016,
      stateLayersOnErrorOpacity008:
          stateLayersOnErrorOpacity008 ?? this.stateLayersOnErrorOpacity008,
      stateLayersOnErrorOpacity012:
          stateLayersOnErrorOpacity012 ?? this.stateLayersOnErrorOpacity012,
      stateLayersOnErrorOpacity016:
          stateLayersOnErrorOpacity016 ?? this.stateLayersOnErrorOpacity016,
      stateLayersOnPrimaryContainerOpacity008:
          stateLayersOnPrimaryContainerOpacity008 ??
              this.stateLayersOnPrimaryContainerOpacity008,
      stateLayersOnPrimaryContainerOpacity012:
          stateLayersOnPrimaryContainerOpacity012 ??
              this.stateLayersOnPrimaryContainerOpacity012,
      stateLayersOnPrimaryContainerOpacity016:
          stateLayersOnPrimaryContainerOpacity016 ??
              this.stateLayersOnPrimaryContainerOpacity016,
      stateLayersOnPrimaryFixedOpacity008:
          stateLayersOnPrimaryFixedOpacity008 ??
              this.stateLayersOnPrimaryFixedOpacity008,
      stateLayersOnPrimaryFixedOpacity012:
          stateLayersOnPrimaryFixedOpacity012 ??
              this.stateLayersOnPrimaryFixedOpacity012,
      stateLayersOnPrimaryFixedOpacity016:
          stateLayersOnPrimaryFixedOpacity016 ??
              this.stateLayersOnPrimaryFixedOpacity016,
      stateLayersOnPrimaryFixedVariantOpacity008:
          stateLayersOnPrimaryFixedVariantOpacity008 ??
              this.stateLayersOnPrimaryFixedVariantOpacity008,
      stateLayersOnPrimaryFixedVariantOpacity012:
          stateLayersOnPrimaryFixedVariantOpacity012 ??
              this.stateLayersOnPrimaryFixedVariantOpacity012,
      stateLayersOnPrimaryFixedVariantOpacity016:
          stateLayersOnPrimaryFixedVariantOpacity016 ??
              this.stateLayersOnPrimaryFixedVariantOpacity016,
      stateLayersOnPrimaryOpacity008:
          stateLayersOnPrimaryOpacity008 ?? this.stateLayersOnPrimaryOpacity008,
      stateLayersOnPrimaryOpacity012:
          stateLayersOnPrimaryOpacity012 ?? this.stateLayersOnPrimaryOpacity012,
      stateLayersOnPrimaryOpacity016:
          stateLayersOnPrimaryOpacity016 ?? this.stateLayersOnPrimaryOpacity016,
      stateLayersOnSecondaryContainerOpacity008:
          stateLayersOnSecondaryContainerOpacity008 ??
              this.stateLayersOnSecondaryContainerOpacity008,
      stateLayersOnSecondaryContainerOpacity012:
          stateLayersOnSecondaryContainerOpacity012 ??
              this.stateLayersOnSecondaryContainerOpacity012,
      stateLayersOnSecondaryContainerOpacity016:
          stateLayersOnSecondaryContainerOpacity016 ??
              this.stateLayersOnSecondaryContainerOpacity016,
      stateLayersOnSecondaryFixedOpacity008:
          stateLayersOnSecondaryFixedOpacity008 ??
              this.stateLayersOnSecondaryFixedOpacity008,
      stateLayersOnSecondaryFixedOpacity012:
          stateLayersOnSecondaryFixedOpacity012 ??
              this.stateLayersOnSecondaryFixedOpacity012,
      stateLayersOnSecondaryFixedOpacity016:
          stateLayersOnSecondaryFixedOpacity016 ??
              this.stateLayersOnSecondaryFixedOpacity016,
      stateLayersOnSecondaryFixedVariantOpacity008:
          stateLayersOnSecondaryFixedVariantOpacity008 ??
              this.stateLayersOnSecondaryFixedVariantOpacity008,
      stateLayersOnSecondaryFixedVariantOpacity012:
          stateLayersOnSecondaryFixedVariantOpacity012 ??
              this.stateLayersOnSecondaryFixedVariantOpacity012,
      stateLayersOnSecondaryFixedVariantOpacity016:
          stateLayersOnSecondaryFixedVariantOpacity016 ??
              this.stateLayersOnSecondaryFixedVariantOpacity016,
      stateLayersOnSecondaryOpacity008: stateLayersOnSecondaryOpacity008 ??
          this.stateLayersOnSecondaryOpacity008,
      stateLayersOnSecondaryOpacity012: stateLayersOnSecondaryOpacity012 ??
          this.stateLayersOnSecondaryOpacity012,
      stateLayersOnSecondaryOpacity016: stateLayersOnSecondaryOpacity016 ??
          this.stateLayersOnSecondaryOpacity016,
      stateLayersOnSuccessContainerOpacity008:
          stateLayersOnSuccessContainerOpacity008 ??
              this.stateLayersOnSuccessContainerOpacity008,
      stateLayersOnSuccessContainerOpacity012:
          stateLayersOnSuccessContainerOpacity012 ??
              this.stateLayersOnSuccessContainerOpacity012,
      stateLayersOnSuccessContainerOpacity016:
          stateLayersOnSuccessContainerOpacity016 ??
              this.stateLayersOnSuccessContainerOpacity016,
      stateLayersOnSuccessOpacity008:
          stateLayersOnSuccessOpacity008 ?? this.stateLayersOnSuccessOpacity008,
      stateLayersOnSuccessOpacity012:
          stateLayersOnSuccessOpacity012 ?? this.stateLayersOnSuccessOpacity012,
      stateLayersOnSuccessOpacity016:
          stateLayersOnSuccessOpacity016 ?? this.stateLayersOnSuccessOpacity016,
      stateLayersOnSurfaceOpacity008:
          stateLayersOnSurfaceOpacity008 ?? this.stateLayersOnSurfaceOpacity008,
      stateLayersOnSurfaceOpacity012:
          stateLayersOnSurfaceOpacity012 ?? this.stateLayersOnSurfaceOpacity012,
      stateLayersOnSurfaceOpacity016:
          stateLayersOnSurfaceOpacity016 ?? this.stateLayersOnSurfaceOpacity016,
      stateLayersOnSurfaceVariantOpacity008:
          stateLayersOnSurfaceVariantOpacity008 ??
              this.stateLayersOnSurfaceVariantOpacity008,
      stateLayersOnSurfaceVariantOpacity012:
          stateLayersOnSurfaceVariantOpacity012 ??
              this.stateLayersOnSurfaceVariantOpacity012,
      stateLayersOnSurfaceVariantOpacity016:
          stateLayersOnSurfaceVariantOpacity016 ??
              this.stateLayersOnSurfaceVariantOpacity016,
      stateLayersOnTertiaryContainerOpacity008:
          stateLayersOnTertiaryContainerOpacity008 ??
              this.stateLayersOnTertiaryContainerOpacity008,
      stateLayersOnTertiaryContainerOpacity012:
          stateLayersOnTertiaryContainerOpacity012 ??
              this.stateLayersOnTertiaryContainerOpacity012,
      stateLayersOnTertiaryContainerOpacity016:
          stateLayersOnTertiaryContainerOpacity016 ??
              this.stateLayersOnTertiaryContainerOpacity016,
      stateLayersOnTertiaryFixedOpacity008:
          stateLayersOnTertiaryFixedOpacity008 ??
              this.stateLayersOnTertiaryFixedOpacity008,
      stateLayersOnTertiaryFixedOpacity012:
          stateLayersOnTertiaryFixedOpacity012 ??
              this.stateLayersOnTertiaryFixedOpacity012,
      stateLayersOnTertiaryFixedOpacity016:
          stateLayersOnTertiaryFixedOpacity016 ??
              this.stateLayersOnTertiaryFixedOpacity016,
      stateLayersOnTertiaryFixedVariantOpacity008:
          stateLayersOnTertiaryFixedVariantOpacity008 ??
              this.stateLayersOnTertiaryFixedVariantOpacity008,
      stateLayersOnTertiaryFixedVariantOpacity012:
          stateLayersOnTertiaryFixedVariantOpacity012 ??
              this.stateLayersOnTertiaryFixedVariantOpacity012,
      stateLayersOnTertiaryFixedVariantOpacity016:
          stateLayersOnTertiaryFixedVariantOpacity016 ??
              this.stateLayersOnTertiaryFixedVariantOpacity016,
      stateLayersOnTertiaryOpacity008: stateLayersOnTertiaryOpacity008 ??
          this.stateLayersOnTertiaryOpacity008,
      stateLayersOnTertiaryOpacity012: stateLayersOnTertiaryOpacity012 ??
          this.stateLayersOnTertiaryOpacity012,
      stateLayersOnTertiaryOpacity016: stateLayersOnTertiaryOpacity016 ??
          this.stateLayersOnTertiaryOpacity016,
      stateLayersOnWarnContainerOpacity008:
          stateLayersOnWarnContainerOpacity008 ??
              this.stateLayersOnWarnContainerOpacity008,
      stateLayersOnWarnContainerOpacity012:
          stateLayersOnWarnContainerOpacity012 ??
              this.stateLayersOnWarnContainerOpacity012,
      stateLayersOnWarnContainerOpacity016:
          stateLayersOnWarnContainerOpacity016 ??
              this.stateLayersOnWarnContainerOpacity016,
      stateLayersOnWarnOpacity008:
          stateLayersOnWarnOpacity008 ?? this.stateLayersOnWarnOpacity008,
      stateLayersOnWarnOpacity012:
          stateLayersOnWarnOpacity012 ?? this.stateLayersOnWarnOpacity012,
      stateLayersOnWarnOpacity016:
          stateLayersOnWarnOpacity016 ?? this.stateLayersOnWarnOpacity016,
      stateLayersOutlineOpacity008:
          stateLayersOutlineOpacity008 ?? this.stateLayersOutlineOpacity008,
      stateLayersOutlineOpacity012:
          stateLayersOutlineOpacity012 ?? this.stateLayersOutlineOpacity012,
      stateLayersOutlineOpacity016:
          stateLayersOutlineOpacity016 ?? this.stateLayersOutlineOpacity016,
      stateLayersOutlineVariantOpacity008:
          stateLayersOutlineVariantOpacity008 ??
              this.stateLayersOutlineVariantOpacity008,
      stateLayersOutlineVariantOpacity012:
          stateLayersOutlineVariantOpacity012 ??
              this.stateLayersOutlineVariantOpacity012,
      stateLayersOutlineVariantOpacity016:
          stateLayersOutlineVariantOpacity016 ??
              this.stateLayersOutlineVariantOpacity016,
      stateLayersPrimaryContainerOpacity008:
          stateLayersPrimaryContainerOpacity008 ??
              this.stateLayersPrimaryContainerOpacity008,
      stateLayersPrimaryContainerOpacity012:
          stateLayersPrimaryContainerOpacity012 ??
              this.stateLayersPrimaryContainerOpacity012,
      stateLayersPrimaryContainerOpacity016:
          stateLayersPrimaryContainerOpacity016 ??
              this.stateLayersPrimaryContainerOpacity016,
      stateLayersPrimaryFixedDimOpacity008:
          stateLayersPrimaryFixedDimOpacity008 ??
              this.stateLayersPrimaryFixedDimOpacity008,
      stateLayersPrimaryFixedDimOpacity012:
          stateLayersPrimaryFixedDimOpacity012 ??
              this.stateLayersPrimaryFixedDimOpacity012,
      stateLayersPrimaryFixedDimOpacity016:
          stateLayersPrimaryFixedDimOpacity016 ??
              this.stateLayersPrimaryFixedDimOpacity016,
      stateLayersPrimaryFixedOpacity008: stateLayersPrimaryFixedOpacity008 ??
          this.stateLayersPrimaryFixedOpacity008,
      stateLayersPrimaryFixedOpacity012: stateLayersPrimaryFixedOpacity012 ??
          this.stateLayersPrimaryFixedOpacity012,
      stateLayersPrimaryFixedOpacity016: stateLayersPrimaryFixedOpacity016 ??
          this.stateLayersPrimaryFixedOpacity016,
      stateLayersPrimaryOpacity008:
          stateLayersPrimaryOpacity008 ?? this.stateLayersPrimaryOpacity008,
      stateLayersPrimaryOpacity012:
          stateLayersPrimaryOpacity012 ?? this.stateLayersPrimaryOpacity012,
      stateLayersPrimaryOpacity016:
          stateLayersPrimaryOpacity016 ?? this.stateLayersPrimaryOpacity016,
      stateLayersScrimOpacity008:
          stateLayersScrimOpacity008 ?? this.stateLayersScrimOpacity008,
      stateLayersScrimOpacity012:
          stateLayersScrimOpacity012 ?? this.stateLayersScrimOpacity012,
      stateLayersScrimOpacity016:
          stateLayersScrimOpacity016 ?? this.stateLayersScrimOpacity016,
      stateLayersSecondaryContainerOpacity008:
          stateLayersSecondaryContainerOpacity008 ??
              this.stateLayersSecondaryContainerOpacity008,
      stateLayersSecondaryContainerOpacity012:
          stateLayersSecondaryContainerOpacity012 ??
              this.stateLayersSecondaryContainerOpacity012,
      stateLayersSecondaryContainerOpacity016:
          stateLayersSecondaryContainerOpacity016 ??
              this.stateLayersSecondaryContainerOpacity016,
      stateLayersSecondaryFixedDimOpacity008:
          stateLayersSecondaryFixedDimOpacity008 ??
              this.stateLayersSecondaryFixedDimOpacity008,
      stateLayersSecondaryFixedDimOpacity012:
          stateLayersSecondaryFixedDimOpacity012 ??
              this.stateLayersSecondaryFixedDimOpacity012,
      stateLayersSecondaryFixedDimOpacity016:
          stateLayersSecondaryFixedDimOpacity016 ??
              this.stateLayersSecondaryFixedDimOpacity016,
      stateLayersSecondaryFixedOpacity008:
          stateLayersSecondaryFixedOpacity008 ??
              this.stateLayersSecondaryFixedOpacity008,
      stateLayersSecondaryFixedOpacity012:
          stateLayersSecondaryFixedOpacity012 ??
              this.stateLayersSecondaryFixedOpacity012,
      stateLayersSecondaryFixedOpacity016:
          stateLayersSecondaryFixedOpacity016 ??
              this.stateLayersSecondaryFixedOpacity016,
      stateLayersSecondaryOpacity008:
          stateLayersSecondaryOpacity008 ?? this.stateLayersSecondaryOpacity008,
      stateLayersSecondaryOpacity012:
          stateLayersSecondaryOpacity012 ?? this.stateLayersSecondaryOpacity012,
      stateLayersSecondaryOpacity016:
          stateLayersSecondaryOpacity016 ?? this.stateLayersSecondaryOpacity016,
      stateLayersShadowOpacity008:
          stateLayersShadowOpacity008 ?? this.stateLayersShadowOpacity008,
      stateLayersShadowOpacity012:
          stateLayersShadowOpacity012 ?? this.stateLayersShadowOpacity012,
      stateLayersShadowOpacity016:
          stateLayersShadowOpacity016 ?? this.stateLayersShadowOpacity016,
      stateLayersSuccessContainerOpacity008:
          stateLayersSuccessContainerOpacity008 ??
              this.stateLayersSuccessContainerOpacity008,
      stateLayersSuccessContainerOpacity012:
          stateLayersSuccessContainerOpacity012 ??
              this.stateLayersSuccessContainerOpacity012,
      stateLayersSuccessContainerOpacity016:
          stateLayersSuccessContainerOpacity016 ??
              this.stateLayersSuccessContainerOpacity016,
      stateLayersSuccessOpacity008:
          stateLayersSuccessOpacity008 ?? this.stateLayersSuccessOpacity008,
      stateLayersSuccessOpacity012:
          stateLayersSuccessOpacity012 ?? this.stateLayersSuccessOpacity012,
      stateLayersSuccessOpacity016:
          stateLayersSuccessOpacity016 ?? this.stateLayersSuccessOpacity016,
      stateLayersSurfaceBrightOpacity008: stateLayersSurfaceBrightOpacity008 ??
          this.stateLayersSurfaceBrightOpacity008,
      stateLayersSurfaceBrightOpacity012: stateLayersSurfaceBrightOpacity012 ??
          this.stateLayersSurfaceBrightOpacity012,
      stateLayersSurfaceBrightOpacity016: stateLayersSurfaceBrightOpacity016 ??
          this.stateLayersSurfaceBrightOpacity016,
      stateLayersSurfaceContainerHighOpacity008:
          stateLayersSurfaceContainerHighOpacity008 ??
              this.stateLayersSurfaceContainerHighOpacity008,
      stateLayersSurfaceContainerHighOpacity012:
          stateLayersSurfaceContainerHighOpacity012 ??
              this.stateLayersSurfaceContainerHighOpacity012,
      stateLayersSurfaceContainerHighOpacity016:
          stateLayersSurfaceContainerHighOpacity016 ??
              this.stateLayersSurfaceContainerHighOpacity016,
      stateLayersSurfaceContainerHighestOpacity008:
          stateLayersSurfaceContainerHighestOpacity008 ??
              this.stateLayersSurfaceContainerHighestOpacity008,
      stateLayersSurfaceContainerHighestOpacity012:
          stateLayersSurfaceContainerHighestOpacity012 ??
              this.stateLayersSurfaceContainerHighestOpacity012,
      stateLayersSurfaceContainerHighestOpacity016:
          stateLayersSurfaceContainerHighestOpacity016 ??
              this.stateLayersSurfaceContainerHighestOpacity016,
      stateLayersSurfaceContainerLowOpacity008:
          stateLayersSurfaceContainerLowOpacity008 ??
              this.stateLayersSurfaceContainerLowOpacity008,
      stateLayersSurfaceContainerLowOpacity012:
          stateLayersSurfaceContainerLowOpacity012 ??
              this.stateLayersSurfaceContainerLowOpacity012,
      stateLayersSurfaceContainerLowOpacity016:
          stateLayersSurfaceContainerLowOpacity016 ??
              this.stateLayersSurfaceContainerLowOpacity016,
      stateLayersSurfaceContainerLowestOpacity008:
          stateLayersSurfaceContainerLowestOpacity008 ??
              this.stateLayersSurfaceContainerLowestOpacity008,
      stateLayersSurfaceContainerLowestOpacity012:
          stateLayersSurfaceContainerLowestOpacity012 ??
              this.stateLayersSurfaceContainerLowestOpacity012,
      stateLayersSurfaceContainerLowestOpacity016:
          stateLayersSurfaceContainerLowestOpacity016 ??
              this.stateLayersSurfaceContainerLowestOpacity016,
      stateLayersSurfaceContainerOpacity008:
          stateLayersSurfaceContainerOpacity008 ??
              this.stateLayersSurfaceContainerOpacity008,
      stateLayersSurfaceContainerOpacity012:
          stateLayersSurfaceContainerOpacity012 ??
              this.stateLayersSurfaceContainerOpacity012,
      stateLayersSurfaceContainerOpacity016:
          stateLayersSurfaceContainerOpacity016 ??
              this.stateLayersSurfaceContainerOpacity016,
      stateLayersSurfaceDimOpacity008: stateLayersSurfaceDimOpacity008 ??
          this.stateLayersSurfaceDimOpacity008,
      stateLayersSurfaceDimOpacity012: stateLayersSurfaceDimOpacity012 ??
          this.stateLayersSurfaceDimOpacity012,
      stateLayersSurfaceDimOpacity016: stateLayersSurfaceDimOpacity016 ??
          this.stateLayersSurfaceDimOpacity016,
      stateLayersSurfaceOpacity008:
          stateLayersSurfaceOpacity008 ?? this.stateLayersSurfaceOpacity008,
      stateLayersSurfaceOpacity012:
          stateLayersSurfaceOpacity012 ?? this.stateLayersSurfaceOpacity012,
      stateLayersSurfaceOpacity016:
          stateLayersSurfaceOpacity016 ?? this.stateLayersSurfaceOpacity016,
      stateLayersTertiaryContainerOpacity008:
          stateLayersTertiaryContainerOpacity008 ??
              this.stateLayersTertiaryContainerOpacity008,
      stateLayersTertiaryContainerOpacity012:
          stateLayersTertiaryContainerOpacity012 ??
              this.stateLayersTertiaryContainerOpacity012,
      stateLayersTertiaryContainerOpacity016:
          stateLayersTertiaryContainerOpacity016 ??
              this.stateLayersTertiaryContainerOpacity016,
      stateLayersTertiaryFixedDimOpacity008:
          stateLayersTertiaryFixedDimOpacity008 ??
              this.stateLayersTertiaryFixedDimOpacity008,
      stateLayersTertiaryFixedDimOpacity012:
          stateLayersTertiaryFixedDimOpacity012 ??
              this.stateLayersTertiaryFixedDimOpacity012,
      stateLayersTertiaryFixedDimOpacity016:
          stateLayersTertiaryFixedDimOpacity016 ??
              this.stateLayersTertiaryFixedDimOpacity016,
      stateLayersTertiaryFixedOpacity008: stateLayersTertiaryFixedOpacity008 ??
          this.stateLayersTertiaryFixedOpacity008,
      stateLayersTertiaryFixedOpacity012: stateLayersTertiaryFixedOpacity012 ??
          this.stateLayersTertiaryFixedOpacity012,
      stateLayersTertiaryFixedOpacity016: stateLayersTertiaryFixedOpacity016 ??
          this.stateLayersTertiaryFixedOpacity016,
      stateLayersTertiaryOpacity008:
          stateLayersTertiaryOpacity008 ?? this.stateLayersTertiaryOpacity008,
      stateLayersTertiaryOpacity012:
          stateLayersTertiaryOpacity012 ?? this.stateLayersTertiaryOpacity012,
      stateLayersTertiaryOpacity016: stateLayersTertiaryOpacity016 ??
          this.stateLayersSurfaceContainerOpacity016,
      stateLayersWarnContainerOpacity008: stateLayersWarnContainerOpacity008 ??
          this.stateLayersWarnContainerOpacity008,
      stateLayersWarnContainerOpacity012: stateLayersWarnContainerOpacity012 ??
          this.stateLayersWarnContainerOpacity012,
      stateLayersWarnContainerOpacity016: stateLayersWarnContainerOpacity016 ??
          this.stateLayersWarnContainerOpacity016,
      stateLayersWarnOpacity008:
          stateLayersWarnOpacity008 ?? this.stateLayersWarnOpacity008,
      stateLayersWarnOpacity012:
          stateLayersWarnOpacity012 ?? this.stateLayersWarnOpacity012,
      stateLayersWarnOpacity016:
          stateLayersWarnOpacity016 ?? this.stateLayersWarnOpacity016,
      sysError: sysError ?? this.sysError,
      sysErrorContainer: sysErrorContainer ?? this.sysErrorContainer,
      sysInverseOnSurface: sysInverseOnSurface ?? this.sysInverseOnSurface,
      sysInversePrimary: sysInversePrimary ?? this.sysInversePrimary,
      sysInverseSurface: sysInverseSurface ?? this.sysInverseSurface,
      sysOnError: sysOnError ?? this.sysOnError,
      sysOnErrorContainer: sysOnErrorContainer ?? this.sysOnErrorContainer,
      sysOnPrimary: sysOnPrimary ?? this.sysOnPrimary,
      sysOnPrimaryContainer:
          sysOnPrimaryContainer ?? this.sysOnPrimaryContainer,
      sysOnPrimaryFixed: sysOnPrimaryFixed ?? this.sysOnPrimaryFixed,
      sysOnPrimaryFixedVariant:
          sysOnPrimaryFixedVariant ?? this.sysOnPrimaryFixedVariant,
      sysOnSecondary: sysOnSecondary ?? this.sysOnSecondary,
      sysOnSecondaryContainer:
          sysOnSecondaryContainer ?? this.sysOnSecondaryContainer,
      sysOnSecondaryFixed: sysOnSecondaryFixed ?? this.sysOnSecondaryFixed,
      sysOnSecondaryFixedVariant:
          sysOnSecondaryFixedVariant ?? this.sysOnSecondaryFixedVariant,
      sysOnSuccess: sysOnSuccess ?? this.sysOnSuccess,
      sysOnSuccessContainer:
          sysOnSuccessContainer ?? this.sysOnSuccessContainer,
      sysOnSurface: sysOnSurface ?? this.sysOnSurface,
      sysOnSurfaceVariant: sysOnSurfaceVariant ?? this.sysOnSurfaceVariant,
      sysOnTertiary: sysOnTertiary ?? this.sysOnTertiary,
      sysOnTertiaryContainer:
          sysOnTertiaryContainer ?? this.sysOnTertiaryContainer,
      sysOnTertiaryFixed: sysOnTertiaryFixed ?? this.sysOnTertiaryFixed,
      sysOnTertiaryFixedVariant:
          sysOnTertiaryFixedVariant ?? this.sysOnTertiaryFixedVariant,
      sysOnWarn: sysOnWarn ?? this.sysOnWarn,
      sysOnWarnContainer: sysOnWarnContainer ?? this.sysOnWarnContainer,
      sysOutline: sysOutline ?? this.sysOutline,
      sysOutlineVariant: sysOutlineVariant ?? this.sysOutlineVariant,
      sysPrimary: sysPrimary ?? this.sysPrimary,
      sysPrimaryContainer: sysPrimaryContainer ?? this.sysPrimaryContainer,
      sysPrimaryFixed: sysPrimaryFixed ?? this.sysPrimaryFixed,
      sysPrimaryFixedDim: sysPrimaryFixedDim ?? this.sysPrimaryFixedDim,
      sysScrim: sysScrim ?? this.sysScrim,
      sysSecondary: sysSecondary ?? this.sysSecondary,
      sysSecondaryContainer:
          sysSecondaryContainer ?? this.sysSecondaryContainer,
      sysSecondaryFixed: sysSecondaryFixed ?? this.sysSecondaryFixed,
      sysSecondaryFixedDim: sysSecondaryFixedDim ?? this.sysSecondaryFixedDim,
      sysShadow: sysShadow ?? this.sysShadow,
      sysSuccess: sysSuccess ?? this.sysSuccess,
      sysSuccessContainer: sysSuccessContainer ?? this.sysSuccessContainer,
      sysSurfaceTinted: sysSurfaceTinted ?? this.sysSurfaceTinted,
      sysSurface: sysSurface ?? this.sysSurface,
      sysSurfaceBright: sysSurfaceBright ?? this.sysSurfaceBright,
      sysSurfaceContainer: sysSurfaceContainer ?? this.sysSurfaceContainer,
      sysSurfaceContainerHigh:
          sysSurfaceContainerHigh ?? this.sysSurfaceContainerHigh,
      sysSurfaceContainerHighest:
          sysSurfaceContainerHighest ?? this.sysSurfaceContainerHighest,
      sysSurfaceContainerLow:
          sysSurfaceContainerLow ?? this.sysSurfaceContainerLow,
      sysSurfaceContainerLowest:
          sysSurfaceContainerLowest ?? this.sysSurfaceContainerLowest,
      sysSurfaceDim: sysSurfaceDim ?? this.sysSurfaceDim,
      sysTertiary: sysTertiary ?? this.sysTertiary,
      sysTertiaryContainer: sysTertiaryContainer ?? this.sysTertiaryContainer,
      sysTertiaryFixed: sysTertiaryFixed ?? this.sysTertiaryFixed,
      sysTertiaryFixedDim: sysTertiaryFixedDim ?? this.sysTertiaryFixedDim,
      sysWarn: sysWarn ?? this.sysWarn,
      sysWarnContainer: sysWarnContainer ?? this.sysWarnContainer,
      aqua: aqua ?? this.aqua,
      black: black ?? this.black,
      blue: blue ?? this.blue,
      cyan: cyan ?? this.cyan,
      grape: grape ?? this.grape,
      green: green ?? this.green,
      lime: lime ?? this.lime,
      magenta: magenta ?? this.magenta,
      orange: orange ?? this.orange,
      pink: pink ?? this.pink,
      purple: purple ?? this.purple,
      red: red ?? this.red,
      white: white ?? this.white,
      yellow: yellow ?? this.yellow,
      onRed: onRed ?? this.onRed,
      onOrange: onOrange ?? this.onOrange,
      onYellow: onYellow ?? this.onYellow,
      onLime: onLime ?? this.onLime,
      onGreen: onGreen ?? this.onGreen,
      onAqua: onAqua ?? this.onAqua,
      onCyan: onCyan ?? this.onCyan,
      onBlue: onBlue ?? this.onBlue,
      onPurple: onPurple ?? this.onPurple,
      onGrape: onGrape ?? this.onGrape,
      onPink: onPink ?? this.onPink,
      onMagenta: onMagenta ?? this.onMagenta,
    );
  }

  @override
  ThemeExtension<ColorsThemeExtension> lerp(
      covariant ThemeExtension<ColorsThemeExtension>? other, double t) {
    if (other is! ColorsThemeExtension) {
      return this;
    }
    return ColorsThemeExtension(
      hyperlinkActive: Color.lerp(hyperlinkActive, other.hyperlinkActive, t)!,
      hyperlinkFocused:
          Color.lerp(hyperlinkFocused, other.hyperlinkFocused, t)!,
      hyperlinkHovered:
          Color.lerp(hyperlinkHovered, other.hyperlinkHovered, t)!,
      hyperlinkNormal: Color.lerp(hyperlinkNormal, other.hyperlinkNormal, t)!,
      hyperlinkVisited:
          Color.lerp(hyperlinkVisited, other.hyperlinkVisited, t)!,
      refErrorE0: Color.lerp(refErrorE0, other.refErrorE0, t)!,
      refErrorE10: Color.lerp(refErrorE10, other.refErrorE10, t)!,
      refErrorE100: Color.lerp(refErrorE100, other.refErrorE100, t)!,
      refErrorE15: Color.lerp(refErrorE15, other.refErrorE15, t)!,
      refErrorE2: Color.lerp(refErrorE2, other.refErrorE2, t)!,
      refErrorE20: Color.lerp(refErrorE20, other.refErrorE20, t)!,
      refErrorE30: Color.lerp(refErrorE30, other.refErrorE30, t)!,
      refErrorE4: Color.lerp(refErrorE4, other.refErrorE4, t)!,
      refErrorE40: Color.lerp(refErrorE40, other.refErrorE40, t)!,
      refErrorE50: Color.lerp(refErrorE50, other.refErrorE50, t)!,
      refErrorE6: Color.lerp(refErrorE6, other.refErrorE6, t)!,
      refErrorE60: Color.lerp(refErrorE60, other.refErrorE60, t)!,
      refErrorE70: Color.lerp(refErrorE70, other.refErrorE70, t)!,
      refErrorE8: Color.lerp(refErrorE8, other.refErrorE8, t)!,
      refErrorE80: Color.lerp(refErrorE80, other.refErrorE80, t)!,
      refErrorE85: Color.lerp(refErrorE85, other.refErrorE85, t)!,
      refErrorE90: Color.lerp(refErrorE90, other.refErrorE90, t)!,
      refErrorE93: Color.lerp(refErrorE93, other.refErrorE93, t)!,
      refErrorE95: Color.lerp(refErrorE95, other.refErrorE95, t)!,
      refErrorE98: Color.lerp(refErrorE98, other.refErrorE98, t)!,
      refErrorE99: Color.lerp(refErrorE99, other.refErrorE99, t)!,
      refNeutralN0: Color.lerp(refNeutralN0, other.refNeutralN0, t)!,
      refNeutralN10: Color.lerp(refNeutralN10, other.refNeutralN10, t)!,
      refNeutralN100: Color.lerp(refNeutralN100, other.refNeutralN100, t)!,
      refNeutralN15: Color.lerp(refNeutralN15, other.refNeutralN15, t)!,
      refNeutralN2: Color.lerp(refNeutralN2, other.refNeutralN2, t)!,
      refNeutralN20: Color.lerp(refNeutralN20, other.refNeutralN20, t)!,
      refNeutralN30: Color.lerp(refNeutralN30, other.refNeutralN30, t)!,
      refNeutralN4: Color.lerp(refNeutralN4, other.refNeutralN4, t)!,
      refNeutralN40: Color.lerp(refNeutralN40, other.refNeutralN40, t)!,
      refNeutralN50: Color.lerp(refNeutralN50, other.refNeutralN50, t)!,
      refNeutralN6: Color.lerp(refNeutralN6, other.refNeutralN6, t)!,
      refNeutralN60: Color.lerp(refNeutralN60, other.refNeutralN60, t)!,
      refNeutralN70: Color.lerp(refNeutralN70, other.refNeutralN70, t)!,
      refNeutralN8: Color.lerp(refNeutralN8, other.refNeutralN8, t)!,
      refNeutralN80: Color.lerp(refNeutralN80, other.refNeutralN80, t)!,
      refNeutralN85: Color.lerp(refNeutralN85, other.refNeutralN85, t)!,
      refNeutralN90: Color.lerp(refNeutralN90, other.refNeutralN90, t)!,
      refNeutralN93: Color.lerp(refNeutralN93, other.refNeutralN93, t)!,
      refNeutralN95: Color.lerp(refNeutralN95, other.refNeutralN95, t)!,
      refNeutralN98: Color.lerp(refNeutralN98, other.refNeutralN98, t)!,
      refNeutralN99: Color.lerp(refNeutralN99, other.refNeutralN99, t)!,
      refNeutralVariantNv0:
          Color.lerp(refNeutralVariantNv0, other.refNeutralVariantNv0, t)!,
      refNeutralVariantNv10:
          Color.lerp(refNeutralVariantNv10, other.refNeutralVariantNv10, t)!,
      refNeutralVariantNv100:
          Color.lerp(refNeutralVariantNv100, other.refNeutralVariantNv100, t)!,
      refNeutralVariantNv15:
          Color.lerp(refNeutralVariantNv15, other.refNeutralVariantNv15, t)!,
      refNeutralVariantNv2:
          Color.lerp(refNeutralVariantNv2, other.refNeutralVariantNv2, t)!,
      refNeutralVariantNv20:
          Color.lerp(refNeutralVariantNv20, other.refNeutralVariantNv20, t)!,
      refNeutralVariantNv30:
          Color.lerp(refNeutralVariantNv30, other.refNeutralVariantNv30, t)!,
      refNeutralVariantNv4:
          Color.lerp(refNeutralVariantNv4, other.refNeutralVariantNv4, t)!,
      refNeutralVariantNv40:
          Color.lerp(refNeutralVariantNv40, other.refNeutralVariantNv40, t)!,
      refNeutralVariantNv50:
          Color.lerp(refNeutralVariantNv50, other.refNeutralVariantNv50, t)!,
      refNeutralVariantNv6:
          Color.lerp(refNeutralVariantNv6, other.refNeutralVariantNv6, t)!,
      refNeutralVariantNv60:
          Color.lerp(refNeutralVariantNv60, other.refNeutralVariantNv60, t)!,
      refNeutralVariantNv70:
          Color.lerp(refNeutralVariantNv70, other.refNeutralVariantNv70, t)!,
      refNeutralVariantNv8:
          Color.lerp(refNeutralVariantNv8, other.refNeutralVariantNv8, t)!,
      refNeutralVariantNv80:
          Color.lerp(refNeutralVariantNv80, other.refNeutralVariantNv80, t)!,
      refNeutralVariantNv85:
          Color.lerp(refNeutralVariantNv85, other.refNeutralVariantNv85, t)!,
      refNeutralVariantNv90:
          Color.lerp(refNeutralVariantNv90, other.refNeutralVariantNv90, t)!,
      refNeutralVariantNv93:
          Color.lerp(refNeutralVariantNv93, other.refNeutralVariantNv93, t)!,
      refNeutralVariantNv95:
          Color.lerp(refNeutralVariantNv95, other.refNeutralVariantNv95, t)!,
      refNeutralVariantNv98:
          Color.lerp(refNeutralVariantNv98, other.refNeutralVariantNv98, t)!,
      refNeutralVariantNv99:
          Color.lerp(refNeutralVariantNv99, other.refNeutralVariantNv99, t)!,
      refPrimaryP0: Color.lerp(refPrimaryP0, other.refPrimaryP0, t)!,
      refPrimaryP10: Color.lerp(refPrimaryP10, other.refPrimaryP10, t)!,
      refPrimaryP100: Color.lerp(refPrimaryP100, other.refPrimaryP100, t)!,
      refPrimaryP15: Color.lerp(refPrimaryP15, other.refPrimaryP15, t)!,
      refPrimaryP2: Color.lerp(refPrimaryP2, other.refPrimaryP2, t)!,
      refPrimaryP20: Color.lerp(refPrimaryP20, other.refPrimaryP20, t)!,
      refPrimaryP30: Color.lerp(refPrimaryP30, other.refPrimaryP30, t)!,
      refPrimaryP4: Color.lerp(refPrimaryP4, other.refPrimaryP4, t)!,
      refPrimaryP40: Color.lerp(refPrimaryP40, other.refPrimaryP40, t)!,
      refPrimaryP50: Color.lerp(refPrimaryP50, other.refPrimaryP50, t)!,
      refPrimaryP6: Color.lerp(refPrimaryP6, other.refPrimaryP6, t)!,
      refPrimaryP60: Color.lerp(refPrimaryP60, other.refPrimaryP60, t)!,
      refPrimaryP70: Color.lerp(refPrimaryP70, other.refPrimaryP70, t)!,
      refPrimaryP8: Color.lerp(refPrimaryP8, other.refPrimaryP8, t)!,
      refPrimaryP80: Color.lerp(refPrimaryP80, other.refPrimaryP80, t)!,
      refPrimaryP85: Color.lerp(refPrimaryP85, other.refPrimaryP85, t)!,
      refPrimaryP90: Color.lerp(refPrimaryP90, other.refPrimaryP90, t)!,
      refPrimaryP93: Color.lerp(refPrimaryP93, other.refPrimaryP93, t)!,
      refPrimaryP95: Color.lerp(refPrimaryP95, other.refPrimaryP95, t)!,
      refPrimaryP98: Color.lerp(refPrimaryP98, other.refPrimaryP98, t)!,
      refPrimaryP99: Color.lerp(refPrimaryP99, other.refPrimaryP99, t)!,
      refSecondaryS0: Color.lerp(refSecondaryS0, other.refSecondaryS0, t)!,
      refSecondaryS10: Color.lerp(refSecondaryS10, other.refSecondaryS10, t)!,
      refSecondaryS100:
          Color.lerp(refSecondaryS100, other.refSecondaryS100, t)!,
      refSecondaryS15: Color.lerp(refSecondaryS15, other.refSecondaryS15, t)!,
      refSecondaryS2: Color.lerp(refSecondaryS2, other.refSecondaryS2, t)!,
      refSecondaryS20: Color.lerp(refSecondaryS20, other.refSecondaryS20, t)!,
      refSecondaryS30: Color.lerp(refSecondaryS30, other.refSecondaryS30, t)!,
      refSecondaryS4: Color.lerp(refSecondaryS4, other.refSecondaryS4, t)!,
      refSecondaryS40: Color.lerp(refSecondaryS40, other.refSecondaryS40, t)!,
      refSecondaryS50: Color.lerp(refSecondaryS50, other.refSecondaryS50, t)!,
      refSecondaryS6: Color.lerp(refSecondaryS6, other.refSecondaryS6, t)!,
      refSecondaryS60: Color.lerp(refSecondaryS60, other.refSecondaryS60, t)!,
      refSecondaryS70: Color.lerp(refSecondaryS70, other.refSecondaryS70, t)!,
      refSecondaryS8: Color.lerp(refSecondaryS8, other.refSecondaryS8, t)!,
      refSecondaryS80: Color.lerp(refSecondaryS80, other.refSecondaryS80, t)!,
      refSecondaryS85: Color.lerp(refSecondaryS85, other.refSecondaryS85, t)!,
      refSecondaryS90: Color.lerp(refSecondaryS90, other.refSecondaryS90, t)!,
      refSecondaryS93: Color.lerp(refSecondaryS93, other.refSecondaryS93, t)!,
      refSecondaryS95: Color.lerp(refSecondaryS95, other.refSecondaryS95, t)!,
      refSecondaryS98: Color.lerp(refSecondaryS98, other.refSecondaryS98, t)!,
      refSecondaryS99: Color.lerp(refSecondaryS99, other.refSecondaryS99, t)!,
      refSuccessU0: Color.lerp(refSuccessU0, other.refSuccessU0, t)!,
      refSuccessU10: Color.lerp(refSuccessU10, other.refSuccessU10, t)!,
      refSuccessU100: Color.lerp(refSuccessU100, other.refSuccessU100, t)!,
      refSuccessU15: Color.lerp(refSuccessU15, other.refSuccessU15, t)!,
      refSuccessU2: Color.lerp(refSuccessU2, other.refSuccessU2, t)!,
      refSuccessU20: Color.lerp(refSuccessU20, other.refSuccessU20, t)!,
      refSuccessU30: Color.lerp(refSuccessU30, other.refSuccessU30, t)!,
      refSuccessU4: Color.lerp(refSuccessU4, other.refSuccessU4, t)!,
      refSuccessU40: Color.lerp(refSuccessU40, other.refSuccessU40, t)!,
      refSuccessU50: Color.lerp(refSuccessU50, other.refSuccessU50, t)!,
      refSuccessU6: Color.lerp(refSuccessU6, other.refSuccessU6, t)!,
      refSuccessU60: Color.lerp(refSuccessU60, other.refSuccessU60, t)!,
      refSuccessU70: Color.lerp(refSuccessU70, other.refSuccessU70, t)!,
      refSuccessU8: Color.lerp(refSuccessU8, other.refSuccessU8, t)!,
      refSuccessU80: Color.lerp(refSuccessU80, other.refSuccessU80, t)!,
      refSuccessU85: Color.lerp(refSuccessU85, other.refSuccessU85, t)!,
      refSuccessU90: Color.lerp(refSuccessU90, other.refSuccessU90, t)!,
      refSuccessU93: Color.lerp(refSuccessU93, other.refSuccessU93, t)!,
      refSuccessU95: Color.lerp(refSuccessU95, other.refSuccessU95, t)!,
      refSuccessU98: Color.lerp(refSuccessU98, other.refSuccessU98, t)!,
      refSuccessU99: Color.lerp(refSuccessU99, other.refSuccessU99, t)!,
      refTertiaryT0: Color.lerp(refTertiaryT0, other.refTertiaryT0, t)!,
      refTertiaryT10: Color.lerp(refTertiaryT10, other.refTertiaryT10, t)!,
      refTertiaryT100: Color.lerp(refTertiaryT100, other.refTertiaryT100, t)!,
      refTertiaryT15: Color.lerp(refTertiaryT15, other.refTertiaryT15, t)!,
      refTertiaryT2: Color.lerp(refTertiaryT2, other.refTertiaryT2, t)!,
      refTertiaryT20: Color.lerp(refTertiaryT20, other.refTertiaryT20, t)!,
      refTertiaryT30: Color.lerp(refTertiaryT30, other.refTertiaryT30, t)!,
      refTertiaryT4: Color.lerp(refTertiaryT4, other.refTertiaryT4, t)!,
      refTertiaryT40: Color.lerp(refTertiaryT40, other.refTertiaryT40, t)!,
      refTertiaryT50: Color.lerp(refTertiaryT50, other.refTertiaryT50, t)!,
      refTertiaryT6: Color.lerp(refTertiaryT6, other.refTertiaryT6, t)!,
      refTertiaryT60: Color.lerp(refTertiaryT60, other.refTertiaryT60, t)!,
      refTertiaryT70: Color.lerp(refTertiaryT70, other.refTertiaryT70, t)!,
      refTertiaryT8: Color.lerp(refTertiaryT8, other.refTertiaryT8, t)!,
      refTertiaryT80: Color.lerp(refTertiaryT80, other.refTertiaryT80, t)!,
      refTertiaryT85: Color.lerp(refTertiaryT85, other.refTertiaryT85, t)!,
      refTertiaryT90: Color.lerp(refTertiaryT90, other.refTertiaryT90, t)!,
      refTertiaryT93: Color.lerp(refTertiaryT93, other.refTertiaryT93, t)!,
      refTertiaryT95: Color.lerp(refTertiaryT95, other.refTertiaryT95, t)!,
      refTertiaryT98: Color.lerp(refTertiaryT98, other.refTertiaryT98, t)!,
      refTertiaryT99: Color.lerp(refTertiaryT99, other.refTertiaryT99, t)!,
      refWarnW0: Color.lerp(refWarnW0, other.refWarnW0, t)!,
      refWarnW10: Color.lerp(refWarnW10, other.refWarnW10, t)!,
      refWarnW100: Color.lerp(refWarnW100, other.refWarnW100, t)!,
      refWarnW15: Color.lerp(refWarnW15, other.refWarnW15, t)!,
      refWarnW2: Color.lerp(refWarnW2, other.refWarnW2, t)!,
      refWarnW20: Color.lerp(refWarnW20, other.refWarnW20, t)!,
      refWarnW30: Color.lerp(refWarnW30, other.refWarnW30, t)!,
      refWarnW4: Color.lerp(refWarnW4, other.refWarnW4, t)!,
      refWarnW40: Color.lerp(refWarnW40, other.refWarnW40, t)!,
      refWarnW50: Color.lerp(refWarnW50, other.refWarnW50, t)!,
      refWarnW6: Color.lerp(refWarnW6, other.refWarnW6, t)!,
      refWarnW60: Color.lerp(refWarnW60, other.refWarnW60, t)!,
      refWarnW70: Color.lerp(refWarnW70, other.refWarnW70, t)!,
      refWarnW8: Color.lerp(refWarnW8, other.refWarnW8, t)!,
      refWarnW80: Color.lerp(refWarnW80, other.refWarnW80, t)!,
      refWarnW85: Color.lerp(refWarnW85, other.refWarnW85, t)!,
      refWarnW90: Color.lerp(refWarnW90, other.refWarnW90, t)!,
      refWarnW93: Color.lerp(refWarnW93, other.refWarnW93, t)!,
      refWarnW95: Color.lerp(refWarnW95, other.refWarnW95, t)!,
      refWarnW98: Color.lerp(refWarnW98, other.refWarnW98, t)!,
      refWarnW99: Color.lerp(refWarnW99, other.refWarnW99, t)!,
      stateLayersErrorContainerOpacity008: Color.lerp(
          stateLayersErrorContainerOpacity008,
          other.stateLayersErrorContainerOpacity008,
          t)!,
      stateLayersErrorContainerOpacity012: Color.lerp(
          stateLayersErrorContainerOpacity012,
          other.stateLayersErrorContainerOpacity012,
          t)!,
      stateLayersErrorContainerOpacity016: Color.lerp(
          stateLayersErrorContainerOpacity016,
          other.stateLayersErrorContainerOpacity016,
          t)!,
      stateLayersErrorOpacity008: Color.lerp(
          stateLayersErrorOpacity008, other.stateLayersErrorOpacity008, t)!,
      stateLayersErrorOpacity012: Color.lerp(
          stateLayersErrorOpacity012, other.stateLayersErrorOpacity012, t)!,
      stateLayersErrorOpacity016: Color.lerp(
          stateLayersErrorOpacity016, other.stateLayersErrorOpacity016, t)!,
      stateLayersInverseOnSurfaceOpacity008: Color.lerp(
          stateLayersInverseOnSurfaceOpacity008,
          other.stateLayersInverseOnSurfaceOpacity008,
          t)!,
      stateLayersInverseOnSurfaceOpacity012: Color.lerp(
          stateLayersInverseOnSurfaceOpacity012,
          other.stateLayersInverseOnSurfaceOpacity012,
          t)!,
      stateLayersInverseOnSurfaceOpacity016: Color.lerp(
          stateLayersInverseOnSurfaceOpacity016,
          other.stateLayersInverseOnSurfaceOpacity016,
          t)!,
      stateLayersInversePrimaryOpacity008: Color.lerp(
          stateLayersInversePrimaryOpacity008,
          other.stateLayersInversePrimaryOpacity008,
          t)!,
      stateLayersInversePrimaryOpacity012: Color.lerp(
          stateLayersInversePrimaryOpacity012,
          other.stateLayersInversePrimaryOpacity012,
          t)!,
      stateLayersInversePrimaryOpacity016: Color.lerp(
          stateLayersInversePrimaryOpacity016,
          other.stateLayersInversePrimaryOpacity016,
          t)!,
      stateLayersInverseSurfaceOpacity008: Color.lerp(
          stateLayersInverseSurfaceOpacity008,
          other.stateLayersInverseSurfaceOpacity008,
          t)!,
      stateLayersInverseSurfaceOpacity012: Color.lerp(
          stateLayersInverseSurfaceOpacity012,
          other.stateLayersInverseSurfaceOpacity012,
          t)!,
      stateLayersInverseSurfaceOpacity016: Color.lerp(
          stateLayersInverseSurfaceOpacity016,
          other.stateLayersInverseSurfaceOpacity016,
          t)!,
      stateLayersOnErrorContainerOpacity008: Color.lerp(
          stateLayersOnErrorContainerOpacity008,
          other.stateLayersOnErrorContainerOpacity008,
          t)!,
      stateLayersOnErrorContainerOpacity012: Color.lerp(
          stateLayersOnErrorContainerOpacity012,
          other.stateLayersOnErrorContainerOpacity012,
          t)!,
      stateLayersOnErrorContainerOpacity016: Color.lerp(
          stateLayersOnErrorContainerOpacity016,
          other.stateLayersOnErrorContainerOpacity016,
          t)!,
      stateLayersOnErrorOpacity008: Color.lerp(
          stateLayersOnErrorOpacity008, other.stateLayersOnErrorOpacity008, t)!,
      stateLayersOnErrorOpacity012: Color.lerp(
          stateLayersOnErrorOpacity012, other.stateLayersOnErrorOpacity012, t)!,
      stateLayersOnErrorOpacity016: Color.lerp(
          stateLayersOnErrorOpacity016, other.stateLayersOnErrorOpacity016, t)!,
      stateLayersOnPrimaryContainerOpacity008: Color.lerp(
          stateLayersOnPrimaryContainerOpacity008,
          other.stateLayersOnPrimaryContainerOpacity008,
          t)!,
      stateLayersOnPrimaryContainerOpacity012: Color.lerp(
          stateLayersOnPrimaryContainerOpacity012,
          other.stateLayersOnPrimaryContainerOpacity012,
          t)!,
      stateLayersOnPrimaryContainerOpacity016: Color.lerp(
          stateLayersOnPrimaryContainerOpacity016,
          other.stateLayersOnPrimaryContainerOpacity016,
          t)!,
      stateLayersOnPrimaryFixedOpacity008: Color.lerp(
          stateLayersOnPrimaryFixedOpacity008,
          other.stateLayersOnPrimaryFixedOpacity008,
          t)!,
      stateLayersOnPrimaryFixedOpacity012: Color.lerp(
          stateLayersOnPrimaryFixedOpacity012,
          other.stateLayersOnPrimaryFixedOpacity012,
          t)!,
      stateLayersOnPrimaryFixedOpacity016: Color.lerp(
          stateLayersOnPrimaryFixedOpacity016,
          other.stateLayersOnPrimaryFixedOpacity016,
          t)!,
      stateLayersOnPrimaryFixedVariantOpacity008: Color.lerp(
          stateLayersOnPrimaryFixedVariantOpacity008,
          other.stateLayersOnPrimaryFixedVariantOpacity008,
          t)!,
      stateLayersOnPrimaryFixedVariantOpacity012: Color.lerp(
          stateLayersOnPrimaryFixedVariantOpacity012,
          other.stateLayersOnPrimaryFixedVariantOpacity012,
          t)!,
      stateLayersOnPrimaryFixedVariantOpacity016: Color.lerp(
          stateLayersOnPrimaryFixedVariantOpacity016,
          other.stateLayersOnPrimaryFixedVariantOpacity016,
          t)!,
      stateLayersOnPrimaryOpacity008: Color.lerp(stateLayersOnPrimaryOpacity008,
          other.stateLayersOnPrimaryOpacity008, t)!,
      stateLayersOnPrimaryOpacity012: Color.lerp(stateLayersOnPrimaryOpacity012,
          other.stateLayersOnPrimaryOpacity012, t)!,
      stateLayersOnPrimaryOpacity016: Color.lerp(stateLayersOnPrimaryOpacity016,
          other.stateLayersOnPrimaryOpacity016, t)!,
      stateLayersOnSecondaryContainerOpacity008: Color.lerp(
          stateLayersOnSecondaryContainerOpacity008,
          other.stateLayersOnSecondaryContainerOpacity008,
          t)!,
      stateLayersOnSecondaryContainerOpacity012: Color.lerp(
          stateLayersOnSecondaryContainerOpacity012,
          other.stateLayersOnSecondaryContainerOpacity012,
          t)!,
      stateLayersOnSecondaryContainerOpacity016: Color.lerp(
          stateLayersOnSecondaryContainerOpacity016,
          other.stateLayersOnSecondaryContainerOpacity016,
          t)!,
      stateLayersOnSecondaryFixedOpacity008: Color.lerp(
          stateLayersOnSecondaryFixedOpacity008,
          other.stateLayersOnSecondaryFixedOpacity008,
          t)!,
      stateLayersOnSecondaryFixedOpacity012: Color.lerp(
          stateLayersOnSecondaryFixedOpacity012,
          other.stateLayersOnSecondaryFixedOpacity012,
          t)!,
      stateLayersOnSecondaryFixedOpacity016: Color.lerp(
          stateLayersOnSecondaryFixedOpacity016,
          other.stateLayersOnSecondaryFixedOpacity016,
          t)!,
      stateLayersOnSecondaryFixedVariantOpacity008: Color.lerp(
          stateLayersOnSecondaryFixedVariantOpacity008,
          other.stateLayersOnSecondaryFixedVariantOpacity008,
          t)!,
      stateLayersOnSecondaryFixedVariantOpacity012: Color.lerp(
          stateLayersOnSecondaryFixedVariantOpacity012,
          other.stateLayersOnSecondaryFixedVariantOpacity012,
          t)!,
      stateLayersOnSecondaryFixedVariantOpacity016: Color.lerp(
          stateLayersOnSecondaryFixedVariantOpacity016,
          other.stateLayersOnSecondaryFixedVariantOpacity016,
          t)!,
      stateLayersOnSecondaryOpacity008: Color.lerp(
          stateLayersOnSecondaryOpacity008,
          other.stateLayersOnSecondaryOpacity008,
          t)!,
      stateLayersOnSecondaryOpacity012: Color.lerp(
          stateLayersOnSecondaryOpacity012,
          other.stateLayersOnSecondaryOpacity012,
          t)!,
      stateLayersOnSecondaryOpacity016: Color.lerp(
          stateLayersOnSecondaryOpacity016,
          other.stateLayersOnSecondaryOpacity016,
          t)!,
      stateLayersOnSuccessContainerOpacity008: Color.lerp(
          stateLayersOnSuccessContainerOpacity008,
          other.stateLayersOnSuccessContainerOpacity008,
          t)!,
      stateLayersOnSuccessContainerOpacity012: Color.lerp(
          stateLayersOnSuccessContainerOpacity012,
          other.stateLayersOnSuccessContainerOpacity012,
          t)!,
      stateLayersOnSuccessContainerOpacity016: Color.lerp(
          stateLayersOnSuccessContainerOpacity016,
          other.stateLayersOnSuccessContainerOpacity016,
          t)!,
      stateLayersOnSuccessOpacity008: Color.lerp(stateLayersOnSuccessOpacity008,
          other.stateLayersOnSuccessOpacity008, t)!,
      stateLayersOnSuccessOpacity012: Color.lerp(stateLayersOnSuccessOpacity012,
          other.stateLayersOnSuccessOpacity012, t)!,
      stateLayersOnSuccessOpacity016: Color.lerp(stateLayersOnSuccessOpacity016,
          other.stateLayersOnSuccessOpacity016, t)!,
      stateLayersOnSurfaceOpacity008: Color.lerp(stateLayersOnSurfaceOpacity008,
          other.stateLayersOnSurfaceOpacity008, t)!,
      stateLayersOnSurfaceOpacity012: Color.lerp(stateLayersOnSurfaceOpacity012,
          other.stateLayersOnSurfaceOpacity012, t)!,
      stateLayersOnSurfaceOpacity016: Color.lerp(stateLayersOnSurfaceOpacity016,
          other.stateLayersOnSurfaceOpacity016, t)!,
      stateLayersOnSurfaceVariantOpacity008: Color.lerp(
          stateLayersOnSurfaceVariantOpacity008,
          other.stateLayersOnSurfaceVariantOpacity008,
          t)!,
      stateLayersOnSurfaceVariantOpacity012: Color.lerp(
          stateLayersOnSurfaceVariantOpacity012,
          other.stateLayersOnSurfaceVariantOpacity012,
          t)!,
      stateLayersOnSurfaceVariantOpacity016: Color.lerp(
          stateLayersOnSurfaceVariantOpacity016,
          other.stateLayersOnSurfaceVariantOpacity016,
          t)!,
      stateLayersOnTertiaryContainerOpacity008: Color.lerp(
          stateLayersOnTertiaryContainerOpacity008,
          other.stateLayersOnTertiaryContainerOpacity008,
          t)!,
      stateLayersOnTertiaryContainerOpacity012: Color.lerp(
          stateLayersOnTertiaryContainerOpacity012,
          other.stateLayersOnTertiaryContainerOpacity012,
          t)!,
      stateLayersOnTertiaryContainerOpacity016: Color.lerp(
          stateLayersOnTertiaryContainerOpacity016,
          other.stateLayersOnTertiaryContainerOpacity016,
          t)!,
      stateLayersOnTertiaryFixedOpacity008: Color.lerp(
          stateLayersOnTertiaryFixedOpacity008,
          other.stateLayersOnTertiaryFixedOpacity008,
          t)!,
      stateLayersOnTertiaryFixedOpacity012: Color.lerp(
          stateLayersOnTertiaryFixedOpacity012,
          other.stateLayersOnTertiaryFixedOpacity012,
          t)!,
      stateLayersOnTertiaryFixedOpacity016: Color.lerp(
          stateLayersOnTertiaryFixedOpacity016,
          other.stateLayersOnTertiaryFixedOpacity016,
          t)!,
      stateLayersOnTertiaryFixedVariantOpacity008: Color.lerp(
          stateLayersOnTertiaryFixedVariantOpacity008,
          other.stateLayersOnTertiaryFixedVariantOpacity008,
          t)!,
      stateLayersOnTertiaryFixedVariantOpacity012: Color.lerp(
          stateLayersOnTertiaryFixedVariantOpacity012,
          other.stateLayersOnTertiaryFixedVariantOpacity012,
          t)!,
      stateLayersOnTertiaryFixedVariantOpacity016: Color.lerp(
          stateLayersOnTertiaryFixedVariantOpacity016,
          other.stateLayersOnTertiaryFixedVariantOpacity016,
          t)!,
      stateLayersOnTertiaryOpacity008: Color.lerp(
          stateLayersOnTertiaryOpacity008,
          other.stateLayersOnTertiaryOpacity008,
          t)!,
      stateLayersOnTertiaryOpacity012: Color.lerp(
          stateLayersOnTertiaryOpacity012,
          other.stateLayersOnTertiaryOpacity012,
          t)!,
      stateLayersOnTertiaryOpacity016: Color.lerp(
          stateLayersOnTertiaryOpacity016,
          other.stateLayersOnTertiaryOpacity016,
          t)!,
      stateLayersOnWarnContainerOpacity008: Color.lerp(
          stateLayersOnWarnContainerOpacity008,
          other.stateLayersOnWarnContainerOpacity008,
          t)!,
      stateLayersOnWarnContainerOpacity012: Color.lerp(
          stateLayersOnWarnContainerOpacity012,
          other.stateLayersOnWarnContainerOpacity012,
          t)!,
      stateLayersOnWarnContainerOpacity016: Color.lerp(
          stateLayersOnWarnContainerOpacity016,
          other.stateLayersOnWarnContainerOpacity016,
          t)!,
      stateLayersOnWarnOpacity008: Color.lerp(
          stateLayersOnWarnOpacity008, other.stateLayersOnWarnOpacity008, t)!,
      stateLayersOnWarnOpacity012: Color.lerp(
          stateLayersOnWarnOpacity012, other.stateLayersOnWarnOpacity012, t)!,
      stateLayersOnWarnOpacity016: Color.lerp(
          stateLayersOnWarnOpacity016, other.stateLayersOnWarnOpacity016, t)!,
      stateLayersOutlineOpacity008: Color.lerp(
          stateLayersOutlineOpacity008, other.stateLayersOutlineOpacity008, t)!,
      stateLayersOutlineOpacity012: Color.lerp(
          stateLayersOutlineOpacity012, other.stateLayersOutlineOpacity012, t)!,
      stateLayersOutlineOpacity016: Color.lerp(
          stateLayersOutlineOpacity016, other.stateLayersOutlineOpacity016, t)!,
      stateLayersOutlineVariantOpacity008: Color.lerp(
          stateLayersOutlineVariantOpacity008,
          other.stateLayersOutlineVariantOpacity008,
          t)!,
      stateLayersOutlineVariantOpacity012: Color.lerp(
          stateLayersOutlineVariantOpacity012,
          other.stateLayersOutlineVariantOpacity012,
          t)!,
      stateLayersOutlineVariantOpacity016: Color.lerp(
          stateLayersOutlineVariantOpacity016,
          other.stateLayersOutlineVariantOpacity016,
          t)!,
      stateLayersPrimaryContainerOpacity008: Color.lerp(
          stateLayersPrimaryContainerOpacity008,
          other.stateLayersPrimaryContainerOpacity008,
          t)!,
      stateLayersPrimaryContainerOpacity012: Color.lerp(
          stateLayersPrimaryContainerOpacity012,
          other.stateLayersPrimaryContainerOpacity012,
          t)!,
      stateLayersPrimaryContainerOpacity016: Color.lerp(
          stateLayersPrimaryContainerOpacity016,
          other.stateLayersPrimaryContainerOpacity016,
          t)!,
      stateLayersPrimaryFixedDimOpacity008: Color.lerp(
          stateLayersPrimaryFixedDimOpacity008,
          other.stateLayersPrimaryFixedDimOpacity008,
          t)!,
      stateLayersPrimaryFixedDimOpacity012: Color.lerp(
          stateLayersPrimaryFixedDimOpacity012,
          other.stateLayersPrimaryFixedDimOpacity012,
          t)!,
      stateLayersPrimaryFixedDimOpacity016: Color.lerp(
          stateLayersPrimaryFixedDimOpacity016,
          other.stateLayersPrimaryFixedDimOpacity016,
          t)!,
      stateLayersPrimaryFixedOpacity008: Color.lerp(
          stateLayersPrimaryFixedOpacity008,
          other.stateLayersPrimaryFixedOpacity008,
          t)!,
      stateLayersPrimaryFixedOpacity012: Color.lerp(
          stateLayersPrimaryFixedOpacity012,
          other.stateLayersPrimaryFixedOpacity012,
          t)!,
      stateLayersPrimaryFixedOpacity016: Color.lerp(
          stateLayersPrimaryFixedOpacity016,
          other.stateLayersPrimaryFixedOpacity016,
          t)!,
      stateLayersPrimaryOpacity008: Color.lerp(
          stateLayersPrimaryOpacity008, other.stateLayersPrimaryOpacity008, t)!,
      stateLayersPrimaryOpacity012: Color.lerp(
          stateLayersPrimaryOpacity012, other.stateLayersPrimaryOpacity012, t)!,
      stateLayersPrimaryOpacity016: Color.lerp(
          stateLayersPrimaryOpacity016, other.stateLayersPrimaryOpacity016, t)!,
      stateLayersScrimOpacity008: Color.lerp(
          stateLayersScrimOpacity008, other.stateLayersScrimOpacity008, t)!,
      stateLayersScrimOpacity012: Color.lerp(
          stateLayersScrimOpacity012, other.stateLayersScrimOpacity012, t)!,
      stateLayersScrimOpacity016: Color.lerp(
          stateLayersScrimOpacity016, other.stateLayersScrimOpacity016, t)!,
      stateLayersSecondaryContainerOpacity008: Color.lerp(
          stateLayersSecondaryContainerOpacity008,
          other.stateLayersSecondaryContainerOpacity008,
          t)!,
      stateLayersSecondaryContainerOpacity012: Color.lerp(
          stateLayersSecondaryContainerOpacity012,
          other.stateLayersSecondaryContainerOpacity012,
          t)!,
      stateLayersSecondaryContainerOpacity016: Color.lerp(
          stateLayersSecondaryContainerOpacity016,
          other.stateLayersSecondaryContainerOpacity016,
          t)!,
      stateLayersSecondaryFixedDimOpacity008: Color.lerp(
          stateLayersSecondaryFixedDimOpacity008,
          other.stateLayersSecondaryFixedDimOpacity008,
          t)!,
      stateLayersSecondaryFixedDimOpacity012: Color.lerp(
          stateLayersSecondaryFixedDimOpacity012,
          other.stateLayersSecondaryFixedDimOpacity012,
          t)!,
      stateLayersSecondaryFixedDimOpacity016: Color.lerp(
          stateLayersSecondaryFixedDimOpacity016,
          other.stateLayersSecondaryFixedDimOpacity016,
          t)!,
      stateLayersSecondaryFixedOpacity008: Color.lerp(
          stateLayersSecondaryFixedOpacity008,
          other.stateLayersSecondaryFixedOpacity008,
          t)!,
      stateLayersSecondaryFixedOpacity012: Color.lerp(
          stateLayersSecondaryFixedOpacity012,
          other.stateLayersSecondaryFixedOpacity012,
          t)!,
      stateLayersSecondaryFixedOpacity016: Color.lerp(
          stateLayersSecondaryFixedOpacity016,
          other.stateLayersSecondaryFixedOpacity016,
          t)!,
      stateLayersSecondaryOpacity008: Color.lerp(stateLayersSecondaryOpacity008,
          other.stateLayersSecondaryOpacity008, t)!,
      stateLayersSecondaryOpacity012: Color.lerp(stateLayersSecondaryOpacity012,
          other.stateLayersSecondaryOpacity012, t)!,
      stateLayersSecondaryOpacity016: Color.lerp(stateLayersSecondaryOpacity016,
          other.stateLayersSecondaryOpacity016, t)!,
      stateLayersShadowOpacity008: Color.lerp(
          stateLayersShadowOpacity008, other.stateLayersShadowOpacity008, t)!,
      stateLayersShadowOpacity012: Color.lerp(
          stateLayersShadowOpacity012, other.stateLayersShadowOpacity012, t)!,
      stateLayersShadowOpacity016: Color.lerp(
          stateLayersShadowOpacity016, other.stateLayersShadowOpacity016, t)!,
      stateLayersSuccessContainerOpacity008: Color.lerp(
          stateLayersSuccessContainerOpacity008,
          other.stateLayersSuccessContainerOpacity008,
          t)!,
      stateLayersSuccessContainerOpacity012: Color.lerp(
          stateLayersSuccessContainerOpacity012,
          other.stateLayersSuccessContainerOpacity012,
          t)!,
      stateLayersSuccessContainerOpacity016: Color.lerp(
          stateLayersSuccessContainerOpacity016,
          other.stateLayersSuccessContainerOpacity016,
          t)!,
      stateLayersSuccessOpacity008: Color.lerp(
          stateLayersSuccessOpacity008, other.stateLayersSuccessOpacity008, t)!,
      stateLayersSuccessOpacity012: Color.lerp(
          stateLayersSuccessOpacity012, other.stateLayersSuccessOpacity012, t)!,
      stateLayersSuccessOpacity016: Color.lerp(
          stateLayersSuccessOpacity016, other.stateLayersSuccessOpacity016, t)!,
      stateLayersSurfaceBrightOpacity008: Color.lerp(
          stateLayersSurfaceBrightOpacity008,
          other.stateLayersSurfaceBrightOpacity008,
          t)!,
      stateLayersSurfaceBrightOpacity012: Color.lerp(
          stateLayersSurfaceBrightOpacity012,
          other.stateLayersSurfaceBrightOpacity012,
          t)!,
      stateLayersSurfaceBrightOpacity016: Color.lerp(
          stateLayersSurfaceBrightOpacity016,
          other.stateLayersSurfaceBrightOpacity016,
          t)!,
      stateLayersSurfaceContainerHighOpacity008: Color.lerp(
          stateLayersSurfaceContainerHighOpacity008,
          other.stateLayersSurfaceContainerHighOpacity008,
          t)!,
      stateLayersSurfaceContainerHighOpacity012: Color.lerp(
          stateLayersSurfaceContainerHighOpacity012,
          other.stateLayersSurfaceContainerHighOpacity012,
          t)!,
      stateLayersSurfaceContainerHighOpacity016: Color.lerp(
          stateLayersSurfaceContainerHighOpacity016,
          other.stateLayersSurfaceContainerHighOpacity016,
          t)!,
      stateLayersSurfaceContainerHighestOpacity008: Color.lerp(
          stateLayersSurfaceContainerHighestOpacity008,
          other.stateLayersSurfaceContainerHighestOpacity008,
          t)!,
      stateLayersSurfaceContainerHighestOpacity012: Color.lerp(
          stateLayersSurfaceContainerHighestOpacity012,
          other.stateLayersSurfaceContainerHighestOpacity012,
          t)!,
      stateLayersSurfaceContainerHighestOpacity016: Color.lerp(
          stateLayersSurfaceContainerHighestOpacity016,
          other.stateLayersSurfaceContainerHighestOpacity016,
          t)!,
      stateLayersSurfaceContainerLowOpacity008: Color.lerp(
          stateLayersSurfaceContainerLowOpacity008,
          other.stateLayersSurfaceContainerLowOpacity008,
          t)!,
      stateLayersSurfaceContainerLowOpacity012: Color.lerp(
          stateLayersSurfaceContainerLowOpacity012,
          other.stateLayersSurfaceContainerLowOpacity012,
          t)!,
      stateLayersSurfaceContainerLowOpacity016: Color.lerp(
          stateLayersSurfaceContainerLowOpacity016,
          other.stateLayersSurfaceContainerLowOpacity016,
          t)!,
      stateLayersSurfaceContainerLowestOpacity008: Color.lerp(
          stateLayersSurfaceContainerLowestOpacity008,
          other.stateLayersSurfaceContainerLowestOpacity008,
          t)!,
      stateLayersSurfaceContainerLowestOpacity012: Color.lerp(
          stateLayersSurfaceContainerLowestOpacity012,
          other.stateLayersSurfaceContainerLowestOpacity012,
          t)!,
      stateLayersSurfaceContainerLowestOpacity016: Color.lerp(
          stateLayersSurfaceContainerLowestOpacity016,
          other.stateLayersSurfaceContainerLowestOpacity016,
          t)!,
      stateLayersSurfaceContainerOpacity008: Color.lerp(
          stateLayersSurfaceContainerOpacity008,
          other.stateLayersSurfaceContainerOpacity008,
          t)!,
      stateLayersSurfaceContainerOpacity012: Color.lerp(
          stateLayersSurfaceContainerOpacity012,
          other.stateLayersSurfaceContainerOpacity012,
          t)!,
      stateLayersSurfaceContainerOpacity016: Color.lerp(
          stateLayersSurfaceContainerOpacity016,
          other.stateLayersSurfaceContainerOpacity016,
          t)!,
      stateLayersSurfaceDimOpacity008: Color.lerp(
          stateLayersSurfaceDimOpacity008,
          other.stateLayersSurfaceDimOpacity008,
          t)!,
      stateLayersSurfaceDimOpacity012: Color.lerp(
          stateLayersSurfaceDimOpacity012,
          other.stateLayersSurfaceDimOpacity012,
          t)!,
      stateLayersSurfaceDimOpacity016: Color.lerp(
          stateLayersSurfaceDimOpacity016,
          other.stateLayersSurfaceDimOpacity016,
          t)!,
      stateLayersSurfaceOpacity008: Color.lerp(
          stateLayersSurfaceOpacity008, other.stateLayersSurfaceOpacity008, t)!,
      stateLayersSurfaceOpacity012: Color.lerp(
          stateLayersSurfaceOpacity012, other.stateLayersSurfaceOpacity012, t)!,
      stateLayersSurfaceOpacity016: Color.lerp(
          stateLayersSurfaceOpacity016, other.stateLayersSurfaceOpacity016, t)!,
      stateLayersTertiaryContainerOpacity008: Color.lerp(
          stateLayersTertiaryContainerOpacity008,
          other.stateLayersTertiaryContainerOpacity008,
          t)!,
      stateLayersTertiaryContainerOpacity012: Color.lerp(
          stateLayersTertiaryContainerOpacity012,
          other.stateLayersTertiaryContainerOpacity012,
          t)!,
      stateLayersTertiaryContainerOpacity016: Color.lerp(
          stateLayersTertiaryContainerOpacity016,
          other.stateLayersTertiaryContainerOpacity016,
          t)!,
      stateLayersTertiaryFixedDimOpacity008: Color.lerp(
          stateLayersTertiaryFixedDimOpacity008,
          other.stateLayersTertiaryFixedDimOpacity008,
          t)!,
      stateLayersTertiaryFixedDimOpacity012: Color.lerp(
          stateLayersTertiaryFixedDimOpacity012,
          other.stateLayersTertiaryFixedDimOpacity012,
          t)!,
      stateLayersTertiaryFixedDimOpacity016: Color.lerp(
          stateLayersTertiaryFixedDimOpacity016,
          other.stateLayersTertiaryFixedDimOpacity016,
          t)!,
      stateLayersTertiaryFixedOpacity008: Color.lerp(
          stateLayersTertiaryFixedOpacity008,
          other.stateLayersTertiaryFixedOpacity008,
          t)!,
      stateLayersTertiaryFixedOpacity012: Color.lerp(
          stateLayersTertiaryFixedOpacity012,
          other.stateLayersTertiaryFixedOpacity012,
          t)!,
      stateLayersTertiaryFixedOpacity016: Color.lerp(
          stateLayersTertiaryFixedOpacity016,
          other.stateLayersTertiaryFixedOpacity016,
          t)!,
      stateLayersTertiaryOpacity008: Color.lerp(stateLayersTertiaryOpacity008,
          other.stateLayersTertiaryOpacity008, t)!,
      stateLayersTertiaryOpacity012: Color.lerp(stateLayersTertiaryOpacity012,
          other.stateLayersTertiaryOpacity012, t)!,
      stateLayersTertiaryOpacity016: Color.lerp(stateLayersTertiaryOpacity016,
          other.stateLayersTertiaryOpacity016, t)!,
      stateLayersWarnContainerOpacity008: Color.lerp(
          stateLayersWarnContainerOpacity008,
          other.stateLayersWarnContainerOpacity008,
          t)!,
      stateLayersWarnContainerOpacity012: Color.lerp(
          stateLayersWarnContainerOpacity012,
          other.stateLayersWarnContainerOpacity012,
          t)!,
      stateLayersWarnContainerOpacity016: Color.lerp(
          stateLayersWarnContainerOpacity016,
          other.stateLayersWarnContainerOpacity016,
          t)!,
      stateLayersWarnOpacity008: Color.lerp(
          stateLayersWarnOpacity008, other.stateLayersWarnOpacity008, t)!,
      stateLayersWarnOpacity012: Color.lerp(
          stateLayersWarnOpacity012, other.stateLayersWarnOpacity012, t)!,
      stateLayersWarnOpacity016: Color.lerp(
          stateLayersWarnOpacity016, other.stateLayersWarnOpacity016, t)!,
      sysError: Color.lerp(sysError, other.sysError, t)!,
      sysErrorContainer:
          Color.lerp(sysErrorContainer, other.sysErrorContainer, t)!,
      sysInverseOnSurface:
          Color.lerp(sysInverseOnSurface, other.sysInverseOnSurface, t)!,
      sysInversePrimary:
          Color.lerp(sysInversePrimary, other.sysInversePrimary, t)!,
      sysInverseSurface:
          Color.lerp(sysInverseSurface, other.sysInverseSurface, t)!,
      sysOnError: Color.lerp(sysOnError, other.sysOnError, t)!,
      sysOnErrorContainer:
          Color.lerp(sysOnErrorContainer, other.sysOnErrorContainer, t)!,
      sysOnPrimary: Color.lerp(sysOnPrimary, other.sysOnPrimary, t)!,
      sysOnPrimaryContainer:
          Color.lerp(sysOnPrimaryContainer, other.sysOnPrimaryContainer, t)!,
      sysOnPrimaryFixed:
          Color.lerp(sysOnPrimaryFixed, other.sysOnPrimaryFixed, t)!,
      sysOnPrimaryFixedVariant: Color.lerp(
          sysOnPrimaryFixedVariant, other.sysOnPrimaryFixedVariant, t)!,
      sysOnSecondary: Color.lerp(sysOnSecondary, other.sysOnSecondary, t)!,
      sysOnSecondaryContainer: Color.lerp(
          sysOnSecondaryContainer, other.sysOnSecondaryContainer, t)!,
      sysOnSecondaryFixed:
          Color.lerp(sysOnSecondaryFixed, other.sysOnSecondaryFixed, t)!,
      sysOnSecondaryFixedVariant: Color.lerp(
          sysOnSecondaryFixedVariant, other.sysOnSecondaryFixedVariant, t)!,
      sysOnSuccess: Color.lerp(sysOnSuccess, other.sysOnSuccess, t)!,
      sysOnSuccessContainer:
          Color.lerp(sysOnSuccessContainer, other.sysOnSuccessContainer, t)!,
      sysOnSurface: Color.lerp(sysOnSurface, other.sysOnSurface, t)!,
      sysOnSurfaceVariant:
          Color.lerp(sysOnSurfaceVariant, other.sysOnSurfaceVariant, t)!,
      sysOnTertiary: Color.lerp(sysOnTertiary, other.sysOnTertiary, t)!,
      sysOnTertiaryContainer:
          Color.lerp(sysOnTertiaryContainer, other.sysOnTertiaryContainer, t)!,
      sysOnTertiaryFixed:
          Color.lerp(sysOnTertiaryFixed, other.sysOnTertiaryFixed, t)!,
      sysOnTertiaryFixedVariant: Color.lerp(
          sysOnTertiaryFixedVariant, other.sysOnTertiaryFixedVariant, t)!,
      sysOnWarn: Color.lerp(sysOnWarn, other.sysOnWarn, t)!,
      sysOnWarnContainer:
          Color.lerp(sysOnWarnContainer, other.sysOnWarnContainer, t)!,
      sysOutline: Color.lerp(sysOutline, other.sysOutline, t)!,
      sysOutlineVariant:
          Color.lerp(sysOutlineVariant, other.sysOutlineVariant, t)!,
      sysPrimary: Color.lerp(sysPrimary, other.sysPrimary, t)!,
      sysPrimaryContainer:
          Color.lerp(sysPrimaryContainer, other.sysPrimaryContainer, t)!,
      sysPrimaryFixed: Color.lerp(sysPrimaryFixed, other.sysPrimaryFixed, t)!,
      sysPrimaryFixedDim:
          Color.lerp(sysPrimaryFixedDim, other.sysPrimaryFixedDim, t)!,
      sysScrim: Color.lerp(sysScrim, other.sysScrim, t)!,
      sysSecondary: Color.lerp(sysSecondary, other.sysSecondary, t)!,
      sysSecondaryContainer:
          Color.lerp(sysSecondaryContainer, other.sysSecondaryContainer, t)!,
      sysSecondaryFixed:
          Color.lerp(sysSecondaryFixed, other.sysSecondaryFixed, t)!,
      sysSecondaryFixedDim:
          Color.lerp(sysSecondaryFixedDim, other.sysSecondaryFixedDim, t)!,
      sysShadow: Color.lerp(sysShadow, other.sysShadow, t)!,
      sysSuccess: Color.lerp(sysSuccess, other.sysSuccess, t)!,
      sysSuccessContainer:
          Color.lerp(sysSuccessContainer, other.sysSuccessContainer, t)!,
      sysSurfaceTinted:
          Color.lerp(sysSurfaceTinted, other.sysSurfaceTinted, t)!,
      sysSurface: Color.lerp(sysSurface, other.sysSurface, t)!,
      sysSurfaceBright:
          Color.lerp(sysSurfaceBright, other.sysSurfaceBright, t)!,
      sysSurfaceContainer:
          Color.lerp(sysSurfaceContainer, other.sysSurfaceContainer, t)!,
      sysSurfaceContainerHigh: Color.lerp(
          sysSurfaceContainerHigh, other.sysSurfaceContainerHigh, t)!,
      sysSurfaceContainerHighest: Color.lerp(
          sysSurfaceContainerHighest, other.sysSurfaceContainerHighest, t)!,
      sysSurfaceContainerLow:
          Color.lerp(sysSurfaceContainerLow, other.sysSurfaceContainerLow, t)!,
      sysSurfaceContainerLowest: Color.lerp(
          sysSurfaceContainerLowest, other.sysSurfaceContainerLowest, t)!,
      sysSurfaceDim: Color.lerp(sysSurfaceDim, other.sysSurfaceDim, t)!,
      sysTertiary: Color.lerp(sysTertiary, other.sysTertiary, t)!,
      sysTertiaryContainer:
          Color.lerp(sysTertiaryContainer, other.sysTertiaryContainer, t)!,
      sysTertiaryFixed:
          Color.lerp(sysTertiaryFixed, other.sysTertiaryFixed, t)!,
      sysTertiaryFixedDim:
          Color.lerp(sysTertiaryFixedDim, other.sysTertiaryFixedDim, t)!,
      sysWarn: Color.lerp(sysWarn, other.sysWarn, t)!,
      sysWarnContainer:
          Color.lerp(sysWarnContainer, other.sysWarnContainer, t)!,
      aqua: Color.lerp(aqua, other.aqua, t)!,
      black: Color.lerp(black, other.black, t)!,
      blue: Color.lerp(blue, other.blue, t)!,
      cyan: Color.lerp(cyan, other.cyan, t)!,
      grape: Color.lerp(grape, other.grape, t)!,
      green: Color.lerp(green, other.green, t)!,
      lime: Color.lerp(lime, other.lime, t)!,
      magenta: Color.lerp(magenta, other.magenta, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      pink: Color.lerp(pink, other.pink, t)!,
      purple: Color.lerp(purple, other.purple, t)!,
      red: Color.lerp(red, other.red, t)!,
      white: Color.lerp(white, other.white, t)!,
      yellow: Color.lerp(yellow, other.yellow, t)!,
      onRed: Color.lerp(onRed, other.onRed, t)!,
      onOrange: Color.lerp(onOrange, other.onOrange, t)!,
      onYellow: Color.lerp(onYellow, other.onYellow, t)!,
      onLime: Color.lerp(onLime, other.onLime, t)!,
      onGreen: Color.lerp(onGreen, other.onGreen, t)!,
      onAqua: Color.lerp(onAqua, other.onAqua, t)!,
      onCyan: Color.lerp(onCyan, other.onCyan, t)!,
      onBlue: Color.lerp(onBlue, other.onBlue, t)!,
      onPurple: Color.lerp(onPurple, other.onPurple, t)!,
      onGrape: Color.lerp(onGrape, other.onGrape, t)!,
      onPink: Color.lerp(onPink, other.onPink, t)!,
      onMagenta: Color.lerp(onMagenta, other.onMagenta, t)!,
    );
  }
}
