// presentation/bloc/rsvp_bloc.dart
import 'package:bloc/bloc.dart';
import '../../domain/entities/guest_entity.dart';
import '../../domain/usecases/submit_rsvp.dart';

class RSVPEvent {}

class SubmitRSVPEvent extends RSVPEvent {
  final GuestEntity guest;
  SubmitRSVPEvent(this.guest);
}

class RSVPState {}

class InitialRSVPState extends RSVPState {}

class LoadingRSVPState extends RSVPState {}

class SuccessRSVPState extends RSVPState {}

class ErrorRSVPState extends RSVPState {
  final String message;
  ErrorRSVPState(this.message);
}

class RSVPBloc extends Bloc<RSVPEvent, RSVPState> {
  final SubmitRSVP submitRSVP;

  RSVPBloc(this.submitRSVP) : super(InitialRSVPState());

  @override
  Stream<RSVPState> mapEventToState(RSVPEvent event) async* {
    if (event is SubmitRSVPEvent) {
      yield LoadingRSVPState();
      try {
        await submitRSVP(event.guest);
        yield SuccessRSVPState();
      } catch (e) {
        yield ErrorRSVPState('Failed to submit RSVP');
      }
    }
  }
}
