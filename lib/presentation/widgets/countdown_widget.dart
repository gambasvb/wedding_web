// presentation/widgets/countdown_widget.dart
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class CountdownWidget extends StatefulWidget {
  const CountdownWidget({super.key});

  @override
  _CountdownWidgetState createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  late Duration timeRemaining;

  @override
  void initState() {
    super.initState();
    DateTime weddingDate = DateTime(2024, 6, 12); // Tanggal pernikahan
    timeRemaining = weddingDate.difference(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${timeRemaining.inDays} Days to Go',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
