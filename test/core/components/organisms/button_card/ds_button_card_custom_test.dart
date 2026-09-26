import 'package:design_system/core/components/atoms/text/ds_text.dart';
import 'package:design_system/core/components/organisms/button_card/ds_button_card_custom.dart';
import 'package:design_system/core/components/organisms/button_card/ds_button_card_custom_tokens.dart';
import 'package:design_system/core/infrastructure/utils/color_formater.dart';
import 'package:design_system/core/ui/themes/base_app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorFormater', () {
    test('tryFromHex parses 6-digit hex with hash', () {
      final color = ColorFormater.tryFromHex('#FF5733');
      expect(color, const Color(0xFFFF5733));
    });

    test('tryFromHex parses 6-digit hex without hash', () {
      final color = ColorFormater.tryFromHex('FF5733');
      expect(color, const Color(0xFFFF5733));
    });

    test('tryFromHex parses 8-digit hex with alpha', () {
      final color = ColorFormater.tryFromHex('#80FF5733');
      expect(color, const Color(0x80FF5733));
    });

    test('tryFromHex parses 0x prefix', () {
      final color = ColorFormater.tryFromHex('0xFF5733');
      expect(color, const Color(0xFFFF5733));

      final colorWithAlpha = ColorFormater.tryFromHex('0x80FF5733');
      expect(colorWithAlpha, const Color(0x80FF5733));
    });

    test('tryFromHex parses 3-digit shorthand hex', () {
      final color = ColorFormater.tryFromHex('#FFF');
      expect(color, const Color(0xFFFFFFFF));
    });

    test('tryFromHex returns null for invalid or empty inputs', () {
      expect(ColorFormater.tryFromHex(null), isNull);
      expect(ColorFormater.tryFromHex(''), isNull);
      expect(ColorFormater.tryFromHex('   '), isNull);
      expect(ColorFormater.tryFromHex('invalid'), isNull);
      expect(ColorFormater.tryFromHex('#GGGGGG'), isNull);
    });

    test('fromHex works for valid hex string', () {
      expect(ColorFormater.fromHex('#FF5733'), const Color(0xFFFF5733));
    });
  });

  group('resolveCardColor', () {
    const fallbackColor = Color(0xFF112233);
    final colorsExtension = BaseAppTheme.lightAppColors;

    test('prioritizes hexColor over theme name', () {
      final color = resolveCardColor(
        colorsExtension,
        name: 'sysPrimary',
        hexColor: '#FF5733',
        fallback: fallbackColor,
      );
      expect(color, const Color(0xFFFF5733));
    });

    test('uses theme name when hexColor is null or empty', () {
      final color = resolveCardColor(
        colorsExtension,
        name: 'sysPrimary',
        hexColor: '',
        fallback: fallbackColor,
      );
      expect(color, colorsExtension.sysPrimary);
    });

    test('uses theme name when hexColor is invalid', () {
      final color = resolveCardColor(
        colorsExtension,
        name: 'sysPrimary',
        hexColor: 'invalid_hex',
        fallback: fallbackColor,
      );
      expect(color, colorsExtension.sysPrimary);
    });

    test('falls back to fallback color when neither hexColor nor name match',
        () {
      final color = resolveCardColor(
        colorsExtension,
        name: 'nonExistentColor',
        hexColor: null,
        fallback: fallbackColor,
      );
      expect(color, fallbackColor);
    });
  });

  group('DSButtonCardContent JSON deserialization with hexColor', () {
    test('parses hexColor in background, icon, title and description', () {
      final json = <String, dynamic>{
        'background': {
          'index': 0,
          'color': 'sysSurfaceTinted',
          'hexColor': '#EFF6FF',
        },
        'icon': {
          'index': 1,
          'name': 'favorite',
          'color': 'sysPrimary',
          'hexColor': '#FFFFFF',
          'backgroundColor': 'sysPrimaryContainer',
          'hexBackgroundColor': '#EF4444',
        },
        'title': {
          'index': 2,
          'text': 'Custom Title',
          'color': 'sysOnSurface',
          'hexColor': '#1E293B',
        },
        'description': {
          'index': 3,
          'text': 'Custom Description',
          'color': 'sysOnSurfaceVariant',
          'hexColor': '#64748B',
        },
      };

      final content = DSButtonCardContent.fromJson(json);

      expect(content.background?.color, 'sysSurfaceTinted');
      expect(content.background?.hexColor, '#EFF6FF');

      expect(content.icon?.color, 'sysPrimary');
      expect(content.icon?.hexColor, '#FFFFFF');
      expect(content.icon?.backgroundColor, 'sysPrimaryContainer');
      expect(content.icon?.hexBackgroundColor, '#EF4444');

      expect(content.title?.color, 'sysOnSurface');
      expect(content.title?.hexColor, '#1E293B');

      expect(content.description?.color, 'sysOnSurfaceVariant');
      expect(content.description?.hexColor, '#64748B');
    });

    test('parses backgroundColorHex alias in icon', () {
      final json = <String, dynamic>{
        'icon': {
          'index': 1,
          'name': 'favorite',
          'backgroundColorHex': '#00FF00',
        },
      };

      final content = DSButtonCardContent.fromJson(json);
      expect(content.icon?.hexBackgroundColor, '#00FF00');
    });

    test('parses textureImage with opacity and fit', () {
      final json = <String, dynamic>{
        'textureImage': {
          'index': 0,
          'src': 'texture-pattern.png',
          'opacity': 0.35,
          'fit': 'cover',
        },
      };

      final content = DSButtonCardContent.fromJson(json);
      expect(content.textureImage?.src, 'texture-pattern.png');
      expect(content.textureImage?.opacity, 0.35);
      expect(content.textureImage?.transparency, 0.35);
      expect(content.textureImage?.fit, 'cover');
      expect(content.textureImage?.index, 0);
    });

    test('parses transparency alias in textureImage', () {
      final json = <String, dynamic>{
        'textureImage': {
          'src': 'pattern.png',
          'transparency': 0.5,
        },
      };

      final content = DSButtonCardContent.fromJson(json);
      expect(content.textureImage?.src, 'pattern.png');
      expect(content.textureImage?.opacity, 0.5);
      expect(content.textureImage?.index, 0);
    });
  });

  group('DsButtonCardCustom imageBuilder', () {
    tearDown(() {
      DsButtonCardCustom.globalImageBuilder = null;
    });

    testWidgets('uses local imageBuilder when provided', (tester) async {
      final content = DSButtonCardContent(
        image: DSButtonCardContentImage(
          index: 0,
          src: 'test-image-key',
          fit: 'contain',
        ),
      );

      String? capturedSrc;
      BoxFit? capturedFit;

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              imageBuilder: (context, src, fit) {
                capturedSrc = src;
                capturedFit = fit;
                return const Text('CustomImageLoaded');
              },
            ),
          ),
        ),
      );

      expect(find.text('CustomImageLoaded'), findsOneWidget);
      expect(capturedSrc, 'test-image-key');
      expect(capturedFit, BoxFit.contain);
    });

    testWidgets('uses globalImageBuilder when local imageBuilder is null',
        (tester) async {
      final content = DSButtonCardContent(
        image: DSButtonCardContentImage(
          index: 0,
          src: 'global-image-key',
          fit: 'cover',
        ),
      );

      String? capturedSrc;
      BoxFit? capturedFit;

      DsButtonCardCustom.globalImageBuilder = (context, src, fit) {
        capturedSrc = src;
        capturedFit = fit;
        return const Text('GlobalImageLoaded');
      };

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
            ),
          ),
        ),
      );

      expect(find.text('GlobalImageLoaded'), findsOneWidget);
      expect(capturedSrc, 'global-image-key');
      expect(capturedFit, BoxFit.cover);
    });

    testWidgets('local imageBuilder takes precedence over globalImageBuilder',
        (tester) async {
      final content = DSButtonCardContent(
        image: DSButtonCardContentImage(
          index: 0,
          src: 'priority-key',
          fit: 'fill',
        ),
      );

      DsButtonCardCustom.globalImageBuilder = (context, src, fit) {
        return const Text('GlobalImage');
      };

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              imageBuilder: (context, src, fit) {
                return const Text('LocalImage');
              },
            ),
          ),
        ),
      );

      expect(find.text('LocalImage'), findsOneWidget);
      expect(find.text('GlobalImage'), findsNothing);
    });
  });

  group('DsButtonCardCustom iconBuilder', () {
    tearDown(() {
      DsButtonCardCustom.globalIconBuilder = null;
    });

    testWidgets('uses local iconBuilder when provided', (tester) async {
      final content = DSButtonCardContent(
        icon: DSButtonCardContentIcon(
          index: 0,
          name: 'custom_remote_icon_ref',
          avatar: true,
        ),
      );

      DSButtonCardContentIcon? capturedIcon;

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              iconBuilder: (context, icon) {
                capturedIcon = icon;
                return const Text('CustomIconLoaded');
              },
            ),
          ),
        ),
      );

      expect(find.text('CustomIconLoaded'), findsOneWidget);
      expect(capturedIcon?.name, 'custom_remote_icon_ref');
      expect(capturedIcon?.avatar, isTrue);
    });

    testWidgets('uses globalIconBuilder when local iconBuilder is null',
        (tester) async {
      final content = DSButtonCardContent(
        icon: DSButtonCardContentIcon(
          index: 0,
          name: 'global_icon_ref',
        ),
      );

      DSButtonCardContentIcon? capturedIcon;

      DsButtonCardCustom.globalIconBuilder = (context, icon) {
        capturedIcon = icon;
        return const Text('GlobalIconLoaded');
      };

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
            ),
          ),
        ),
      );

      expect(find.text('GlobalIconLoaded'), findsOneWidget);
      expect(capturedIcon?.name, 'global_icon_ref');
    });

    testWidgets('local iconBuilder takes precedence over globalIconBuilder',
        (tester) async {
      final content = DSButtonCardContent(
        icon: DSButtonCardContentIcon(
          index: 0,
          name: 'priority_icon_ref',
        ),
      );

      DsButtonCardCustom.globalIconBuilder = (context, icon) {
        return const Text('GlobalIcon');
      };

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              iconBuilder: (context, icon) {
                return const Text('LocalIcon');
              },
            ),
          ),
        ),
      );

      expect(find.text('LocalIcon'), findsOneWidget);
      expect(find.text('GlobalIcon'), findsNothing);
    });
  });

  group('DsButtonCardCustom textureImage', () {
    tearDown(() {
      DsButtonCardCustom.globalImageBuilder = null;
    });

    testWidgets('renders textureImage with Positioned.fill and Opacity',
        (tester) async {
      final content = DSButtonCardContent(
        textureImage: DSButtonCardContentTextureImage(
          src: 'texture-key',
          opacity: 0.25,
          fit: 'cover',
        ),
        title: DSButtonCardContentText(
          index: 1,
          text: 'Title Above Texture',
        ),
      );

      String? capturedSrc;
      BoxFit? capturedFit;

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              imageBuilder: (context, src, fit) {
                capturedSrc = src;
                capturedFit = fit;
                return const Text('TextureRendered');
              },
            ),
          ),
        ),
      );

      expect(find.text('TextureRendered'), findsOneWidget);
      expect(find.text('Title Above Texture'), findsOneWidget);
      expect(capturedSrc, 'texture-key');
      expect(capturedFit, BoxFit.cover);

      // Verify Opacity widget
      final opacityFinder = find.byWidgetPredicate(
        (widget) => widget is Opacity && widget.opacity == 0.25,
      );
      expect(opacityFinder, findsOneWidget);
    });

    testWidgets(
        'textureImage uses globalImageBuilder when local imageBuilder is null',
        (tester) async {
      final content = DSButtonCardContent(
        textureImage: DSButtonCardContentTextureImage(
          src: 'global-texture-key',
          opacity: 0.5,
        ),
      );

      String? capturedSrc;

      DsButtonCardCustom.globalImageBuilder = (context, src, fit) {
        capturedSrc = src;
        return const Text('GlobalTextureLoaded');
      };

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
            ),
          ),
        ),
      );

      expect(find.text('GlobalTextureLoaded'), findsOneWidget);
      expect(capturedSrc, 'global-texture-key');
    });

    testWidgets('renders textureImage below positioned content in Stack',
        (tester) async {
      final content = DSButtonCardContent(
        textureImage: DSButtonCardContentTextureImage(
          src: 'bg-texture',
          opacity: 0.3,
        ),
        title: DSButtonCardContentText(
          index: 1,
          text: 'Top Text',
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              imageBuilder: (context, src, fit) => const Text('TextureWidget'),
            ),
          ),
        ),
      );

      final stack = tester.widget<Stack>(
        find
            .descendant(
              of: find.byType(DsButtonCardCustom),
              matching: find.byType(Stack),
            )
            .first,
      );
      expect(stack.children.length, 2);

      // Verify that texture is the first child (bottom) and title is the second child (top)
      expect(
          find.descendant(
              of: find.byWidget(stack.children[0]),
              matching: find.text('TextureWidget')),
          findsOneWidget);
      expect(
          find.descendant(
              of: find.byWidget(stack.children[1]),
              matching: find.text('Top Text')),
          findsOneWidget);
    });
  });

  group('DsButtonCardCustom textureIcon', () {
    tearDown(() {
      DsButtonCardCustom.globalIconBuilder = null;
    });

    testWidgets('inherits the icon name from content.icon when omitted', (
      tester,
    ) async {
      DSButtonCardContentIcon? received;

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: DSButtonCardContent.fromJson(const {
                'icon': {'index': 2, 'name': 'capsules', 'avatar': true},
                'textureIcon': {'index': 1, 'size': 120, 'opacity': 0.12},
              }),
              iconBuilder: (context, icon) {
                if (icon.decorative) {
                  received = icon;
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      );

      expect(received, isNotNull);
      expect(received!.name, 'capsules');
      // A textura nunca usa avatar e nao deve exibir loading/erro no host.
      expect(received!.avatar, isFalse);
      expect(received!.decorative, isTrue);
      // Escapa do teto de 64px do enum DSSize.
      expect(received!.sizePx, 120);
    });

    testWidgets('an explicit name overrides the inherited one', (tester) async {
      final names = <String>[];

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: DSButtonCardContent.fromJson(const {
                'icon': {'index': 2, 'name': 'capsules', 'avatar': true},
                'textureIcon': {'index': 1, 'name': 'favorite'},
              }),
              iconBuilder: (context, icon) {
                if (icon.decorative) {
                  names.add(icon.name!);
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      );

      expect(names, ['favorite']);
    });

    testWidgets('renders nothing when there is no icon to inherit', (
      tester,
    ) async {
      var decorativeCalls = 0;

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: DSButtonCardContent.fromJson(const {
                'textureIcon': {'index': 1},
              }),
            ),
          ),
        ),
      );

      // Sem builder e sem nome resolvivel, a camada e descartada em silencio.
      expect(decorativeCalls, 0);
      expect(tester.takeException(), isNull);
    });

    testWidgets('uses the global builder when no local one is given', (
      tester,
    ) async {
      DSButtonCardContentIcon? received;
      DsButtonCardCustom.globalIconBuilder = (context, icon) {
        if (icon.decorative) {
          received = icon;
        }
        return const SizedBox.shrink();
      };

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: DSButtonCardContent.fromJson(const {
                'icon': {'index': 2, 'name': 'fa_ribbon', 'avatar': true},
                'textureIcon': {'index': 1},
              }),
            ),
          ),
        ),
      );

      expect(received?.name, 'fa_ribbon');
      expect(received?.sizePx, DSButtonCardContentTextureIcon.defaultSize);
    });

    test('fromJson/toJson round trip preserves the authored fields', () {
      const raw = {
        'index': 1,
        'name': 'favorite',
        'position': 'bottomRight',
        'color': 'sysOnPrimaryContainer',
        'size': 140.0,
        'opacity': 0.1,
      };

      final parsed = DSButtonCardContentTextureIcon.fromJson(raw);

      expect(parsed.index, 1);
      expect(parsed.name, 'favorite');
      expect(parsed.position, DSButtonCardContentPosition.bottomRight);
      expect(parsed.color, 'sysOnPrimaryContainer');
      expect(parsed.size, 140.0);
      expect(parsed.opacity, 0.1);
      expect(parsed.toJson(), raw);
    });

    test('defaults cover size, opacity and position', () {
      final parsed = DSButtonCardContentTextureIcon.fromJson(const {});

      expect(parsed.effectiveSize, DSButtonCardContentTextureIcon.defaultSize);
      expect(
        parsed.effectiveOpacity,
        DSButtonCardContentTextureIcon.defaultOpacity,
      );
      expect(
        parsed.effectivePosition,
        DSButtonCardContentPosition.bottomRight,
      );
    });

    test('opacity is clamped to the 0..1 range', () {
      expect(
        DSButtonCardContentTextureIcon.fromJson(const {'opacity': 5})
            .effectiveOpacity,
        1.0,
      );
      expect(
        DSButtonCardContentTextureIcon.fromJson(const {'opacity': -2})
            .effectiveOpacity,
        0.0,
      );
    });

    test('textureIcon survives DSButtonCardContent.copyWith', () {
      final content = DSButtonCardContent.fromJson(const {
        'textureIcon': {'index': 1, 'name': 'favorite'},
      });

      expect(content.copyWith(maxHeight: 132).textureIcon?.name, 'favorite');
    });
  });

  group('resolveCardSpacing', () {
    test('resolves all standard spacing tokens correctly', () {
      expect(resolveCardSpacing('spacing-xs'), 8.0);
      expect(resolveCardSpacing('spacing-sm'), 16.0);
      expect(resolveCardSpacing('spacing-md'), 24.0);
      expect(resolveCardSpacing('spacing-lg'), 32.0);
      expect(resolveCardSpacing('spacing-xl'), 48.0);
      expect(resolveCardSpacing('spacing-2xl'), 56.0);
      expect(resolveCardSpacing('spacing-3xl'), 64.0);
    });

    test('resolves camelCase and underscore variations', () {
      expect(resolveCardSpacing('spacingXs'), 8.0);
      expect(resolveCardSpacing('spacing_sm'), 16.0);
      expect(resolveCardSpacing('spacingMd'), 24.0);
      expect(resolveCardSpacing('spacing2xl'), 56.0);
      expect(resolveCardSpacing('spacing_3xl'), 64.0);
    });

    test('returns 0.0 for null, empty or invalid tokens', () {
      expect(resolveCardSpacing(null), 0.0);
      expect(resolveCardSpacing(''), 0.0);
      expect(resolveCardSpacing('   '), 0.0);
      expect(resolveCardSpacing('invalid_token'), 0.0);
    });

    test('supports fallback for numeric strings', () {
      expect(resolveCardSpacing('12'), 12.0);
      expect(resolveCardSpacing('4.5'), 4.5);
    });
  });

  group('DSButtonCardContentText with spacing tokens', () {
    test('fromJson parses string spacing tokens for margins', () {
      final json = <String, dynamic>{
        'title': {
          'index': 1,
          'text': 'Card Title',
          'marginTop': 'spacing-xs',
          'marginLeft': 'spacing-sm',
          'marginBottom': 'spacing-md',
          'marginRight': 'spacing-lg',
        },
      };

      final content = DSButtonCardContent.fromJson(json);
      expect(content.title?.marginTop, 'spacing-xs');
      expect(content.title?.marginLeft, 'spacing-sm');
      expect(content.title?.marginBottom, 'spacing-md');
      expect(content.title?.marginRight, 'spacing-lg');
    });

    testWidgets('renders Padding with resolved token spacing', (tester) async {
      final content = DSButtonCardContent(
        title: DSButtonCardContentText(
          index: 0,
          text: 'Title with token margin',
          marginTop: 'spacing-xs',
          marginLeft: 'spacing-sm',
          marginBottom: 'spacing-md',
          marginRight: 'spacing-lg',
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
            ),
          ),
        ),
      );

      final paddingFinder = find.ancestor(
        of: find.text('Title with token margin'),
        matching: find.byType(Padding),
      );
      expect(paddingFinder, findsWidgets);

      // Verify that one of the paddings has the exact resolved values: top: 8, left: 16, bottom: 24, right: 32
      final paddings = tester.widgetList<Padding>(paddingFinder);
      final textPadding = paddings.firstWhere(
        (p) =>
            p.padding ==
            const EdgeInsets.only(
                top: 8.0, left: 16.0, bottom: 24.0, right: 32.0),
      );
      expect(
          textPadding.padding,
          const EdgeInsets.only(
              top: 8.0, left: 16.0, bottom: 24.0, right: 32.0));
    });
  });

  group('DSButtonCardContentImage with spacing tokens', () {
    test('fromJson parses string spacing tokens for margins', () {
      final json = <String, dynamic>{
        'image': {
          'index': 1,
          'src': 'test.png',
          'marginTop': 'spacing-xs',
          'marginLeft': 'spacing-sm',
          'marginBottom': 'spacing-md',
          'marginRight': 'spacing-lg',
        },
      };

      final content = DSButtonCardContent.fromJson(json);
      expect(content.image?.marginTop, 'spacing-xs');
      expect(content.image?.marginLeft, 'spacing-sm');
      expect(content.image?.marginBottom, 'spacing-md');
      expect(content.image?.marginRight, 'spacing-lg');
    });

    testWidgets('renders Padding with resolved token spacing for image',
        (tester) async {
      final content = DSButtonCardContent(
        maxHeight: 200,
        image: DSButtonCardContentImage(
          index: 0,
          src: 'test-image',
          position: DSButtonCardContentPosition.topRight,
          marginTop: 'spacing-xs',
          marginLeft: 'spacing-sm',
          marginBottom: 'spacing-md',
          marginRight: 'spacing-lg',
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              imageBuilder: (context, src, fit) => const SizedBox(
                key: Key('image_key'),
                width: 40,
                height: 40,
              ),
            ),
          ),
        ),
      );

      final paddingFinder = find.ancestor(
        of: find.byKey(const Key('image_key')),
        matching: find.byType(Padding),
      );
      expect(paddingFinder, findsWidgets);

      final paddings = tester.widgetList<Padding>(paddingFinder);
      final imagePadding = paddings.firstWhere(
        (p) =>
            p.padding ==
            const EdgeInsets.only(
                top: 8.0, left: 16.0, bottom: 24.0, right: 32.0),
      );
      expect(
          imagePadding.padding,
          const EdgeInsets.only(
              top: 8.0, left: 16.0, bottom: 24.0, right: 32.0));
    });
  });

  group('DSButtonCardContentIcon with spacing tokens', () {
    test('fromJson parses string spacing tokens for margins', () {
      final json = <String, dynamic>{
        'icon': {
          'index': 1,
          'name': 'location_on',
          'marginTop': 'spacing-xs',
          'marginLeft': 'spacing-sm',
          'marginBottom': 'spacing-md',
          'marginRight': 'spacing-lg',
        },
      };

      final content = DSButtonCardContent.fromJson(json);
      expect(content.icon?.marginTop, 'spacing-xs');
      expect(content.icon?.marginLeft, 'spacing-sm');
      expect(content.icon?.marginBottom, 'spacing-md');
      expect(content.icon?.marginRight, 'spacing-lg');
    });

    testWidgets('renders Padding with resolved token spacing for icon',
        (tester) async {
      final content = DSButtonCardContent(
        icon: DSButtonCardContentIcon(
          index: 0,
          name: 'custom_icon',
          marginTop: 'spacing-xs',
          marginLeft: 'spacing-sm',
          marginBottom: 'spacing-md',
          marginRight: 'spacing-lg',
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              iconBuilder: (context, icon) => const SizedBox(
                key: Key('icon_key'),
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      );

      final paddingFinder = find.ancestor(
        of: find.byKey(const Key('icon_key')),
        matching: find.byType(Padding),
      );
      expect(paddingFinder, findsWidgets);

      final paddings = tester.widgetList<Padding>(paddingFinder);
      final iconPadding = paddings.firstWhere(
        (p) =>
            p.padding ==
            const EdgeInsets.only(
                top: 8.0, left: 16.0, bottom: 24.0, right: 32.0),
      );
      expect(
          iconPadding.padding,
          const EdgeInsets.only(
              top: 8.0, left: 16.0, bottom: 24.0, right: 32.0));
    });
  });

  group('DSButtonCardContentText textAlign', () {
    test('fromJson parses textAlign enum from string', () {
      final json = <String, dynamic>{
        'title': {
          'index': 1,
          'text': 'Card Title',
          'textAlign': 'center',
        },
      };

      final content = DSButtonCardContent.fromJson(json);
      expect(content.title?.textAlign, TextAlign.center);
    });

    test('toJson serializes textAlign correctly', () {
      final model = DSButtonCardContentText(
        index: 1,
        text: 'Title',
        textAlign: TextAlign.right,
      );

      final json = model.toJson();
      expect(json['textAlign'], 'right');
    });

    test('copyWith updates textAlign correctly', () {
      final model = DSButtonCardContentText(
        index: 1,
        text: 'Title',
        textAlign: TextAlign.left,
      );

      final updated = model.copyWith(textAlign: TextAlign.center);
      expect(updated.textAlign, TextAlign.center);
      expect(updated.text, 'Title');
    });

    testWidgets('renders DSText with provided textAlign', (tester) async {
      final content = DSButtonCardContent(
        title: DSButtonCardContentText(
          index: 0,
          text: 'Centered Title',
          textAlign: TextAlign.center,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
            ),
          ),
        ),
      );

      final dsTextFinder = find.byWidgetPredicate(
        (widget) => widget is DSText && widget.text == 'Centered Title',
      );
      expect(dsTextFinder, findsOneWidget);

      final dsText = tester.widget<DSText>(dsTextFinder);
      expect(dsText.textAlign, TextAlign.center);
    });
  });

  group('DsButtonCardCustom overflow handling', () {
    testWidgets(
        'does not throw RenderFlex overflow when content height exceeds card maxHeight',
        (tester) async {
      final content = DSButtonCardContent(
        maxHeight: 120,
        image: DSButtonCardContentImage(
          index: 0,
          src: 'test-overflow-image',
          position: DSButtonCardContentPosition.topLeft,
          fitSize: 160,
          marginTop: 'spacing-xs',
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              imageBuilder: (context, src, fit) => const SizedBox(
                width: 160,
                height: 160,
              ),
            ),
          ),
        ),
      );

      expect(tester.takeException(), isNull);
      expect(find.byType(DsButtonCardCustom), findsOneWidget);
    });

    testWidgets(
        'does not throw RenderFlex overflow with multiple positions exceeding maxHeight',
        (tester) async {
      final content = DSButtonCardContent(
        maxHeight: 120,
        image: DSButtonCardContentImage(
          index: 0,
          src: 'test-overflow-image',
          position: DSButtonCardContentPosition.centerLeft,
          fitSize: 180,
        ),
        title: DSButtonCardContentText(
          index: 1,
          text: 'Title Right',
          position: DSButtonCardContentPosition.centerRight,
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          theme: BaseAppTheme.light,
          home: Scaffold(
            body: DsButtonCardCustom(
              content: content,
              imageBuilder: (context, src, fit) => const SizedBox(
                width: 180,
                height: 180,
              ),
            ),
          ),
        ),
      );

      expect(tester.takeException(), isNull);
      expect(find.text('Title Right'), findsOneWidget);
    });
  });
}
