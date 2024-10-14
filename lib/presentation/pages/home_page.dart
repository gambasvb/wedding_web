// presentation/pages/home_page.dart
import 'package:flutter/material.dart';
import '../widgets/hero_widget.dart'; // Import widget hero
import '../widgets/countdown_widget.dart'; // Import widget countdown
import '../widgets/footer_widget.dart'; // Import widget footer
import '../widgets/gallery_carousel.dart'; // Import widget galeri
import '../widgets/testimonial_section.dart'; // Import widget testimoni

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Wedding'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeroWidget(),
            const SizedBox(height: 20),
            CountdownWidget(),
            const SizedBox(height: 20),

            // Galeri Carousel
            GalleryCarousel(),

            const SizedBox(height: 20),

            // Testimonial Section
            TestimonialSection(),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/rsvp');
                  },
                  icon: const Icon(Icons.event),
                  label: const Text('RSVP'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: const Icon(Icons.location_on),
                  label: const Text('Location'),
                ),
                // ElevatedButton.icon(
                //   onPressed: () {
                //     Navigator.pushNamed(context, '/gallery');
                //   },
                //   icon: Icon(Icons.photo_album),
                //   label: Text('Gallery'),
                // ),
              ],
            ),
            const SizedBox(height: 20),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}