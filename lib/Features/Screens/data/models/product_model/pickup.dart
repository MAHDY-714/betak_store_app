import 'package:equatable/equatable.dart';
//free Ship The Product to store free or no
class Pickup extends Equatable {
  final bool? freeShipToStore;

  const Pickup({this.freeShipToStore});

  factory Pickup.fromJson(Map<String, dynamic> json) => Pickup(
        freeShipToStore: json['free_ship_to_store'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'free_ship_to_store': freeShipToStore,
      };

  @override
  List<Object?> get props => [freeShipToStore];
}
