import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:random_quote_generator/data/models/random_quote_model.dart';
import 'package:random_quote_generator/data/repositories/quote_repo_impl.dart';
import 'package:random_quote_generator/domain/failures/failures.dart';
import 'package:random_quote_generator/domain/usecases/random_quote_usecase.dart';

import 'random_quote_usecase_test.mocks.dart';

@GenerateNiceMocks([MockSpec<QuoteRepoImpl>()])
void main() {
  group("RandomQuoteUseCases", () {
    group("Should return a RandomQuoteDTO", () {
      test("When QuoteRepoImpl returns a RandomQuoteDTO", () async {
        final mockQuoteRepoImpl = MockQuoteRepoImpl();
        final randomQuoteUseCaseUnderTest =
            RandomQuoteUseCases(randomQuoteRepo: mockQuoteRepoImpl);

        when(mockQuoteRepoImpl.getRandomQuoteFromDatasource()).thenAnswer(
            (realInvocation) => Future.value(Right(RandomQuoteDTO(
                randomQuote: "Test quote", author: "Test Author"))));

        final result = await randomQuoteUseCaseUnderTest.getRandomQuote();

        expect(result.isLeft(), false);
        expect(result.isRight(), true);
        expect(
            result,
            Right<Failure, RandomQuoteDTO>(RandomQuoteDTO(
                randomQuote: "Test quote", author: "Test Author")));
        verify(mockQuoteRepoImpl.getRandomQuoteFromDatasource()).called(1);
        verifyNoMoreInteractions(mockQuoteRepoImpl);
      });

      group("should return left with", () {
        test("a ServerFailure", () async {
          final mockQuoteRepoImpl = MockQuoteRepoImpl();
          final randomQuoteUseCaseUnderTest =
              RandomQuoteUseCases(randomQuoteRepo: mockQuoteRepoImpl);

          when(mockQuoteRepoImpl.getRandomQuoteFromDatasource()).thenAnswer(
              (realInvocation) => Future.value(Left(ServerFailure())));

          final result = await randomQuoteUseCaseUnderTest.getRandomQuote();

          expect(result.isLeft(), true);
          expect(result.isRight(), false);
          expect(result, isA<Left<Failure, RandomQuoteDTO>>());
        });

        test("a GeneralFailure", () async {
          final mockQuoteRepoImpl = MockQuoteRepoImpl();
          final randomQuoteUseCaseUnderTest =
              RandomQuoteUseCases(randomQuoteRepo: mockQuoteRepoImpl);

          when(mockQuoteRepoImpl.getRandomQuoteFromDatasource()).thenAnswer(
              (realInvocation) => Future.value(Left(GeneralFailure())));

          final result = await randomQuoteUseCaseUnderTest.getRandomQuote();

          expect(result.isLeft(), true);
          expect(result.isRight(), false);
          expect(result, isA<Left<Failure, RandomQuoteDTO>>());
        });
      });
    });
  });
}
