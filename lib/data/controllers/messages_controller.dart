import 'package:get/get.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:warsha/data/controllers/auth_controller.dart';
import 'package:warsha/data/models/conversation_model.dart';
import 'package:warsha/data/repos/messages_repo.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../../utils/app_constants.dart';

class MessagesController extends GetxController {
  final MessagesRepo messagesRepo;

  MessagesController({required this.messagesRepo});

  //vars
  List<ConversationModel> _conversations = [];
  late IO.Socket socket;
  ConversationModel? _currConv;

  //setters & getters
  List<ConversationModel> get conversations => _conversations;
  ConversationModel? get currConv => _currConv;
  set setCurrConv(ConversationModel conv) {
    _currConv = conv;
  }

  //methods
  Future<void> getAllConvs() async {
    Response response = await messagesRepo
        .getAllConvs(Get.find<AuthController>().loggedUsr!.userId!);

    if (response.statusCode == 200) {
      _conversations = [];
      for (var element in response.body['conversations']) {
        _conversations.add(ConversationModel.fromJson(element));
      }
      update();
    } else {
      print(response.statusText);
    }
  }

  void sendMessage(Map<String, dynamic> mssgBody) async {
    /*if (notificationManager.deviceToken == null) {
      notificationManager.getDeviceToken();
    }*/
    socket.emit("send_message", mssgBody);
  }

  @override
  void onInit() async {
    super.onInit();
    await getAllConvs();
    socket = IO.io(AppConstants.BASE_URL,
        OptionBuilder().setTransports(['websocket']).setTimeout(5000).build());
    socket.connect();
    socket.onConnectError((data) {
      print("error connecting to socekt.io  " + data);
    });
    socket.on("receive_message", (data) async {
      //receive message code
      update();
    });
  }
}
