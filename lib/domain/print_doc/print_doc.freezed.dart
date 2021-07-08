// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'print_doc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrintDoc _$PrintDocFromJson(Map<String, dynamic> json) {
  return _PrintDoc.fromJson(json);
}

/// @nodoc
class _$PrintDocTearOff {
  const _$PrintDocTearOff();

  _PrintDoc call(String phone, String name, String location, double price,
      double deliveryFee, double totalPrice, double total) {
    return _PrintDoc(
      phone,
      name,
      location,
      price,
      deliveryFee,
      totalPrice,
      total,
    );
  }

  PrintDoc fromJson(Map<String, Object> json) {
    return PrintDoc.fromJson(json);
  }
}

/// @nodoc
const $PrintDoc = _$PrintDocTearOff();

/// @nodoc
mixin _$PrintDoc {
  String get phone => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get deliveryFee => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrintDocCopyWith<PrintDoc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrintDocCopyWith<$Res> {
  factory $PrintDocCopyWith(PrintDoc value, $Res Function(PrintDoc) then) =
      _$PrintDocCopyWithImpl<$Res>;
  $Res call(
      {String phone,
      String name,
      String location,
      double price,
      double deliveryFee,
      double totalPrice,
      double total});
}

/// @nodoc
class _$PrintDocCopyWithImpl<$Res> implements $PrintDocCopyWith<$Res> {
  _$PrintDocCopyWithImpl(this._value, this._then);

  final PrintDoc _value;
  // ignore: unused_field
  final $Res Function(PrintDoc) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? price = freezed,
    Object? deliveryFee = freezed,
    Object? totalPrice = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryFee: deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PrintDocCopyWith<$Res> implements $PrintDocCopyWith<$Res> {
  factory _$PrintDocCopyWith(_PrintDoc value, $Res Function(_PrintDoc) then) =
      __$PrintDocCopyWithImpl<$Res>;
  @override
  $Res call(
      {String phone,
      String name,
      String location,
      double price,
      double deliveryFee,
      double totalPrice,
      double total});
}

/// @nodoc
class __$PrintDocCopyWithImpl<$Res> extends _$PrintDocCopyWithImpl<$Res>
    implements _$PrintDocCopyWith<$Res> {
  __$PrintDocCopyWithImpl(_PrintDoc _value, $Res Function(_PrintDoc) _then)
      : super(_value, (v) => _then(v as _PrintDoc));

  @override
  _PrintDoc get _value => super._value as _PrintDoc;

  @override
  $Res call({
    Object? phone = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? price = freezed,
    Object? deliveryFee = freezed,
    Object? totalPrice = freezed,
    Object? total = freezed,
  }) {
    return _then(_PrintDoc(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrintDoc implements _PrintDoc {
  const _$_PrintDoc(this.phone, this.name, this.location, this.price,
      this.deliveryFee, this.totalPrice, this.total);

  factory _$_PrintDoc.fromJson(Map<String, dynamic> json) =>
      _$_$_PrintDocFromJson(json);

  @override
  final String phone;
  @override
  final String name;
  @override
  final String location;
  @override
  final double price;
  @override
  final double deliveryFee;
  @override
  final double totalPrice;
  @override
  final double total;

  @override
  String toString() {
    return 'PrintDoc(phone: $phone, name: $name, location: $location, price: $price, deliveryFee: $deliveryFee, totalPrice: $totalPrice, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrintDoc &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.deliveryFee, deliveryFee) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFee, deliveryFee)) &&
            (identical(other.totalPrice, totalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.totalPrice, totalPrice)) &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(deliveryFee) ^
      const DeepCollectionEquality().hash(totalPrice) ^
      const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$PrintDocCopyWith<_PrintDoc> get copyWith =>
      __$PrintDocCopyWithImpl<_PrintDoc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PrintDocToJson(this);
  }
}

abstract class _PrintDoc implements PrintDoc {
  const factory _PrintDoc(
      String phone,
      String name,
      String location,
      double price,
      double deliveryFee,
      double totalPrice,
      double total) = _$_PrintDoc;

  factory _PrintDoc.fromJson(Map<String, dynamic> json) = _$_PrintDoc.fromJson;

  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  double get price => throw _privateConstructorUsedError;
  @override
  double get deliveryFee => throw _privateConstructorUsedError;
  @override
  double get totalPrice => throw _privateConstructorUsedError;
  @override
  double get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PrintDocCopyWith<_PrintDoc> get copyWith =>
      throw _privateConstructorUsedError;
}
