// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_quote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RandomQuoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() quoteRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? quoteRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? quoteRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(quoteRequestedEvent value) quoteRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(quoteRequestedEvent value)? quoteRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(quoteRequestedEvent value)? quoteRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomQuoteEventCopyWith<$Res> {
  factory $RandomQuoteEventCopyWith(
          RandomQuoteEvent value, $Res Function(RandomQuoteEvent) then) =
      _$RandomQuoteEventCopyWithImpl<$Res, RandomQuoteEvent>;
}

/// @nodoc
class _$RandomQuoteEventCopyWithImpl<$Res, $Val extends RandomQuoteEvent>
    implements $RandomQuoteEventCopyWith<$Res> {
  _$RandomQuoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$quoteRequestedEventImplCopyWith<$Res> {
  factory _$$quoteRequestedEventImplCopyWith(_$quoteRequestedEventImpl value,
          $Res Function(_$quoteRequestedEventImpl) then) =
      __$$quoteRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$quoteRequestedEventImplCopyWithImpl<$Res>
    extends _$RandomQuoteEventCopyWithImpl<$Res, _$quoteRequestedEventImpl>
    implements _$$quoteRequestedEventImplCopyWith<$Res> {
  __$$quoteRequestedEventImplCopyWithImpl(_$quoteRequestedEventImpl _value,
      $Res Function(_$quoteRequestedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$quoteRequestedEventImpl implements quoteRequestedEvent {
  const _$quoteRequestedEventImpl();

  @override
  String toString() {
    return 'RandomQuoteEvent.quoteRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$quoteRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() quoteRequested,
  }) {
    return quoteRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? quoteRequested,
  }) {
    return quoteRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? quoteRequested,
    required TResult orElse(),
  }) {
    if (quoteRequested != null) {
      return quoteRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(quoteRequestedEvent value) quoteRequested,
  }) {
    return quoteRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(quoteRequestedEvent value)? quoteRequested,
  }) {
    return quoteRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(quoteRequestedEvent value)? quoteRequested,
    required TResult orElse(),
  }) {
    if (quoteRequested != null) {
      return quoteRequested(this);
    }
    return orElse();
  }
}

abstract class quoteRequestedEvent implements RandomQuoteEvent {
  const factory quoteRequestedEvent() = _$quoteRequestedEventImpl;
}

