import 'package:get/get.dart';
import 'package:warsha/data/api/api_client.dart';
import 'package:warsha/utils/app_constants.dart';

class MessagesRepo extends GetxService {
  final ApiClient apiClinet;

  MessagesRepo({required this.apiClinet});

  Future<Response> getAllConvs(String userId) async {
    return await apiClinet.getData(AppConstants.GET_ALL_CONVS + "/$userId");
  }
}
