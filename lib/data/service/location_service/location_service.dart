
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationService {
  Future<Position> getCurrentLocation() async {
    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  }

  Future<PermissionStatus> checkPermission() async {
    return await Permission.location.status;
  }

  Future<PermissionStatus> requestPermission() async {
    return await Permission.location.request();
  }
}