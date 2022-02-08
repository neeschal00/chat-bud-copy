import 'package:chat_bud/Models/chat.dart';
import 'package:get/get.dart';

class MessageViewController extends GetxController {
  List messageList = [
    Chat(
        name: "Jenny Wilson",
        lastMessage: "Hope you are doing well...",
        image: "assets/images/1.png",
        time: "3m ago",
        isActive: false),
    Chat(
      name: "Esther Howard",
      lastMessage: "Hello Abdullah! I am...",
      image: "assets/images/2.png",
      time: "8m ago",
      isActive: true,
    ),
    Chat(
      name: "Ralph Edwards",
      lastMessage: "Do you have update...",
      image: "assets/images/3.png",
      time: "5d ago",
      isActive: false,
    ),
    Chat(
      name: "Jacob Jones",
      lastMessage: "You’re welcome :)",
      image: "assets/images/4.png",
      time: "5d ago",
      isActive: true,
    ),
    Chat(
      name: "Albert Flores",
      lastMessage: "Thanks",
      image: "assets/images/5.png",
      time: "6d ago",
      isActive: false,
    ),
    Chat(
      name: "Jenny Wilson",
      lastMessage: "Hope you are doing well...",
      image: "assets/images/1.png",
      time: "3m ago",
      isActive: false,
    ),
    Chat(
      name: "Esther Howard",
      lastMessage: "Hello Abdullah! I am...",
      image: "assets/images/2.png",
      time: "8m ago",
      isActive: true,
    ),
    Chat(
      name: "Ralph Edwards",
      lastMessage: "Do you have update...",
      image: "assets/images/3.png",
      time: "5d ago",
      isActive: false,
    ),
  ];
}
