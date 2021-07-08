// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'print_doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrintDoc _$_$_PrintDocFromJson(Map<String, dynamic> json) {
  return _$_PrintDoc(
    json['phone'] as String,
    json['name'] as String,
    json['location'] as String,
    (json['price'] as num).toDouble(),
    (json['deliveryFee'] as num).toDouble(),
    (json['totalPrice'] as num).toDouble(),
    (json['total'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_PrintDocToJson(_$_PrintDoc instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'name': instance.name,
      'location': instance.location,
      'price': instance.price,
      'deliveryFee': instance.deliveryFee,
      'totalPrice': instance.totalPrice,
      'total': instance.total,
    };
