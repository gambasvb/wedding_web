// domain/usecases/submit_rsvp.dart
import '../entities/guest_entity.dart';
import '../repositories/rsvp_repository.dart';

class SubmitRSVP {
  final RSVPRepository repository;

  SubmitRSVP(this.repository);

  Future<void> call(GuestEntity guest) {
    return repository.submitRSVP(guest);
  }
}
