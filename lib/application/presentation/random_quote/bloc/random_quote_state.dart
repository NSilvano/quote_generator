part of 'random_quote_bloc.dart';

@freezed
class RandomQuoteState with _$RandomQuoteState {
  const factory RandomQuoteState.initial() = RandomQuoteStateInitial;
  const factory RandomQuoteState.loading() = RandomQuoteStateLoading;
  const factory RandomQuoteState.loaded(RandomQuoteDTO quote) =
      RandomQuoteStateLoaded;
  const factory RandomQuoteState.error({required String errorMessage}) =
      RandomQuoteStateError;
}