/// @nodoc
mixin _$RandomQuoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RandomQuoteDTO quote) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RandomQuoteDTO quote)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RandomQuoteDTO quote)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RandomQuoteStateInitial value) initial,
    required TResult Function(RandomQuoteStateLoading value) loading,
    required TResult Function(RandomQuoteStateLoaded value) loaded,
    required TResult Function(RandomQuoteStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RandomQuoteStateInitial value)? initial,
    TResult? Function(RandomQuoteStateLoading value)? loading,
    TResult? Function(RandomQuoteStateLoaded value)? loaded,
    TResult? Function(RandomQuoteStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RandomQuoteStateInitial value)? initial,
    TResult Function(RandomQuoteStateLoading value)? loading,
    TResult Function(RandomQuoteStateLoaded value)? loaded,
    TResult Function(RandomQuoteStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomQuoteStateCopyWith<$Res> {
  factory $RandomQuoteStateCopyWith(
          RandomQuoteState value, $Res Function(RandomQuoteState) then) =
      _$RandomQuoteStateCopyWithImpl<$Res, RandomQuoteState>;
}

/// @nodoc
class _$RandomQuoteStateCopyWithImpl<$Res, $Val extends RandomQuoteState>
    implements $RandomQuoteStateCopyWith<$Res> {
  _$RandomQuoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RandomQuoteStateInitialImplCopyWith<$Res> {
  factory _$$RandomQuoteStateInitialImplCopyWith(
          _$RandomQuoteStateInitialImpl value,
          $Res Function(_$RandomQuoteStateInitialImpl) then) =
      __$$RandomQuoteStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RandomQuoteStateInitialImplCopyWithImpl<$Res>
    extends _$RandomQuoteStateCopyWithImpl<$Res, _$RandomQuoteStateInitialImpl>
    implements _$$RandomQuoteStateInitialImplCopyWith<$Res> {
  __$$RandomQuoteStateInitialImplCopyWithImpl(
      _$RandomQuoteStateInitialImpl _value,
      $Res Function(_$RandomQuoteStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RandomQuoteStateInitialImpl implements RandomQuoteStateInitial {
  const _$RandomQuoteStateInitialImpl();

  @override
  String toString() {
    return 'RandomQuoteState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomQuoteStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RandomQuoteDTO quote) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RandomQuoteDTO quote)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RandomQuoteDTO quote)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RandomQuoteStateInitial value) initial,
    required TResult Function(RandomQuoteStateLoading value) loading,
    required TResult Function(RandomQuoteStateLoaded value) loaded,
    required TResult Function(RandomQuoteStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RandomQuoteStateInitial value)? initial,
    TResult? Function(RandomQuoteStateLoading value)? loading,
    TResult? Function(RandomQuoteStateLoaded value)? loaded,
    TResult? Function(RandomQuoteStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RandomQuoteStateInitial value)? initial,
    TResult Function(RandomQuoteStateLoading value)? loading,
    TResult Function(RandomQuoteStateLoaded value)? loaded,
    TResult Function(RandomQuoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RandomQuoteStateInitial implements RandomQuoteState {
  const factory RandomQuoteStateInitial() = _$RandomQuoteStateInitialImpl;
}

/// @nodoc
abstract class _$$RandomQuoteStateLoadingImplCopyWith<$Res> {
  factory _$$RandomQuoteStateLoadingImplCopyWith(
          _$RandomQuoteStateLoadingImpl value,
          $Res Function(_$RandomQuoteStateLoadingImpl) then) =
      __$$RandomQuoteStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RandomQuoteStateLoadingImplCopyWithImpl<$Res>
    extends _$RandomQuoteStateCopyWithImpl<$Res, _$RandomQuoteStateLoadingImpl>
    implements _$$RandomQuoteStateLoadingImplCopyWith<$Res> {
  __$$RandomQuoteStateLoadingImplCopyWithImpl(
      _$RandomQuoteStateLoadingImpl _value,
      $Res Function(_$RandomQuoteStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RandomQuoteStateLoadingImpl implements RandomQuoteStateLoading {
  const _$RandomQuoteStateLoadingImpl();

  @override
  String toString() {
    return 'RandomQuoteState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomQuoteStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RandomQuoteDTO quote) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RandomQuoteDTO quote)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RandomQuoteDTO quote)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RandomQuoteStateInitial value) initial,
    required TResult Function(RandomQuoteStateLoading value) loading,
    required TResult Function(RandomQuoteStateLoaded value) loaded,
    required TResult Function(RandomQuoteStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RandomQuoteStateInitial value)? initial,
    TResult? Function(RandomQuoteStateLoading value)? loading,
    TResult? Function(RandomQuoteStateLoaded value)? loaded,
    TResult? Function(RandomQuoteStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RandomQuoteStateInitial value)? initial,
    TResult Function(RandomQuoteStateLoading value)? loading,
    TResult Function(RandomQuoteStateLoaded value)? loaded,
    TResult Function(RandomQuoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RandomQuoteStateLoading implements RandomQuoteState {
  const factory RandomQuoteStateLoading() = _$RandomQuoteStateLoadingImpl;
}

/// @nodoc
abstract class _$$RandomQuoteStateLoadedImplCopyWith<$Res> {
  factory _$$RandomQuoteStateLoadedImplCopyWith(
          _$RandomQuoteStateLoadedImpl value,
          $Res Function(_$RandomQuoteStateLoadedImpl) then) =
      __$$RandomQuoteStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RandomQuoteDTO quote});

  $RandomQuoteDTOCopyWith<$Res> get quote;
}

/// @nodoc
class __$$RandomQuoteStateLoadedImplCopyWithImpl<$Res>
    extends _$RandomQuoteStateCopyWithImpl<$Res, _$RandomQuoteStateLoadedImpl>
    implements _$$RandomQuoteStateLoadedImplCopyWith<$Res> {
  __$$RandomQuoteStateLoadedImplCopyWithImpl(
      _$RandomQuoteStateLoadedImpl _value,
      $Res Function(_$RandomQuoteStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_$RandomQuoteStateLoadedImpl(
      null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as RandomQuoteDTO,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RandomQuoteDTOCopyWith<$Res> get quote {
    return $RandomQuoteDTOCopyWith<$Res>(_value.quote, (value) {
      return _then(_value.copyWith(quote: value));
    });
  }
}

/// @nodoc

class _$RandomQuoteStateLoadedImpl implements RandomQuoteStateLoaded {
  const _$RandomQuoteStateLoadedImpl(this.quote);

  @override
  final RandomQuoteDTO quote;

  @override
  String toString() {
    return 'RandomQuoteState.loaded(quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomQuoteStateLoadedImpl &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomQuoteStateLoadedImplCopyWith<_$RandomQuoteStateLoadedImpl>
      get copyWith => __$$RandomQuoteStateLoadedImplCopyWithImpl<
          _$RandomQuoteStateLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RandomQuoteDTO quote) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(quote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RandomQuoteDTO quote)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RandomQuoteDTO quote)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RandomQuoteStateInitial value) initial,
    required TResult Function(RandomQuoteStateLoading value) loading,
    required TResult Function(RandomQuoteStateLoaded value) loaded,
    required TResult Function(RandomQuoteStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RandomQuoteStateInitial value)? initial,
    TResult? Function(RandomQuoteStateLoading value)? loading,
    TResult? Function(RandomQuoteStateLoaded value)? loaded,
    TResult? Function(RandomQuoteStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RandomQuoteStateInitial value)? initial,
    TResult Function(RandomQuoteStateLoading value)? loading,
    TResult Function(RandomQuoteStateLoaded value)? loaded,
    TResult Function(RandomQuoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RandomQuoteStateLoaded implements RandomQuoteState {
  const factory RandomQuoteStateLoaded(final RandomQuoteDTO quote) =
      _$RandomQuoteStateLoadedImpl;

  RandomQuoteDTO get quote;
  @JsonKey(ignore: true)
  _$$RandomQuoteStateLoadedImplCopyWith<_$RandomQuoteStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RandomQuoteStateErrorImplCopyWith<$Res> {
  factory _$$RandomQuoteStateErrorImplCopyWith(
          _$RandomQuoteStateErrorImpl value,
          $Res Function(_$RandomQuoteStateErrorImpl) then) =
      __$$RandomQuoteStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$RandomQuoteStateErrorImplCopyWithImpl<$Res>
    extends _$RandomQuoteStateCopyWithImpl<$Res, _$RandomQuoteStateErrorImpl>
    implements _$$RandomQuoteStateErrorImplCopyWith<$Res> {
  __$$RandomQuoteStateErrorImplCopyWithImpl(_$RandomQuoteStateErrorImpl _value,
      $Res Function(_$RandomQuoteStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$RandomQuoteStateErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RandomQuoteStateErrorImpl implements RandomQuoteStateError {
  const _$RandomQuoteStateErrorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RandomQuoteState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomQuoteStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomQuoteStateErrorImplCopyWith<_$RandomQuoteStateErrorImpl>
      get copyWith => __$$RandomQuoteStateErrorImplCopyWithImpl<
          _$RandomQuoteStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RandomQuoteDTO quote) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(RandomQuoteDTO quote)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RandomQuoteDTO quote)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RandomQuoteStateInitial value) initial,
    required TResult Function(RandomQuoteStateLoading value) loading,
    required TResult Function(RandomQuoteStateLoaded value) loaded,
    required TResult Function(RandomQuoteStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RandomQuoteStateInitial value)? initial,
    TResult? Function(RandomQuoteStateLoading value)? loading,
    TResult? Function(RandomQuoteStateLoaded value)? loaded,
    TResult? Function(RandomQuoteStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RandomQuoteStateInitial value)? initial,
    TResult Function(RandomQuoteStateLoading value)? loading,
    TResult Function(RandomQuoteStateLoaded value)? loaded,
    TResult Function(RandomQuoteStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RandomQuoteStateError implements RandomQuoteState {
  const factory RandomQuoteStateError({required final String errorMessage}) =
      _$RandomQuoteStateErrorImpl;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$RandomQuoteStateErrorImplCopyWith<_$RandomQuoteStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
