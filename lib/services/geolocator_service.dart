import 'package:geolocator/geolocator.dart';

class GeolocatorService {
  final Geolocator geo = Geolocator();
  Future<Position> getLocation() async {
    var geolocator = Geolocator();
    return await geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        locationPermissionLevel: GeolocationPermission.location);
  }

  Stream<Position> getCurrentLocation() {
    var locationOptions =
        LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 10);
    return geo.getPositionStream(locationOptions);
  }

  Future<Position> getInitialLocation() async {
    return geo.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }
}
