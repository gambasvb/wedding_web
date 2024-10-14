// TODO Implement this library.// domain/repositories/rsvp_repository.dart
import '../entities/guest_entity.dart';

abstract class RSVPRepository {
  Future<void> submitRSVP(GuestEntity guest);
}
