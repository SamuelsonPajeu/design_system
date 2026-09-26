import 'package:design_system/core/components/atoms/divider/ds_divider.dart';
import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/molecules/button/ds_button.dart';
import 'package:design_system/core/components/molecules/list_tile/ds_list_tile.dart';
import 'package:design_system/core/ui/themes/theme_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DSDialogPage {
  DSDialogPage({
    this.icon,
    required this.title,
    required this.description,
    this.list,
    this.iconBackgroundColor,
    this.iconColor,
    this.alignment = Alignment.centerLeft,
    this.textAlign,
    this.iconWidth,
    this.iconHeight,
    this.showDivider = true,
  });

  final Widget? icon;
  final String title;
  final String description;
  final List<DSListTile>? list;
  final Color? iconBackgroundColor;
  final Color? iconColor;
  final double? iconWidth;
  final double? iconHeight;
  final Alignment? alignment;
  final TextAlign? textAlign;
  final bool? showDivider;
}

class DSDialog extends StatefulWidget {
  const DSDialog({
    super.key,
    this.action1,
    this.action2,
    required this.pages,
    this.showNavigationButtons = false,
    this.minHeight,
    this.minWidth,
    this.showDivider = true,
    this.verticalActions = false,
  });

  final List<DSDialogPage> pages;
  final DSButton? action1;
  final DSButton? action2;
  final bool showNavigationButtons;
  final double? minHeight;
  final double? minWidth;
  final bool showDivider;
  final bool verticalActions;

  @override
  State<DSDialog> createState() => _DSDialogState();
}

class _DSDialogState extends State<DSDialog> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildPage(DSDialogPage page, BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: page.alignment == Alignment.center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        // Icone
        if (page.icon != null) ...[
          Center(
            child: Container(
              width: page.iconWidth ?? 96,
              height: page.iconHeight ?? 96,
              decoration: BoxDecoration(
                color: page.iconBackgroundColor ??
                    (page.iconColor != null
                        ? page.iconColor!.withValues(alpha: 0.1)
                        : context.colors.sysSurfaceContainer),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: IconTheme(
                  data: IconThemeData(
                    color: page.iconColor ?? context.colors.sysOnSurface,
                    size: 24,
                  ),
                  child: page.icon!,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],

        // Titulo
        DSText(
          page.title,
          textAlign: page.textAlign,
          style: context.texts.headlineSmall.copyWith(
              color: context.colors.sysOnSurface, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),

        // Descriçao
        Flexible(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: page.alignment == Alignment.center
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                DSText(
                  page.description,
                  textAlign: page.textAlign,
                  style: context.texts.bodyMedium.copyWith(
                      color: context.colors.sysOnSurfaceVariant,
                      fontWeight: FontWeight.w400),
                ),

                // Corpo da págian (lista)
                if (page.list != null && page.list!.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  ...page.list!,
                ],
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPageIndicator(BuildContext context) {
    if (widget.pages.length <= 1) {
      return const SizedBox.shrink();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Navigation button (previous)
        if (widget.showNavigationButtons) ...[
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: _currentPage > 0
                ? () {
                    _pageController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                : null,
            color: context.colors.sysOnSurface,
          ),
        ],

        // Page indicators (dots)
        ...List.generate(
          widget.pages.length,
          (index) => GestureDetector(
            onTap: () {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            child: Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index
                    ? context.colors.sysOnSurface
                    : context.colors.sysOnSurface.withValues(alpha: 0.3),
              ),
            ),
          ),
        ),

        // Navigation button (next)
        if (widget.showNavigationButtons) ...[
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: _currentPage < widget.pages.length - 1
                ? () {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                : null,
            color: context.colors.sysOnSurface,
          ),
        ],
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final dialogWidth = widget.minWidth ?? 400.0;
    final finalWidth = dialogWidth.clamp(0.0, screenWidth * 0.9);

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      backgroundColor: context.colors.sysSurface,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: finalWidth,
          minWidth: finalWidth,
          maxHeight: screenHeight * 0.9,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.pages.length == 1)
                Flexible(child: _buildPage(widget.pages[0], context))
              else
                SizedBox(
                  height: widget.minHeight ?? (screenHeight * 0.5),
                  child: ScrollConfiguration(
                    behavior: ScrollConfiguration.of(context).copyWith(
                      dragDevices: {
                        PointerDeviceKind.touch,
                        PointerDeviceKind.mouse,
                        PointerDeviceKind.stylus,
                        PointerDeviceKind.trackpad,
                      },
                    ),
                    child: PageView.builder(
                      controller: _pageController,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      itemCount: widget.pages.length,
                      itemBuilder: (context, index) {
                        return _buildPage(widget.pages[index], context);
                      },
                    ),
                  ),
                ),

              // Page indicators
              if (widget.pages.length > 1) ...[
                const SizedBox(height: 16),
                _buildPageIndicator(context),
              ],

              // Separator
              if (widget.showDivider) ...[
                const SizedBox(height: 16),
                const DSDivider(),
              ],
              const SizedBox(height: 16),
              // Action buttons
              if (widget.verticalActions)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (widget.action1 != null) widget.action1!,
                    if (widget.action1 != null && widget.action2 != null)
                      const SizedBox(height: 8),
                    if (widget.action2 != null) widget.action2!,
                  ],
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Action 2
                    if (widget.action2 != null) widget.action2!,
                    if (widget.action2 != null && widget.action1 != null)
                      const SizedBox(width: 8),
                    // Action 1
                    if (widget.action1 != null) widget.action1!,
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<T?> showDSDialog<T>({
  required BuildContext context,
  required String title,
  required String description,
  Alignment? alignment,
  TextAlign? textAlign,
  Widget? icon,
  List<DSListTile>? list,
  DSButton? action1,
  DSButton? action2,
  Color? iconBackgroundColor,
  Color? iconColor,
  double? iconWidth,
  double? iconHeight,
  bool barrierDismissible = true,
  double? minHeight,
  double? minWidth,
  bool showDivider = true,
  bool verticalActions = false,
}) {
  return showDSDialogWithPages<T>(
    context: context,
    pages: [
      DSDialogPage(
        icon: icon,
        title: title,
        description: description,
        list: list,
        iconBackgroundColor: iconBackgroundColor,
        iconColor: iconColor,
        alignment: alignment,
        textAlign: textAlign,
        iconWidth: iconWidth,
        iconHeight: iconHeight,
      ),
    ],
    action1: action1,
    action2: action2,
    barrierDismissible: barrierDismissible,
    minHeight: minHeight,
    minWidth: minWidth,
    showDivider: showDivider,
    verticalActions: verticalActions,
  );
}

Future<T?> showDSDialogWithPages<T>({
  required BuildContext context,
  required List<DSDialogPage> pages,
  DSButton? action1,
  DSButton? action2,
  bool barrierDismissible = true,
  bool showNavigationButtons = false,
  double? minHeight,
  double? minWidth,
  bool showDivider = true,
  bool verticalActions = false,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (context) => DSDialog(
      pages: pages,
      action1: action1,
      action2: action2,
      showNavigationButtons: showNavigationButtons,
      minHeight: minHeight,
      minWidth: minWidth,
      showDivider: showDivider,
      verticalActions: verticalActions,
    ),
  );
}
