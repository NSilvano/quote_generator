import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:random_quote_generator/data/datasources/random_quote_remote_data.dart';
import 'package:random_quote_generator/data/exceptions/exceptions.dart';
import 'package:random_quote_generator/data/models/random_quote_model.dart';

import 'random_quote_remote_data_test.mocks.dart';

@GenerateNiceMocks([MockSpec<Client>()])
void main() {
  group('RandomRemoteQuoteDatasource', () {
    group('should return RandomQuoteDTO', () {
      test('when http response is 200 and has valid data', () async {
        final mockClient = MockClient();
        final randomRemoteQuoteDatasourceUnderTest =
            RandomRemoteQuoteDatasourceImpl(client: mockClient);
        const responseBody =
            '{"content": "mock quote", "author": "Mock Author"}';

        when(mockClient.get(
          Uri.parse('https://api.quotable.io/random'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer(
            (realInvocation) => Future.value(Response(responseBody, 200)));

        final result =
            await randomRemoteQuoteDatasourceUnderTest.getRandomQuoteFromApi();

        expect(result,
            RandomQuoteDTO(randomQuote: "mock quote", author: "Mock Author"));
      });
    });

    group("should throw", () {
      test("A ServerException when the client response is not 200", () {
        final mockClient = MockClient();
        final randomRemoteQuoteDatasourceUnderTest =
            RandomRemoteQuoteDatasourceImpl(client: mockClient);

        when(mockClient.get(
          Uri.parse('https://api.quotable.io/random'),
          headers: {
            'Content-Type': 'application/json',
          },
        )).thenAnswer((realInvocation) => Future.value(Response("", 201)));

        expect(
            () => randomRemoteQuoteDatasourceUnderTest.getRandomQuoteFromApi(),
            throwsA(isA<ServerException>()));
      });
    });
  });
}
