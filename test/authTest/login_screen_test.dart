// @dart=2.9
import 'package:chat_bud/Screens/LoginScreen.dart';
import 'package:chat_bud/Screens/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LoginScreen UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(LoginScreen());

    expect(find.byType(TextField), findsNWidgets(2));
    // expect(find.byType(RaisedButton), findsOneWidget);
    // expect(find.byType(FlatButton), findsOneWidget);
  });

  expect(find.byType(LoginScreen), findsOneWidget);
  testWidgets("input login details", (WidgetTester tester) async {
    final email = find.byKey(Key("email"));
    final password = find.byKey(Key('password'));
    final login = find.byKey(Key('login'));

    await tester.pumpWidget(MaterialApp(home: LoginScreen()));
    await tester.enterText(email, 'jawa@gmail.com');
    await tester.enterText(password, '123456');
    await tester.tap(login);
    await tester.pumpAndSettle();

    expect(find.text(''), findsOneWidget);
  });

  testWidgets("input registration details", (WidgetTester tester) async {
    final name = find.byKey(ValueKey('name'));
    final email = find.byKey(ValueKey('email'));
    final password = find.byKey(ValueKey('password'));
    final register = find.byKey(ValueKey('signup'));

    await tester.pumpWidget(MaterialApp(home: SignupScreen()));
    await tester.enterText(name, 'Jawa');
    await tester.enterText(email, '');
    await tester.enterText(password, '123456');
    await tester.tap(register);
    await tester.pumpAndSettle();

    expect(find.text(''), findsOneWidget);
  });
}
