// data/models/guest_model.dart
import '../../domain/entities/guest_entity.dart';

class GuestModel extends GuestEntity {
  GuestModel({required super.name, required super.numberOfGuests});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'number_of_guests': numberOfGuests,
    };
  }

  factory GuestModel.fromJson(Map<String, dynamic> json) {
    return GuestModel(
      name: json['name'],
      numberOfGuests: json['number_of_guests'],
    );
  }
}
