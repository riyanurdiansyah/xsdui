// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'xsdui_container_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

XSduiContainerModel _$XSduiContainerModelFromJson(Map<String, dynamic> json) {
  return _XSduiContainerModel.fromJson(json);
}

/// @nodoc
mixin _$XSduiContainerModel {
  String get type => throw _privateConstructorUsedError;
  double get paddingLeft => throw _privateConstructorUsedError;
  double get paddingRight => throw _privateConstructorUsedError;
  double get paddingBottom => throw _privateConstructorUsedError;
  double get paddingTop => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $XSduiContainerModelCopyWith<XSduiContainerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XSduiContainerModelCopyWith<$Res> {
  factory $XSduiContainerModelCopyWith(
          XSduiContainerModel value, $Res Function(XSduiContainerModel) then) =
      _$XSduiContainerModelCopyWithImpl<$Res, XSduiContainerModel>;
  @useResult
  $Res call(
      {String type,
      double paddingLeft,
      double paddingRight,
      double paddingBottom,
      double paddingTop,
      String color});
}

/// @nodoc
class _$XSduiContainerModelCopyWithImpl<$Res, $Val extends XSduiContainerModel>
    implements $XSduiContainerModelCopyWith<$Res> {
  _$XSduiContainerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? paddingLeft = null,
    Object? paddingRight = null,
    Object? paddingBottom = null,
    Object? paddingTop = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      paddingLeft: null == paddingLeft
          ? _value.paddingLeft
          : paddingLeft // ignore: cast_nullable_to_non_nullable
              as double,
      paddingRight: null == paddingRight
          ? _value.paddingRight
          : paddingRight // ignore: cast_nullable_to_non_nullable
              as double,
      paddingBottom: null == paddingBottom
          ? _value.paddingBottom
          : paddingBottom // ignore: cast_nullable_to_non_nullable
              as double,
      paddingTop: null == paddingTop
          ? _value.paddingTop
          : paddingTop // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_XSduiContainerModelCopyWith<$Res>
    implements $XSduiContainerModelCopyWith<$Res> {
  factory _$$_XSduiContainerModelCopyWith(_$_XSduiContainerModel value,
          $Res Function(_$_XSduiContainerModel) then) =
      __$$_XSduiContainerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      double paddingLeft,
      double paddingRight,
      double paddingBottom,
      double paddingTop,
      String color});
}

/// @nodoc
class __$$_XSduiContainerModelCopyWithImpl<$Res>
    extends _$XSduiContainerModelCopyWithImpl<$Res, _$_XSduiContainerModel>
    implements _$$_XSduiContainerModelCopyWith<$Res> {
  __$$_XSduiContainerModelCopyWithImpl(_$_XSduiContainerModel _value,
      $Res Function(_$_XSduiContainerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? paddingLeft = null,
    Object? paddingRight = null,
    Object? paddingBottom = null,
    Object? paddingTop = null,
    Object? color = null,
  }) {
    return _then(_$_XSduiContainerModel(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      paddingLeft: null == paddingLeft
          ? _value.paddingLeft
          : paddingLeft // ignore: cast_nullable_to_non_nullable
              as double,
      paddingRight: null == paddingRight
          ? _value.paddingRight
          : paddingRight // ignore: cast_nullable_to_non_nullable
              as double,
      paddingBottom: null == paddingBottom
          ? _value.paddingBottom
          : paddingBottom // ignore: cast_nullable_to_non_nullable
              as double,
      paddingTop: null == paddingTop
          ? _value.paddingTop
          : paddingTop // ignore: cast_nullable_to_non_nullable
              as double,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_XSduiContainerModel implements _XSduiContainerModel {
  const _$_XSduiContainerModel(
      {required this.type,
      required this.paddingLeft,
      required this.paddingRight,
      required this.paddingBottom,
      required this.paddingTop,
      required this.color});

  factory _$_XSduiContainerModel.fromJson(Map<String, dynamic> json) =>
      _$$_XSduiContainerModelFromJson(json);

  @override
  final String type;
  @override
  final double paddingLeft;
  @override
  final double paddingRight;
  @override
  final double paddingBottom;
  @override
  final double paddingTop;
  @override
  final String color;

  @override
  String toString() {
    return 'XSduiContainerModel(type: $type, paddingLeft: $paddingLeft, paddingRight: $paddingRight, paddingBottom: $paddingBottom, paddingTop: $paddingTop, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_XSduiContainerModel &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.paddingLeft, paddingLeft) ||
                other.paddingLeft == paddingLeft) &&
            (identical(other.paddingRight, paddingRight) ||
                other.paddingRight == paddingRight) &&
            (identical(other.paddingBottom, paddingBottom) ||
                other.paddingBottom == paddingBottom) &&
            (identical(other.paddingTop, paddingTop) ||
                other.paddingTop == paddingTop) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, paddingLeft, paddingRight,
      paddingBottom, paddingTop, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_XSduiContainerModelCopyWith<_$_XSduiContainerModel> get copyWith =>
      __$$_XSduiContainerModelCopyWithImpl<_$_XSduiContainerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_XSduiContainerModelToJson(
      this,
    );
  }
}

abstract class _XSduiContainerModel implements XSduiContainerModel {
  const factory _XSduiContainerModel(
      {required final String type,
      required final double paddingLeft,
      required final double paddingRight,
      required final double paddingBottom,
      required final double paddingTop,
      required final String color}) = _$_XSduiContainerModel;

  factory _XSduiContainerModel.fromJson(Map<String, dynamic> json) =
      _$_XSduiContainerModel.fromJson;

  @override
  String get type;
  @override
  double get paddingLeft;
  @override
  double get paddingRight;
  @override
  double get paddingBottom;
  @override
  double get paddingTop;
  @override
  String get color;
  @override
  @JsonKey(ignore: true)
  _$$_XSduiContainerModelCopyWith<_$_XSduiContainerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
