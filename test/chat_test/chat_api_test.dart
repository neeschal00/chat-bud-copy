import 'package:chat_bud/Model/ChatModel.dart';
import 'package:chat_bud/providers/ChatsProvider.dart';
import 'package:chat_bud/providers/UsersProvider.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockChatProvider extends Mock implements ChatsNotifierProvider {}

class MockUserProvider extends Mock implements UserProviderNotifier {}

// class MockChatModel extends Mock implements ChatModel {}

void main() {
  final MockChatProvider mockChatProvider = MockChatProvider();

  // setUp(() {
  //   mockChatProvider = MockChatProvider();
  // });

  // final message = Message.fromJson({})

  test('ChatModel should be instantiated', () {
    // final chatModel = ChatModel();
    // expect(chatModel, isInstanceOf<ChatModel>());
  });
}
