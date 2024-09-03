import 'package:equatable/equatable.dart';

class Delivery extends Equatable {
  final bool? free;
  final bool? freeDeliveryThreshold;

  const Delivery({this.free, this.freeDeliveryThreshold});

  factory Delivery.fromJson(Map<String, dynamic> json) => Delivery(
        free: json['free'] as bool?,
        freeDeliveryThreshold: json['free_delivery_threshold'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'free': free,
        'free_delivery_threshold': freeDeliveryThreshold,
      };

  @override
  List<Object?> get props => [free, freeDeliveryThreshold];
}
