// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id, int number) getTicket,
    required TResult Function(BuyTicket buyTicket) buyTicket,
    required TResult Function() fetchStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, int number)? getTicket,
    TResult? Function(BuyTicket buyTicket)? buyTicket,
    TResult? Function()? fetchStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, int number)? getTicket,
    TResult Function(BuyTicket buyTicket)? buyTicket,
    TResult Function()? fetchStory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTicket value) getTicket,
    required TResult Function(_BuyTicket value) buyTicket,
    required TResult Function(_FetchStory value) fetchStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTicket value)? getTicket,
    TResult? Function(_BuyTicket value)? buyTicket,
    TResult? Function(_FetchStory value)? fetchStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTicket value)? getTicket,
    TResult Function(_BuyTicket value)? buyTicket,
    TResult Function(_FetchStory value)? fetchStory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketEventCopyWith<$Res> {
  factory $TicketEventCopyWith(
          TicketEvent value, $Res Function(TicketEvent) then) =
      _$TicketEventCopyWithImpl<$Res, TicketEvent>;
}

/// @nodoc
class _$TicketEventCopyWithImpl<$Res, $Val extends TicketEvent>
    implements $TicketEventCopyWith<$Res> {
  _$TicketEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TicketEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id, int number) getTicket,
    required TResult Function(BuyTicket buyTicket) buyTicket,
    required TResult Function() fetchStory,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, int number)? getTicket,
    TResult? Function(BuyTicket buyTicket)? buyTicket,
    TResult? Function()? fetchStory,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, int number)? getTicket,
    TResult Function(BuyTicket buyTicket)? buyTicket,
    TResult Function()? fetchStory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTicket value) getTicket,
    required TResult Function(_BuyTicket value) buyTicket,
    required TResult Function(_FetchStory value) fetchStory,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTicket value)? getTicket,
    TResult? Function(_BuyTicket value)? buyTicket,
    TResult? Function(_FetchStory value)? fetchStory,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTicket value)? getTicket,
    TResult Function(_BuyTicket value)? buyTicket,
    TResult Function(_FetchStory value)? fetchStory,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TicketEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetTicketImplCopyWith<$Res> {
  factory _$$GetTicketImplCopyWith(
          _$GetTicketImpl value, $Res Function(_$GetTicketImpl) then) =
      __$$GetTicketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, int number});
}

/// @nodoc
class __$$GetTicketImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$GetTicketImpl>
    implements _$$GetTicketImplCopyWith<$Res> {
  __$$GetTicketImplCopyWithImpl(
      _$GetTicketImpl _value, $Res Function(_$GetTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
  }) {
    return _then(_$GetTicketImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetTicketImpl implements _GetTicket {
  const _$GetTicketImpl(this.id, this.number);

  @override
  final String id;
  @override
  final int number;

  @override
  String toString() {
    return 'TicketEvent.getTicket(id: $id, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, number);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTicketImplCopyWith<_$GetTicketImpl> get copyWith =>
      __$$GetTicketImplCopyWithImpl<_$GetTicketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id, int number) getTicket,
    required TResult Function(BuyTicket buyTicket) buyTicket,
    required TResult Function() fetchStory,
  }) {
    return getTicket(id, number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, int number)? getTicket,
    TResult? Function(BuyTicket buyTicket)? buyTicket,
    TResult? Function()? fetchStory,
  }) {
    return getTicket?.call(id, number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, int number)? getTicket,
    TResult Function(BuyTicket buyTicket)? buyTicket,
    TResult Function()? fetchStory,
    required TResult orElse(),
  }) {
    if (getTicket != null) {
      return getTicket(id, number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTicket value) getTicket,
    required TResult Function(_BuyTicket value) buyTicket,
    required TResult Function(_FetchStory value) fetchStory,
  }) {
    return getTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTicket value)? getTicket,
    TResult? Function(_BuyTicket value)? buyTicket,
    TResult? Function(_FetchStory value)? fetchStory,
  }) {
    return getTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTicket value)? getTicket,
    TResult Function(_BuyTicket value)? buyTicket,
    TResult Function(_FetchStory value)? fetchStory,
    required TResult orElse(),
  }) {
    if (getTicket != null) {
      return getTicket(this);
    }
    return orElse();
  }
}

abstract class _GetTicket implements TicketEvent {
  const factory _GetTicket(final String id, final int number) = _$GetTicketImpl;

  String get id;
  int get number;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTicketImplCopyWith<_$GetTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BuyTicketImplCopyWith<$Res> {
  factory _$$BuyTicketImplCopyWith(
          _$BuyTicketImpl value, $Res Function(_$BuyTicketImpl) then) =
      __$$BuyTicketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuyTicket buyTicket});
}

