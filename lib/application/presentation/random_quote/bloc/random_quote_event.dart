part of 'random_quote_bloc.dart';

@freezed
class RandomQuoteEvent with _$RandomQuoteEvent {
  const factory RandomQuoteEvent.quoteRequested() = quoteRequestedEvent;
}
