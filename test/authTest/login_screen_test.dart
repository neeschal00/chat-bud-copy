import 'package:chat_bud/Screens/LoginScreen.dart';
import 'package:chat_bud/Screens/SignupScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("input login details", (WidgetTester tester) async {
    final email = find.byKey(ValueKey('email'));
    final password = find.byKey(ValueKey('password'));
    final login = find.byKey(ValueKey('login'));

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
