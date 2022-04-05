import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'price.g.dart';

@JsonSerializable()
class Price extends Equatable {
  final String amount;
  final String currency;

  const Price({required this.amount, required this.currency});

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);

  @override
  String toString() {
    return '$currency $amount';
  }

  @override
  List<Object?> get props => [amount, currency];
}
