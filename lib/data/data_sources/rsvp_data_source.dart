// data/data_sources/rsvp_data_source.dart
import '../models/guest_model.dart';

abstract class RSVPDataSource {
  Future<void> submitRSVP(GuestModel guest);
}

class RSVPDataSourceImpl implements RSVPDataSource {
  @override
  Future<void> submitRSVP(GuestModel guest) async {
    // Logic untuk menyimpan data RSVP, bisa API atau lokal
    print('RSVP submitted: ${guest.toJson()}');
  }
}