/// @nodoc
class __$$BuyTicketImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$BuyTicketImpl>
    implements _$$BuyTicketImplCopyWith<$Res> {
  __$$BuyTicketImplCopyWithImpl(
      _$BuyTicketImpl _value, $Res Function(_$BuyTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyTicket = null,
  }) {
    return _then(_$BuyTicketImpl(
      null == buyTicket
          ? _value.buyTicket
          : buyTicket // ignore: cast_nullable_to_non_nullable
              as BuyTicket,
    ));
  }
}

/// @nodoc

class _$BuyTicketImpl implements _BuyTicket {
  const _$BuyTicketImpl(this.buyTicket);

  @override
  final BuyTicket buyTicket;

  @override
  String toString() {
    return 'TicketEvent.buyTicket(buyTicket: $buyTicket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuyTicketImpl &&
            (identical(other.buyTicket, buyTicket) ||
                other.buyTicket == buyTicket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buyTicket);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuyTicketImplCopyWith<_$BuyTicketImpl> get copyWith =>
      __$$BuyTicketImplCopyWithImpl<_$BuyTicketImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id, int number) getTicket,
    required TResult Function(BuyTicket buyTicket) buyTicket,
    required TResult Function() fetchStory,
  }) {
    return buyTicket(this.buyTicket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, int number)? getTicket,
    TResult? Function(BuyTicket buyTicket)? buyTicket,
    TResult? Function()? fetchStory,
  }) {
    return buyTicket?.call(this.buyTicket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, int number)? getTicket,
    TResult Function(BuyTicket buyTicket)? buyTicket,
    TResult Function()? fetchStory,
    required TResult orElse(),
  }) {
    if (buyTicket != null) {
      return buyTicket(this.buyTicket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTicket value) getTicket,
    required TResult Function(_BuyTicket value) buyTicket,
    required TResult Function(_FetchStory value) fetchStory,
  }) {
    return buyTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTicket value)? getTicket,
    TResult? Function(_BuyTicket value)? buyTicket,
    TResult? Function(_FetchStory value)? fetchStory,
  }) {
    return buyTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTicket value)? getTicket,
    TResult Function(_BuyTicket value)? buyTicket,
    TResult Function(_FetchStory value)? fetchStory,
    required TResult orElse(),
  }) {
    if (buyTicket != null) {
      return buyTicket(this);
    }
    return orElse();
  }
}

abstract class _BuyTicket implements TicketEvent {
  const factory _BuyTicket(final BuyTicket buyTicket) = _$BuyTicketImpl;

  BuyTicket get buyTicket;

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuyTicketImplCopyWith<_$BuyTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchStoryImplCopyWith<$Res> {
  factory _$$FetchStoryImplCopyWith(
          _$FetchStoryImpl value, $Res Function(_$FetchStoryImpl) then) =
      __$$FetchStoryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchStoryImplCopyWithImpl<$Res>
    extends _$TicketEventCopyWithImpl<$Res, _$FetchStoryImpl>
    implements _$$FetchStoryImplCopyWith<$Res> {
  __$$FetchStoryImplCopyWithImpl(
      _$FetchStoryImpl _value, $Res Function(_$FetchStoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchStoryImpl implements _FetchStory {
  const _$FetchStoryImpl();

  @override
  String toString() {
    return 'TicketEvent.fetchStory()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchStoryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String id, int number) getTicket,
    required TResult Function(BuyTicket buyTicket) buyTicket,
    required TResult Function() fetchStory,
  }) {
    return fetchStory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String id, int number)? getTicket,
    TResult? Function(BuyTicket buyTicket)? buyTicket,
    TResult? Function()? fetchStory,
  }) {
    return fetchStory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String id, int number)? getTicket,
    TResult Function(BuyTicket buyTicket)? buyTicket,
    TResult Function()? fetchStory,
    required TResult orElse(),
  }) {
    if (fetchStory != null) {
      return fetchStory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetTicket value) getTicket,
    required TResult Function(_BuyTicket value) buyTicket,
    required TResult Function(_FetchStory value) fetchStory,
  }) {
    return fetchStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetTicket value)? getTicket,
    TResult? Function(_BuyTicket value)? buyTicket,
    TResult? Function(_FetchStory value)? fetchStory,
  }) {
    return fetchStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetTicket value)? getTicket,
    TResult Function(_BuyTicket value)? buyTicket,
    TResult Function(_FetchStory value)? fetchStory,
    required TResult orElse(),
  }) {
    if (fetchStory != null) {
      return fetchStory(this);
    }
    return orElse();
  }
}

abstract class _FetchStory implements TicketEvent {
  const factory _FetchStory() = _$FetchStoryImpl;
}

/// @nodoc
mixin _$TicketState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TicketEntity> tickets) success,
    required TResult Function(List<LotteryTicketEntity> lotteryTicket)
        successStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TicketEntity> tickets)? success,
    TResult? Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TicketEntity> tickets)? success,
    TResult Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessStory value) successStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessStory value)? successStory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessStory value)? successStory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStateCopyWith<$Res> {
  factory $TicketStateCopyWith(
          TicketState value, $Res Function(TicketState) then) =
      _$TicketStateCopyWithImpl<$Res, TicketState>;
}

