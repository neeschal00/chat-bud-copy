import 'package:chat_bud/Screens/ChatScreen.dart';
import 'package:chat_bud/Screens/SelectContactPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("navigate to chat users", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: ChatScreen()));
    expect(find.byKey(ValueKey("floatingActionButton")), findsOneWidget);
  });
  testWidgets("select chat users", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SelectContact()));
    expect(find.text("No Contacts Available Currently"), findsOneWidget);
  });
}
