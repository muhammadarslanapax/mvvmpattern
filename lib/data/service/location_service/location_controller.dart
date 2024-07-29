import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

import 'location_model.dart';
import 'location_service.dart';

class LocationController extends GetxController {
  var location = LocationModel(latitude: 0.0, longitude: 0.0).obs;
  final LocationService locationService = LocationService();

  @override
  void onInit() {
    super.onInit();
    checkAndRequestPermission();
  }

  Future<void> checkAndRequestPermission() async {
    var permissionStatus = await locationService.checkPermission();
    if (permissionStatus.isDenied) {
      permissionStatus = await locationService.requestPermission();
    }

    if (permissionStatus.isGranted) {
      _getCurrentLocation();
    }
  }

  Future<void> _getCurrentLocation() async {
    var position = await locationService.getCurrentLocation();
    // location.update((val) {
    location.value.latitude = position.latitude;
    location.value.longitude = position.longitude;
    // });
  }
}
