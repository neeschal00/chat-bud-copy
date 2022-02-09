class ChatMessages {
  final String? chat_id, message, sender_name, sender_avatar, time;
  final bool? isSent;

  ChatMessages(
      {this.chat_id,
      this.message,
      this.sender_name,
      this.sender_avatar,
      this.time,
      this.isSent});
}