/// @nodoc
class _$TicketStateCopyWithImpl<$Res, $Val extends TicketState>
    implements $TicketStateCopyWith<$Res> {
  _$TicketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TicketState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TicketEntity> tickets) success,
    required TResult Function(List<LotteryTicketEntity> lotteryTicket)
        successStory,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TicketEntity> tickets)? success,
    TResult? Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TicketEntity> tickets)? success,
    TResult Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessStory value) successStory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessStory value)? successStory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessStory value)? successStory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TicketState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'TicketState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TicketEntity> tickets) success,
    required TResult Function(List<LotteryTicketEntity> lotteryTicket)
        successStory,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TicketEntity> tickets)? success,
    TResult? Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TicketEntity> tickets)? success,
    TResult Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessStory value) successStory,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessStory value)? successStory,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessStory value)? successStory,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TicketState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TicketState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TicketEntity> tickets) success,
    required TResult Function(List<LotteryTicketEntity> lotteryTicket)
        successStory,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TicketEntity> tickets)? success,
    TResult? Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TicketEntity> tickets)? success,
    TResult Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessStory value) successStory,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessStory value)? successStory,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessStory value)? successStory,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements TicketState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TicketEntity> tickets});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$SuccessImpl(
      null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<TicketEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<TicketEntity> tickets) : _tickets = tickets;

  final List<TicketEntity> _tickets;
  @override
  List<TicketEntity> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketState.success(tickets: $tickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TicketEntity> tickets) success,
    required TResult Function(List<LotteryTicketEntity> lotteryTicket)
        successStory,
  }) {
    return success(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TicketEntity> tickets)? success,
    TResult? Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
  }) {
    return success?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TicketEntity> tickets)? success,
    TResult Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessStory value) successStory,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessStory value)? successStory,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessStory value)? successStory,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements TicketState {
  const factory _Success(final List<TicketEntity> tickets) = _$SuccessImpl;

  List<TicketEntity> get tickets;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStoryImplCopyWith<$Res> {
  factory _$$SuccessStoryImplCopyWith(
          _$SuccessStoryImpl value, $Res Function(_$SuccessStoryImpl) then) =
      __$$SuccessStoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LotteryTicketEntity> lotteryTicket});
}

/// @nodoc
class __$$SuccessStoryImplCopyWithImpl<$Res>
    extends _$TicketStateCopyWithImpl<$Res, _$SuccessStoryImpl>
    implements _$$SuccessStoryImplCopyWith<$Res> {
  __$$SuccessStoryImplCopyWithImpl(
      _$SuccessStoryImpl _value, $Res Function(_$SuccessStoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryTicket = null,
  }) {
    return _then(_$SuccessStoryImpl(
      null == lotteryTicket
          ? _value._lotteryTicket
          : lotteryTicket // ignore: cast_nullable_to_non_nullable
              as List<LotteryTicketEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessStoryImpl implements _SuccessStory {
  const _$SuccessStoryImpl(final List<LotteryTicketEntity> lotteryTicket)
      : _lotteryTicket = lotteryTicket;

  final List<LotteryTicketEntity> _lotteryTicket;
  @override
  List<LotteryTicketEntity> get lotteryTicket {
    if (_lotteryTicket is EqualUnmodifiableListView) return _lotteryTicket;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lotteryTicket);
  }

  @override
  String toString() {
    return 'TicketState.successStory(lotteryTicket: $lotteryTicket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStoryImpl &&
            const DeepCollectionEquality()
                .equals(other._lotteryTicket, _lotteryTicket));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_lotteryTicket));

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStoryImplCopyWith<_$SuccessStoryImpl> get copyWith =>
      __$$SuccessStoryImplCopyWithImpl<_$SuccessStoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(List<TicketEntity> tickets) success,
    required TResult Function(List<LotteryTicketEntity> lotteryTicket)
        successStory,
  }) {
    return successStory(lotteryTicket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(List<TicketEntity> tickets)? success,
    TResult? Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
  }) {
    return successStory?.call(lotteryTicket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(List<TicketEntity> tickets)? success,
    TResult Function(List<LotteryTicketEntity> lotteryTicket)? successStory,
    required TResult orElse(),
  }) {
    if (successStory != null) {
      return successStory(lotteryTicket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessStory value) successStory,
  }) {
    return successStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessStory value)? successStory,
  }) {
    return successStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessStory value)? successStory,
    required TResult orElse(),
  }) {
    if (successStory != null) {
      return successStory(this);
    }
    return orElse();
  }
}

abstract class _SuccessStory implements TicketState {
  const factory _SuccessStory(final List<LotteryTicketEntity> lotteryTicket) =
      _$SuccessStoryImpl;

  List<LotteryTicketEntity> get lotteryTicket;

  /// Create a copy of TicketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStoryImplCopyWith<_$SuccessStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
