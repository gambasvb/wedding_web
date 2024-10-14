// presentation/widgets/testimonial_section.dart
import 'package:flutter/material.dart';

class TestimonialSection extends StatelessWidget {
  final List<String> testimonials = [
    "John and Jane, wishing you a lifetime of love and happiness!",
    "Congrats on your wedding! Can't wait to celebrate with you.",
    "Wishing you a beautiful journey ahead filled with love and joy."
  ];

 TestimonialSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: testimonials.map((message) {
        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              message,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
        );
      }).toList(),
    );
  }
}
