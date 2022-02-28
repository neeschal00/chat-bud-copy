import 'package:chat_bud/Screens/SingleChatPage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('get single chat page', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: MaterialApp(
        home: SingleChatPage(
            chatId: "392847289347jsdfb",
            chatName: "test",
            pic: "",
            otherUserId: "3289eu89wdhas"),
      ),
    ));
    expect(find.byType(SingleChatPage), findsOneWidget);
    expect(find.text("test"), findsOneWidget);
  });
}
