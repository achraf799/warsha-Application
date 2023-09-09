import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  final appBaseUrl;
  //late SharedPreferences sharedPreferences;
  //late String token;
  //late final sharedPreferences;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = const Duration(seconds: 30);
    //token = sharedPreferences.getString(AppConstants.TOKEN) ?? "";
    /* _mainHeaders = {
      'Content-type': 'application/json; charset=UTF=8',
      'Authorization': token
    };*/
  }

  Future<Response> postData(String uri, Map<String, dynamic> body) async {
    try {
      Response response = await post(uri, body);
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusText: e.toString());
    }
  }

  Future<Response> getData(String uri, {Map<String, String>? headers}) async {
    try {
      Response response = await get(uri);
      print("doneeee");
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusText: e.toString());
    }
  }

  Future<Response> putData(String uri, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    try {
      Response response = await put(uri, body);
      print(response.statusText);
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusText: e.toString());
    }
  }

  Future<Response> deleteData(String uri) async {
    try {
      Response response = await delete(uri);
      return response;
    } catch (e) {
      print(e.toString());
      return Response(statusText: e.toString());
    }
  }
}
