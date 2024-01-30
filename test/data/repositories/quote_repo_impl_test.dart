import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:random_quote_generator/data/datasources/random_quote_remote_data.dart';
import 'package:random_quote_generator/data/exceptions/exceptions.dart';
import 'package:random_quote_generator/data/models/random_quote_model.dart';
import 'package:random_quote_generator/data/repositories/quote_repo_impl.dart';
import 'package:random_quote_generator/domain/failures/failures.dart';

import 'quote_repo_impl_test.mocks.dart';

@GenerateNiceMocks([MockSpec<RandomRemoteQuoteDatasourceImpl>()])
void main() {
  group('QuoteRepoImpl', () {
    group("should return a RandomQuoteDTO", () {
      test("when RandomRemoteQuoteDatasource returns a RandomQuoteDTO",
          () async {
        final mockRandomRemoteQuoteDatasource =
            MockRandomRemoteQuoteDatasourceImpl();
        final quoteRepoImplUnderTest = QuoteRepoImpl(
            randomRemoteQuoteDatasource: mockRandomRemoteQuoteDatasource);

        when(mockRandomRemoteQuoteDatasource.getRandomQuoteFromApi())
            .thenAnswer((realInvocation) => Future.value(RandomQuoteDTO(
                randomQuote: "test quote", author: "test author")));

        final result =
            await quoteRepoImplUnderTest.getRandomQuoteFromDatasource();

        expect(result.isLeft(), false);
        expect(result.isRight(), true);
        expect(
            result,
            Right<Failure, RandomQuoteDTO>(RandomQuoteDTO(
                randomQuote: "test quote", author: "test author")));
        verify(mockRandomRemoteQuoteDatasource.getRandomQuoteFromApi())
            .called(1);
        verifyNoMoreInteractions(mockRandomRemoteQuoteDatasource);
      });
    });

    group("should return left with", () {
      test("a ServerFailure when a ServerException occurs", () async {
        final mockRandomRemoteQuoteDatasource =
            MockRandomRemoteQuoteDatasourceImpl();
        final quoteRepoImplUnderTest = QuoteRepoImpl(
            randomRemoteQuoteDatasource: mockRandomRemoteQuoteDatasource);

        when(mockRandomRemoteQuoteDatasource.getRandomQuoteFromApi())
            .thenThrow((ServerException()));

        final result =
            await quoteRepoImplUnderTest.getRandomQuoteFromDatasource();

        expect(result.isLeft(), true);
        expect(result.isRight(), false);
        expect(result, isA<Left<Failure, RandomQuoteDTO>>());
      });

      test("a GeneralFailure on all other Exceptions", () async {
        final mockRandomRemoteQuoteDatasource =
            MockRandomRemoteQuoteDatasourceImpl();
        final quoteRepoImplUnderTest = QuoteRepoImpl(
            randomRemoteQuoteDatasource: mockRandomRemoteQuoteDatasource);

        when(mockRandomRemoteQuoteDatasource.getRandomQuoteFromApi())
            .thenThrow((GeneralFailure()));

        final result =
            await quoteRepoImplUnderTest.getRandomQuoteFromDatasource();

        expect(result.isLeft(), true);
        expect(result.isRight(), false);
        expect(result, isA<Left<Failure, RandomQuoteDTO>>());
      });
    });
  });
}
