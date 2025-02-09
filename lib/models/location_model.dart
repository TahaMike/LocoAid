import 'package:latlong2/latlong.dart';

class LocationModel {
  final String name;
  final String address;
  final LatLng coordinates;

  LocationModel({
    required this.name,
    required this.address,
    required this.coordinates,
  });
}
