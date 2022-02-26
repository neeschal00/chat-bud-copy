import 'package:chat_bud/Model/ChatModel.dart';
import 'package:chat_bud/Model/ChatUsers.dart';
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
    test("get chats",async(){
      final chats = [
        Data(
          id: '1',
          chatName: 'test',
          createdAt: "32908470231",
          updatedAt: "2347823947120",
          V: "1",
          users: [
            ChatUser(email: "test@gmail.com",sid:"1",name:"test",pic:"test",password: "test",iV:"v"),
          ]
        ),
        Data(
          id: '2',
          name: 'test',
          createdAt: "23749012837",
          updatedAt: "23740213987",
          V: "1",
          users: [
            ChatUser(email: "test@gmail.com",sid:"1",name: "test",pic:"test",password: "test",iV:"v")
          ]
        ),
        Data(
          id: '3',
          name: 'test',
          createdAt: "9231023803",
          updatedAt: "021731834712",
          V:"h" ,
          users: [
            ChatUser(email: "test@gmail.com",sid:"1",name: "test",pic:"test",password: "test",iV:"v")
          ]
        ),
      ];
      when(mockChatProvider.getUserChats()).thenAnswer((_) async => chats);
      expect(await mockChatProvider.getUserChats(), chats);
    });
    });
}
