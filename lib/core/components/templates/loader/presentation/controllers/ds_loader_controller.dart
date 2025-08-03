import 'package:design_system/core/components/templates/loader/data/services/loading_messages_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DSLoaderController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final LoadingMessagesService _loadingService;

  DSLoaderController({required LoadingMessagesService loadingService})
      : _loadingService = loadingService;

  final Map<String, List<String>> _messagesCache = {};
  static const List<String> _fallbackMessages = [
    'Carregando...',
    'Por favor, aguarde um momento.',
  ];

  late final AnimationController animationController;
  late final Animation<double> animation;
  final Rx<List<String>> messages = Rx<List<String>>([]);
  final RxBool isLoadingMessages = true.obs;
  String? _currentScreenType;

  @override
  void onInit() {
    super.onInit();
    _initialize();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    final curve =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animation = Tween(begin: 1.0, end: 0.0).animate(curve);
    animationController.repeat(reverse: true);
  }

  Future<void> _initialize() async {
    // Pre-fetch and cache default messages
    final defaultMessages =
        await _loadingService.fetchMessagesForScreen('default');
    if (defaultMessages != null) {
      _messagesCache['default'] = defaultMessages;
    }
  }

  /// Gets messages for a screen, using cache if available.
  Future<void> fetchMessages(String screenType) async {
    if (screenType == _currentScreenType) return;

    isLoadingMessages.value = true;
    _currentScreenType = screenType;

    // 1. Check cache for the specific screen type
    if (_messagesCache.containsKey(screenType)) {
      messages.value = _messagesCache[screenType]!;
    } else {
      // 2. Not in cache, fetch from service
      final fetchedMessages =
          await _loadingService.fetchMessagesForScreen(screenType);
      if (fetchedMessages != null) {
        _messagesCache[screenType] = fetchedMessages; // Save to cache
        messages.value = fetchedMessages;
      } else {
        // 3. Fallback to default if specific messages aren't found
        messages.value = _messagesCache['default'] ?? _fallbackMessages;
      }
    }
    isLoadingMessages.value = false;
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
