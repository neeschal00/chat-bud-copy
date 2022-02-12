import 'package:chat_bud/Models/chat.dart';
import 'package:chat_bud/Models/chat_messages.dart';
import 'package:get/get.dart';

class MessageViewController extends GetxController {
  Map messages = {
    "name": "Jenny Wilson",
    "messages": [
      ChatMessages(
          chat_id: "127tgeibsiqbskj",
          message: "Hey, how are you?",
          time: "12:00",
          sender_avatar: "assets/images/1.png",
          isMedia: false,
          mediaType: "",
          mediaUrl: "",
          sender_name: "jaikant",
          isSent: true),
      ChatMessages(
          chat_id: "127tgeibsiqbskj",
          message: "call me",
          time: "13:00",
          sender_avatar: "assets/images/1.png",
          isMedia: false,
          mediaType: "",
          mediaUrl: "",
          sender_name: "jaikant",
          isSent: true),
      ChatMessages(
          chat_id: "127tgeibsiqbskj",
          message: "Hey, how are you?",
          time: "12:00",
          sender_avatar: "assets/images/1.png",
          isMedia: false,
          mediaType: "",
          mediaUrl: "assets/images/1.png",
          sender_name: "jenny",
          isSent: true),
      ChatMessages(
          chat_id: "127tgeibsiqbskj",
          message: "Hey, how are you?",
          time: "12:00",
          sender_avatar: "assets/images/1.png",
          isMedia: false,
          mediaType: "",
          mediaUrl: "",
          sender_name: "jenny",
          isSent: true),
      ChatMessages(
          chat_id: "127tgeibsiqbskj",
          message: "",
          time: "20:00",
          sender_avatar: "assets/images/1.png",
          isMedia: true,
          mediaType: "image",
          mediaUrl: "assets/images/1.png",
          sender_name: "jenny",
          isSent: true),
    ]
  };

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
    Chat(
      name: "Ralph Edwards",
      lastMessage: "Do you have update...",
      image: "assets/images/3.png",
      time: "5d ago",
      isActive: false,
    ),
    Chat(
      name: "Edwards",
      lastMessage: "Do you have update...",
      image: "assets/images/1.png",
      time: "51 min ago",
      isActive: false,
    ),
    Chat(
      name: "Ralph",
      lastMessage: "Do you have update...",
      image: "assets/images/2.png",
      time: "7d ago",
      isActive: true,
    ),
  ];
}
