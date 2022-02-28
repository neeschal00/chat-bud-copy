import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("input login details", (WidgetTester tester) async {
    final email = find.byKey(ValueKey('email'));
    final password = find.byKey(ValueKey('password'));
  });
}
