import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../models/location_model.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  static const double x1= 26.840771;
  static const double y1= 80.857341;
  static const double x2= 26.840989;
  static const double y2= 80.853581;

  // Mock data for clinic and patient locations
  final List<LocationModel> locations = [
    LocationModel(
      name: 'Clinic',
      address: '123 Main St, Boston, MA 02110',
      coordinates: const LatLng(x1,y1),
    ),
    LocationModel(
      name: 'Patient 1',
      address: '240 Washington St, Boston, MA 02135',
      coordinates: const LatLng(x2, y2),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Navigation'),
        actions: [
          IconButton(
            icon: const Icon(Icons.my_location),
            onPressed: () {
              // Move to live location
              _mapController.move(const LatLng(x1, y2), 5.0);
            },
          ),
        ],
      ),
      body: FlutterMap(
        mapController: _mapController,
        options: const MapOptions(
          initialCenter: LatLng(x1, y2),
          initialZoom: 13.0,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            markers: locations
                .map(
                  (location) => Marker(
                    point: location.coordinates,
                    width: 80.0,
                    height: 80.0,
                    child: Builder(
                      builder: (ctx) => Tooltip(
                        message: '${location.name}\n${location.address}',
                        child: Icon(
                          location.name.contains('Clinic')
                              ? Icons.local_hospital
                              : Icons.person_pin_circle,
                          color: location.name.contains('Clinic')
                              ? Colors.red
                              : Colors.blue,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // Navigate to Clinic
              _mapController.move(const LatLng(x1, y2), 16.0);
            },
            heroTag: 'clinic',
            child: const Icon(Icons.local_hospital),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              // Navigate to Patient
              _mapController.move(const LatLng(x1, y2), 16.0);
            },
            heroTag: 'patient',
            child: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
