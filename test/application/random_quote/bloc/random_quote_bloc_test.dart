import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:random_quote_generator/application/presentation/random_quote/bloc/random_quote_bloc.dart';
import 'package:random_quote_generator/data/models/random_quote_model.dart';
import 'package:random_quote_generator/domain/failures/failures.dart';
import 'package:random_quote_generator/domain/usecases/random_quote_usecase.dart';
import 'package:bloc_test/bloc_test.dart';

import 'random_quote_bloc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<RandomQuoteUseCases>()])
void main() {
  late RandomQuoteUseCases mockRandomQuoteUseCases;

  setUp(() {
    mockRandomQuoteUseCases = MockRandomQuoteUseCases();
  });

  group('RandomQuoteBloc', () {
    group('Should emit...', () {
      blocTest<RandomQuoteBloc, RandomQuoteState>(
        'nothing when no method is called',
        build: () =>
            RandomQuoteBloc(randomQuoteUseCases: mockRandomQuoteUseCases),
        expect: () => const <RandomQuoteState>[],
      );

      blocTest<RandomQuoteBloc, RandomQuoteState>(
        '[RandomQuoteState.loading(), RandomQuoteState.loaded(quote)] when quoteRequested is added',
        setUp: () => when(mockRandomQuoteUseCases.getRandomQuote()).thenAnswer(
          (_) async => Right<Failure, RandomQuoteDTO>(
            RandomQuoteDTO(randomQuote: 'Some quote', author: 'Some author'),
          ),
        ),
        build: () =>
            RandomQuoteBloc(randomQuoteUseCases: mockRandomQuoteUseCases),
        act: (bloc) => bloc.add(const RandomQuoteEvent.quoteRequested()),
        expect: () => <RandomQuoteState>[
          const RandomQuoteState.loading(),
          RandomQuoteState.loaded(
              RandomQuoteDTO(randomQuote: 'Some quote', author: 'Some author'))
        ],
      );

      group(
          '[RandomQuoteState.loading(), RandomQuoteState.error(errorMessage)] when quoteRequested is added',
          () {
        blocTest(
          'and a ServerFailure occurs',
          setUp: () => when(mockRandomQuoteUseCases.getRandomQuote())
              .thenAnswer((_) async => Left<Failure, RandomQuoteDTO>(
                    ServerFailure(),
                  )),
          build: () =>
              RandomQuoteBloc(randomQuoteUseCases: mockRandomQuoteUseCases),
          act: (bloc) => bloc.add(const RandomQuoteEvent.quoteRequested()),
          expect: () => <RandomQuoteState>[
            const RandomQuoteState.loading(),
            const RandomQuoteState.error(errorMessage: serverFailureMessage),
          ],
        );

        blocTest(
          'and a CacheFailure occurs',
          setUp: () => when(mockRandomQuoteUseCases.getRandomQuote())
              .thenAnswer((_) async => Left<Failure, RandomQuoteDTO>(
                    CacheFailure(),
                  )),
          build: () =>
              RandomQuoteBloc(randomQuoteUseCases: mockRandomQuoteUseCases),
          act: (bloc) => bloc.add(const RandomQuoteEvent.quoteRequested()),
          expect: () => <RandomQuoteState>[
            const RandomQuoteState.loading(),
            const RandomQuoteState.error(errorMessage: cacheFailureMessage),
          ],
        );

        blocTest(
          'and a GeneralFailure occurs',
          setUp: () => when(mockRandomQuoteUseCases.getRandomQuote())
              .thenAnswer((_) async => Left<Failure, RandomQuoteDTO>(
                    GeneralFailure(),
                  )),
          build: () =>
              RandomQuoteBloc(randomQuoteUseCases: mockRandomQuoteUseCases),
          act: (bloc) => bloc.add(const RandomQuoteEvent.quoteRequested()),
          expect: () => <RandomQuoteState>[
            const RandomQuoteState.loading(),
            const RandomQuoteState.error(errorMessage: generalFailureMessage),
          ],
        );
      });
    });
  });
}
