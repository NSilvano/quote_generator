import 'dart:io';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<Client>()])
void main() {
  group('RandomRemoteQuoteDatasource', () {
    group('should return RandomQuoteDTO', () {
      test('when http response is 200 and has valid data', () {
        final mockClient = MockClient();
      });
    });
  });
}
