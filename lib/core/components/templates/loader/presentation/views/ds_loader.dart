import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:design_system/core/components/templates/base_scaffold/ds_scaffold.dart';
import 'package:design_system/core/components/templates/loader/presentation/bindings/ds_loader_binding.dart';
import 'package:design_system/core/components/templates/loader/presentation/controllers/ds_loader_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

const double _kDefaultLogoWidth = 180.0;
const double _kDefaultLogoHeight = 212.73;
const double _kSpacingBetweenIndicatorAndLogo = 25.0;
const double _kSpacingBetweenLogoAndAnimatedText = 20.0;

class DSLoader extends GetView<DSLoaderController> {
  final Size? size;
  final bool loading;
  final bool showLogo;
  final bool isInScaffold;
  final bool showAnimatedText;
  final String screenTypeForText;

  const DSLoader({
    super.key,
    this.size,
    required this.loading,
    this.showLogo = false,
    this.isInScaffold = false,
    this.showAnimatedText = false,
    this.screenTypeForText = 'default',
  });

  static DSLoader indicatorOnly({Key? key, Size? size}) {
    return DSLoader(key: key, loading: true, size: size);
  }

  static DSLoader logoOnly({Key? key, Size? size}) {
    return DSLoader(key: key, loading: false, showLogo: true, size: size);
  }

  static DSLoader indicatorWithLogo(
      {Key? key, Size? size, bool inScaffold = false}) {
    return DSLoader(
        key: key,
        loading: true,
        showLogo: true,
        isInScaffold: inScaffold,
        size: size);
  }

  static DSLoader indicatorWithLogoAndAnimatedText({
    Key? key,
    Size? size,
    bool inScaffold = false,
    String screenType = 'default',
  }) {
    return DSLoader(
      key: key,
      loading: true,
      showLogo: true,
      showAnimatedText: true,
      isInScaffold: inScaffold,
      size: size,
      screenTypeForText: screenType,
    );
  }

  static DSLoader scaffoldIndicatorWithLogo() {
    return const DSLoader(loading: true, showLogo: true, isInScaffold: true);
  }

  EdgeInsets get _desktopPadding {
    if (!kIsWeb) {
      return EdgeInsets.zero;
    }

    const double breakpoint = 600.0;
    final double screenWidth = Get.width;

    if (screenWidth <= breakpoint) {
      return EdgeInsets.zero;
    }

    final double horizontalMargin = (screenWidth - breakpoint) / 2;
    return EdgeInsets.symmetric(horizontal: horizontalMargin);
  }

  Widget _buildAnimatedWrapper({required Widget child}) {
    return FadeTransition(
      opacity: controller.animation,
      child: child,
    );
  }

  Widget _buildAnimatedText(BuildContext context) {
    controller.fetchMessages(screenTypeForText);

    final double estimatedLineHeight = (18 * 0.8);
    const double maxLines = 5;
    final double maxHeight = estimatedLineHeight * maxLines;

    return Obx(() {
      if (controller.isLoadingMessages.value ||
          controller.messages.value.isEmpty) {
        return SizedBox(height: maxHeight);
      }

      final List<TypewriterAnimatedText> animatedTexts =
          controller.messages.value
              .map((text) => TypewriterAnimatedText(
                    text,
                    textAlign: TextAlign.center,
                    textStyle: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                    speed: const Duration(milliseconds: 50),
                    cursor: '|',
                  ))
              .toList();

      return SizedBox(
        height: maxHeight,
        child: AnimatedTextKit(
          animatedTexts: animatedTexts,
          repeatForever: true,
          pause: const Duration(seconds: 3),
          displayFullTextOnTap: false,
          stopPauseOnTap: false,
        ),
      );
    });
  }

  Widget _buildLoaderContent(BuildContext context) {
    final List<Widget> widgetsToShow = [];

    if (loading) {
      widgetsToShow.add(
        _buildAnimatedWrapper(
          child: CircularProgressIndicator(
            strokeWidth: 3.9,
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      );
    }

    if (showLogo) {
      if (widgetsToShow.isNotEmpty && loading) {
        widgetsToShow
            .add(const SizedBox(height: _kSpacingBetweenIndicatorAndLogo));
      }
      widgetsToShow.add(
        Obx(
          () => _buildAnimatedWrapper(
            child: Center(
              child: SizedBox(
                width: size?.width ?? _kDefaultLogoWidth,
                child: SizedBox(
                  height: size?.height ?? _kDefaultLogoHeight,
                ),
              ),
            ),
          ),
        ),
      );
    }

    if (showAnimatedText) {
      if (widgetsToShow.isNotEmpty) {
        widgetsToShow
            .add(const SizedBox(height: _kSpacingBetweenLogoAndAnimatedText));
      }
      widgetsToShow.add(_buildAnimatedText(context));
    }

    if (widgetsToShow.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    if (widgetsToShow.length == 1) {
      return Center(
          child: SizedBox(
              width: size?.width,
              height: size?.height,
              child: Center(child: widgetsToShow.first)));
    }

    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: widgetsToShow,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<DSLoaderBinding>()) {
      DSLoaderBinding().dependencies();
    }

    final content = _buildLoaderContent(context);

    if (isInScaffold) {
      return DSScaffold(
        body: Padding(
          padding: _desktopPadding,
          child: content,
        ),
      );
    }
    return content;
  }
}
