import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_quote_model.freezed.dart';

part 'random_quote_model.g.dart';

@Freezed(copyWith: true)
class RandomQuoteDTO with _$RandomQuoteDTO {
  RandomQuoteDTO._();
  factory RandomQuoteDTO({
    String? randomQuote,
    String? author,
  }) = _RandomQuoteDTO;

  factory RandomQuoteDTO.empty() => RandomQuoteDTO(
        randomQuote: "",
        author: "",
      );

  factory RandomQuoteDTO.fromJson(Map<String, dynamic> json) => RandomQuoteDTO(
      randomQuote: json["content"] as String?,
      author: json["author"] as String?);

  @override
  Map<String, dynamic> toJson() {
    return {
      "content": randomQuote,
      "author": author,
    };
  }
}
