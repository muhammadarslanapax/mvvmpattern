import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class ConnectivityService extends GetxService {
  // Observable to store the connection status
  var isConnected = true.obs;

  @override
  Future<void> onInit() async {
    super.onInit();

    // Check initial connectivity status
    await _updateConnectionStatus();

    // Listen for connectivity changes
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      _updateConnectionStatus();
    });
  }

  Future<void> _updateConnectionStatus() async {
    // Check the current connectivity status
    ConnectivityResult result = await Connectivity().checkConnectivity();

    // Update the isConnected value based on the result
    isConnected.value = result != ConnectivityResult.none;
  }
}
