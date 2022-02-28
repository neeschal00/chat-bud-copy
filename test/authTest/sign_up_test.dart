import 'package:chat_bud/Screens/SignupScreen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('test signup form', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SignupScreen(),
      ),
    ));

    expect(find.byType(TextFormField), findsNWidgets(3));
    expect(find.byKey(Key('signup')), findsOneWidget);
  });
}
