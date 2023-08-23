import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class AuthRepo extends GetxService {
  final ApiClient apiClient;

  AuthRepo({required this.apiClient});

  Future<Response> register(Map<String, dynamic> body) async {
    return await apiClient.postData(AppConstants.REGISTER_URI, body);
  }

  Future<Response> login(Map<String, dynamic> body) async {
    return await apiClient.postData(AppConstants.LOGIN_URI, body);
  }
}
