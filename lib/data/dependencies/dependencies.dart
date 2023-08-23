import 'package:get/get.dart';
import 'package:warsha/data/controllers/auth_controller.dart';
import 'package:warsha/data/repos/auth_repo.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  Get.lazyPut(() => AuthRepo(apiClient: Get.find()));

  Get.lazyPut(() => AuthController(authRepo: Get.find()));
}
