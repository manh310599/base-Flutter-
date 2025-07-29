// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ApplicationState {
  ThemeData? get theme => throw _privateConstructorUsedError;
  Locale? get locale => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
    ApplicationState value,
    $Res Function(ApplicationState) then,
  ) = _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call({ThemeData? theme, Locale? locale, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _value.copyWith(
            theme: freezed == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                      as ThemeData?,
            locale: freezed == locale
                ? _value.locale
                : locale // ignore: cast_nullable_to_non_nullable
                      as Locale?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User?,
          )
          as $Val,
    );
  }

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplicationStateImplCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$ApplicationStateImplCopyWith(
    _$ApplicationStateImpl value,
    $Res Function(_$ApplicationStateImpl) then,
  ) = __$$ApplicationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeData? theme, Locale? locale, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$ApplicationStateImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$ApplicationStateImpl>
    implements _$$ApplicationStateImplCopyWith<$Res> {
  __$$ApplicationStateImplCopyWithImpl(
    _$ApplicationStateImpl _value,
    $Res Function(_$ApplicationStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = freezed,
    Object? locale = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$ApplicationStateImpl(
        theme: freezed == theme
            ? _value.theme
            : theme // ignore: cast_nullable_to_non_nullable
                  as ThemeData?,
        locale: freezed == locale
            ? _value.locale
            : locale // ignore: cast_nullable_to_non_nullable
                  as Locale?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }
}

/// @nodoc

class _$ApplicationStateImpl extends _ApplicationState {
  const _$ApplicationStateImpl({
    this.theme = null,
    this.locale = const Locale('en'),
    this.user = null,
  }) : super._();

  @override
  @JsonKey()
  final ThemeData? theme;
  @override
  @JsonKey()
  final Locale? locale;
  @override
  @JsonKey()
  final User? user;

  @override
  String toString() {
    return 'ApplicationState(theme: $theme, locale: $locale, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationStateImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme, locale, user);

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      __$$ApplicationStateImplCopyWithImpl<_$ApplicationStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ApplicationState extends ApplicationState {
  const factory _ApplicationState({
    final ThemeData? theme,
    final Locale? locale,
    final User? user,
  }) = _$ApplicationStateImpl;
  const _ApplicationState._() : super._();

  @override
  ThemeData? get theme;
  @override
  Locale? get locale;
  @override
  User? get user;

  /// Create a copy of ApplicationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplicationStateImplCopyWith<_$ApplicationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
