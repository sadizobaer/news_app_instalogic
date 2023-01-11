import 'package:get/get.dart';
import 'api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    ApiClient.init();
  }
}
