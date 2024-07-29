import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmpattern/data/service/internet_connectivity.dart';
import 'package:mvvmpattern/data/service/location_service/location_controller.dart';
import 'package:mvvmpattern/res/widgets/internet_connectvity_wrapper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.putAsync(() async => ConnectivityService());
  Get.putAsync(() async => LocationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ConnectivityWrapper(onPress: () {}, child: const HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LocationController controller = Get.find<LocationController>();
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            controller.checkAndRequestPermission();
          },
          child: Text("${controller.location.value.latitude}")),
    ));
  }
}
