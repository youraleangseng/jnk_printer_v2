import 'package:freezed_annotation/freezed_annotation.dart';
part 'print_doc.freezed.dart';
part 'print_doc.g.dart';

@freezed
class PrintDoc with _$PrintDoc {
  const factory PrintDoc(
      String phone,
      String name,
      String location,
      double price,
      double deliveryFee,
      double totalPrice,
      double total) = _PrintDoc;

  factory PrintDoc.fromJson(Map<String, dynamic> json) =>
      _$PrintDocFromJson(json);
}
