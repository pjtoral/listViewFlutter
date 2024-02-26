import 'dart:io';
import "package:flutter_test/flutter_test.dart";
import 'package:http/http.dart';
import 'package:profile_app_2/API/api.dart';
import 'package:profile_app_2/Models/profile.dart';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'auxilliary.dart';

class MockHttpClient extends Mock implements http.Client {}

main() {
  late ApiVerbs api;
  late MockHttpClient mockClient2;

  setUp(() => {
        mockClient2 = MockHttpClient(),
        api = ApiVerbs(mockClient2),
      });

  group('ApiVerbs Class Get Method', () {
    test(
      'Given ApiVerbs, When Instantiated and get function, Then return response',
      () async {
        when(() => mockClient2.get(Uri.parse('http://192.168.22.4:3003/users')))
            .thenAnswer(
                (_) => Future.delayed(Duration.zero, () => Response(val, 200)));

        //ACT
        var response = await api.get();
        //ASSERT
        expect(response, isA<String>());
      },
    );

    test(
      'Given ApiVerbs, When Instantiated and get function, Then return response',
      () async {
        when(() => mockClient2.get(Uri.parse('http://192.168.22.4:3003/users')))
            .thenAnswer(
                (_) => Future.delayed(Duration.zero, () => Response(val, 404)));

        //ASSERT
        expect(api.get(), throwsException);
      },
    );
  });

  tearDown(() => {
        mockClient2 = MockHttpClient(),
        api = ApiVerbs(mockClient2),
      });
}
