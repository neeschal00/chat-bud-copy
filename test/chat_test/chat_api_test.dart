import 'package:chat_bud/Model/ChatModel.dart';
import 'package:chat_bud/providers/ChatsProvider.dart';
import 'package:chat_bud/providers/UsersProvider.dart';
import 'package:mockito/mockito.dart';


class MockChatProvider extends Mock implements ChatsNotifierProvider {}

class MockUserProvider extends Mock implements UserProviderNotifier {}


// class MockChatModel extends Mock implements ChatModel {}



void main() {

  MockChatProvider mockChatProvider;

  setUp(() {
    mockChatProvider = MockChatProvider();
  });

  
  // final message = Message.fromJson({})
  

  group('ChatProvider Test', () {
    test("First Test", () {
      expect(mockChatProvider, isInstanceOf<ChatsNotifierProvider>());
    });
    


  });

  test('ChatProvider should return a list of messages', () async {
    final mockChatModel = MockChatModel();
    when(mockChatModel.getUsersChat()).thenAnswer((_) async => [
      Data(
        id: "1",
        chatName: 'Test',
        users: ,
        createdAt: ,
        updatedAt: ,
        V: 
      ),


    ]);
    when(mockChatModel.getMessages()).thenAnswer((_) async => [message]);
    final chatProvider = Chat(mockChatModel);
    expect(await chatProvider.getUsersChat(), [message]);
  });

  

}
