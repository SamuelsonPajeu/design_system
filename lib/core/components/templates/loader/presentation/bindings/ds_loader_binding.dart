import 'package:design_system/core/components/templates/loader/data/services/loading_messages_service.dart';
import 'package:design_system/core/components/templates/loader/presentation/controllers/ds_loader_controller.dart';
import 'package:get/get.dart';

class DSLoaderBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.lazyPut<LoadingMessagesService>(
        () => LoadingMessagesService(),
      ),
      Bind.lazyPut<DSLoaderController>(
        () => DSLoaderController(
          loadingService: Get.find<LoadingMessagesService>(),
        ),
      ),
    ];
  }
}
