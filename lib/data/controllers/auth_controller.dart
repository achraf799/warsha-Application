import 'package:get/get.dart';
import 'package:warsha/data/repos/auth_repo.dart';

class AuthController extends GetxController {
  final AuthRepo authRepo;

  //controller vars
  bool _isLoading = false;

  AuthController({required this.authRepo});

  Future<bool> register(String name, String email, String phone,
      String password, String birthDate, String sexe, String city) async {
    _isLoading = true;
    update();
    Map<String, String> body = {
      "name": name,
      "email": email,
      "password": password,
      "phone": phone,
      "birthDate": birthDate,
      "sexe": sexe,
      "city": city
    };
    Response response = await authRepo.register(body);
    if (response.statusCode == 200) {
      _isLoading = false;
      update();
      return true;
    } else {
      print("response" + response.statusCode.toString());
      _isLoading = false;
      update();
      return false;
    }
  }

  Future<bool> login(
    String phone,
    String password,
  ) async {
    _isLoading = true;
    update();
    Map<String, String> body = {
      "phone": phone,
      "password": password,
    };
    Response response = await authRepo.login(body);
    if (response.statusCode == 200) {
      _isLoading = false;
      update();
      return true;
    } else {
      print("response" + response.statusCode.toString());
      _isLoading = false;
      update();
      return false;
    }
  }
}
