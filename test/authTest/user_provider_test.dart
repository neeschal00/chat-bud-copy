import 'package:chat_bud/providers/UsersProvider.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_test/flutter_test.dart';

class MockUserProvider extends Mock implements UserProviderNotifier {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  MockUserProvider mockUserProvider;
  SharedPreferences mockSharedPreferences;

  mockUserProvider = MockUserProvider();
  mockSharedPreferences = MockSharedPreferences();

  group('UserProvider', () {
    test('should return null if user is not logged in', () async {
      //arrange
      when(mockSharedPreferences.getString(any));

      //act
      final result = await UserProviderNotifier();
      //assert
      expect(result, null);
    });

    test('should return user if user is logged in', () async {
      //arrange
      when(mockSharedPreferences.getString(any)).thenReturn('user');

      //act
      final result = await UserProviderNotifier();

      //assert
      expect(result, 'user');
    });
  });
}
