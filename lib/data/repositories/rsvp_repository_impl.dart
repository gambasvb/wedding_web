// data/repositories/rsvp_repository_impl.dart
import '../../domain/entities/guest_entity.dart';
import '../../domain/repositories/rsvp_repository.dart';
import '../data_sources/rsvp_data_source.dart';
import '../models/guest_model.dart'; // Import GuestModel for conversion

class RSVPRepositoryImpl implements RSVPRepository {
  final RSVPDataSource dataSource;

  RSVPRepositoryImpl(this.dataSource);

  @override
  Future<void> submitRSVP(GuestEntity guest) {
    // Convert GuestEntity to GuestModel
    final guestModel = GuestModel(
      name: guest.name,
      numberOfGuests: guest.numberOfGuests,
    );
    
    // Pass the converted GuestModel to the data source
    return dataSource.submitRSVP(guestModel);
  }
}
