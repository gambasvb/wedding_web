// presentation/widgets/footer_widget.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Import FontAwesome package

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Contact Us', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text('Email: johnjane.wedding@example.com'),
          const Text('Phone: +62 123 456 789'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(FontAwesomeIcons.facebook),  // Ikon Facebook
                onPressed: () {
                  // Tambahkan logika navigasi ke halaman Facebook
                },
              ),
              IconButton(
                icon: const Icon(FontAwesomeIcons.instagram),  // Ikon Instagram
                onPressed: () {
                  // Tambahkan logika navigasi ke halaman Instagram
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
