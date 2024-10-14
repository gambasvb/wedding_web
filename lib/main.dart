// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/bloc/rsvp_bloc.dart';
import 'data/data_sources/rsvp_data_source.dart';
import 'data/repositories/rsvp_repository_impl.dart';
import 'domain/usecases/submit_rsvp.dart';
import 'presentation/pages/location_page.dart';
import 'presentation/pages/rsvp_page.dart';
import 'presentation/pages/home_page.dart';

void main() {
  final dataSource = RSVPDataSourceImpl();
  final repository = RSVPRepositoryImpl(dataSource);
  final submitRSVP = SubmitRSVP(repository);

  runApp(
    BlocProvider(
      create: (context) => RSVPBloc(submitRSVP),
      child: WeddingApp(),
    ),
  );
}

class WeddingApp extends StatelessWidget {
  const WeddingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wedding Website',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Serif',
      ),
      // Initial route or initial screen
      home: HomePage(),
      // Define routes for other pages
      routes: {
        '/rsvp': (context) => RSVPPage(),
        '/location': (context) => LocationPage(),
        // Add more routes as you add more pages
      },
    );
  }
}
