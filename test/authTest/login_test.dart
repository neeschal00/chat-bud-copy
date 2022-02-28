import 'package:mockito/mockito.dart';
import 'package:chat_bud/providers/AuthenticationProvider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat_bud/Model/User.dart';

class MockUser extends Mock implements User {}

class MockAuth extends Mock implements AuthenticationProvider {}

void main() {
  final MockAuth mockAuth = MockAuth();

  setUp(() {
    // setup code
  });
  tearDown(() {
    // tear down code
  });
  test('test sign in', () async {
    // arrange

    // act
    // assert
  });
}
