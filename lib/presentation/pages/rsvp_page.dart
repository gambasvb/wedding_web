// presentation/pages/rsvp_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/rsvp_bloc.dart';
import '../../domain/entities/guest_entity.dart';

class RSVPPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController guestsController = TextEditingController();

  RSVPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RSVP')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Your Name'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: guestsController,
              decoration: const InputDecoration(labelText: 'Number of Guests'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            BlocConsumer<RSVPBloc, RSVPState>(
              listener: (context, state) {
                if (state is SuccessRSVPState) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('RSVP Submitted!')));
                }
              },
              builder: (context, state) {
                if (state is LoadingRSVPState) {
                  return const CircularProgressIndicator();
                } else {
                  return ElevatedButton(
                    onPressed: () {
                      final guest = GuestEntity(
                        name: nameController.text,
                        numberOfGuests: int.parse(guestsController.text),
                      );
                      BlocProvider.of<RSVPBloc>(context).add(
                        SubmitRSVPEvent(guest),
                      );
                    },
                    child: const Text('Submit'),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
