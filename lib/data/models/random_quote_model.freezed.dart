// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RandomQuoteDTO _$RandomQuoteDTOFromJson(Map<String, dynamic> json) {
  return _RandomQuoteDTO.fromJson(json);
}

/// @nodoc
mixin _$RandomQuoteDTO {
  String? get randomQuote => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomQuoteDTOCopyWith<RandomQuoteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomQuoteDTOCopyWith<$Res> {
  factory $RandomQuoteDTOCopyWith(
          RandomQuoteDTO value, $Res Function(RandomQuoteDTO) then) =
      _$RandomQuoteDTOCopyWithImpl<$Res, RandomQuoteDTO>;
  @useResult
  $Res call({String? randomQuote, String? author});
}

/// @nodoc
class _$RandomQuoteDTOCopyWithImpl<$Res, $Val extends RandomQuoteDTO>
    implements $RandomQuoteDTOCopyWith<$Res> {
  _$RandomQuoteDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? randomQuote = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      randomQuote: freezed == randomQuote
          ? _value.randomQuote
          : randomQuote // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomQuoteDTOImplCopyWith<$Res>
    implements $RandomQuoteDTOCopyWith<$Res> {
  factory _$$RandomQuoteDTOImplCopyWith(_$RandomQuoteDTOImpl value,
          $Res Function(_$RandomQuoteDTOImpl) then) =
      __$$RandomQuoteDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? randomQuote, String? author});
}

/// @nodoc
class __$$RandomQuoteDTOImplCopyWithImpl<$Res>
    extends _$RandomQuoteDTOCopyWithImpl<$Res, _$RandomQuoteDTOImpl>
    implements _$$RandomQuoteDTOImplCopyWith<$Res> {
  __$$RandomQuoteDTOImplCopyWithImpl(
      _$RandomQuoteDTOImpl _value, $Res Function(_$RandomQuoteDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? randomQuote = freezed,
    Object? author = freezed,
  }) {
    return _then(_$RandomQuoteDTOImpl(
      randomQuote: freezed == randomQuote
          ? _value.randomQuote
          : randomQuote // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomQuoteDTOImpl extends _RandomQuoteDTO {
  _$RandomQuoteDTOImpl({this.randomQuote, this.author}) : super._();

  factory _$RandomQuoteDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomQuoteDTOImplFromJson(json);

  @override
  final String? randomQuote;
  @override
  final String? author;

  @override
  String toString() {
    return 'RandomQuoteDTO(randomQuote: $randomQuote, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomQuoteDTOImpl &&
            (identical(other.randomQuote, randomQuote) ||
                other.randomQuote == randomQuote) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, randomQuote, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomQuoteDTOImplCopyWith<_$RandomQuoteDTOImpl> get copyWith =>
      __$$RandomQuoteDTOImplCopyWithImpl<_$RandomQuoteDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomQuoteDTOImplToJson(
      this,
    );
  }
}

abstract class _RandomQuoteDTO extends RandomQuoteDTO {
  factory _RandomQuoteDTO({final String? randomQuote, final String? author}) =
      _$RandomQuoteDTOImpl;
  _RandomQuoteDTO._() : super._();

  factory _RandomQuoteDTO.fromJson(Map<String, dynamic> json) =
      _$RandomQuoteDTOImpl.fromJson;

  @override
  String? get randomQuote;
  @override
  String? get author;
  @override
  @JsonKey(ignore: true)
  _$$RandomQuoteDTOImplCopyWith<_$RandomQuoteDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
