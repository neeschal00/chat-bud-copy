class ChatMessages {
  final String? chat_id,
      message,
      sender_name,
      sender_avatar,
      mediaType,
      mediaUrl,
      time;
  final bool? isSent, isMedia;

  ChatMessages(
      {this.chat_id,
      this.message,
      this.sender_name,
      this.sender_avatar,
      this.mediaType,
      this.mediaUrl,
      this.isMedia,
      this.time,
      this.isSent});
}
