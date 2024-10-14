// presentation/pages/location_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // Import flutter_map package
import 'package:latlong2/latlong.dart'; // Import latlong2 untuk LatLng

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wedding Location'),
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(-6.2088, 106.8456),  // Lokasi Jakarta sebagai contoh
          zoom: 15.0,  // Tingkat zoom awal
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(-6.2088, 106.8456),  // Titik lokasi acara
                width: 80.0,
                height: 80.0,
                builder: (ctx) => const Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 40.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
