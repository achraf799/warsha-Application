import 'package:get/get.dart';
import 'package:warsha/data/models/user_model.dart';
import 'package:warsha/data/repos/auth_repo.dart';

class AuthController extends GetxController {
  final AuthRepo authRepo;

  //controller vars
  bool _isLoading = false;
  bool _isClient = true;
  UserModel? _regUser;
  UserModel? _loggedUsr;

  //setters and getters
  bool get isClient => _isClient;
  set setIsClient(bool boolean) {
    _isClient = boolean;
  }

  UserModel? get regUser => _regUser;
  set setRegUser(UserModel usr) {
    _regUser = usr;
  }

  UserModel? get loggedUsr => _loggedUsr;

  AuthController({required this.authRepo});
//methods
  Future<bool> register() async {
    _isLoading = true;
    update();
    if (_regUser != null) {
      Map<String, String> body = {
        "name": _regUser!.name!,
        "email": _regUser!.email!,
        "password": _regUser!.password!,
        "phone": _regUser!.phone!,
        "birthDate": _regUser!.birthDate!,
        "sexe": _regUser!.sexe!,
        "city": _regUser!.city!
      };
      Response response = await authRepo.register(body);
      if (response.statusCode == 200) {
        _loggedUsr = UserModel(
            userId: response.body['_id'],
            name: _regUser!.name,
            email: _regUser!.email,
            phone: _regUser!.phone,
            birthDate: _regUser!.birthDate,
            city: _regUser!.city,
            sexe: _regUser!.sexe,
            isClient: _isClient);
        _isLoading = false;
        update();
        return true;
      } else {
        print("response" + response.statusCode.toString());
        _isLoading = false;
        update();
        return false;
      }
    } else {
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
      _loggedUsr = UserModel(
        userId: response.body['user']['_id'],
        name: response.body['user']['name'],
        email: response.body['user']['email'],
        phone: response.body['user']['phone'],
        birthDate: response.body['user']['birthDate'],
        city: response.body['user']['city'],
        sexe: response.body['user']['sexe'],
        /*isClient: response.body['user']
            ['isClient'], //Don't forget to add it to DB*/
      );
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
