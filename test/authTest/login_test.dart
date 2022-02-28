import 'package:mockito/mockito.dart';
import 'package:chat_bud/providers/AuthenticationProvider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat_bud/Model/User.dart';
import 'package:http/http.dart' as http;

class MockUser extends Mock implements User {}

class MockAuth extends Mock implements AuthenticationProvider {}

void main() {
  final MockAuth mockAuth = MockAuth();

  test('test sign in', () async {
    final url = Uri.parse("http://localhost:3000/login");
    final res = await http
        .post(url, body: {'"email": "test@gmail.com","password": "123456"'});
    expect(res.statusCode, 500);

    // act
    // assert
  });
}
