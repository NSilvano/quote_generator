import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_quote_generator/data/models/random_quote_model.dart';
import 'package:random_quote_generator/domain/failures/failures.dart';
import 'package:random_quote_generator/domain/usecases/random_quote_usecase.dart';

part 'random_quote_event.dart';
part 'random_quote_state.dart';
part 'random_quote_bloc.freezed.dart';

const generalFailureMessage = "Oops, something went wrong. Please try again";
const serverFailureMessage = "Oops, API Error. Please try again";
const cacheFailureMessage = "Oops, cache failed. Please try again";

class RandomQuoteBloc extends Bloc<RandomQuoteEvent, RandomQuoteState> {
  final RandomQuoteUseCases randomQuoteUseCases;
  RandomQuoteBloc({required this.randomQuoteUseCases})
      : super(const RandomQuoteState.initial()) {
    on<RandomQuoteEvent>((event, emit) async {
      await event.map(quoteRequested: (event) async {
        // Loading state
        emit(const RandomQuoteState.loading());
        final failureOrQuote = await randomQuoteUseCases.getRandomQuote();
        failureOrQuote.fold(
            (failure) => emit(RandomQuoteState.error(
                errorMessage: _mapFailureToMessage(failure))),
            (quote) => emit(RandomQuoteState.loaded(quote)));
      });
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case CacheFailure:
        return cacheFailureMessage;
      default:
        return generalFailureMessage;
    }
  }
}
