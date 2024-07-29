
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvmpattern/data/service/internet_connectivity.dart';
import 'package:mvvmpattern/res/colors/app_color.dart';

class ConnectivityWrapper extends StatelessWidget {
  final Widget child;
  final VoidCallback onPress;

  const ConnectivityWrapper({super.key, required this.child, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var isConnected = Get.find<ConnectivityService>().isConnected.value;
      return isConnected ? child : NoConnectionPage();
    });
  }
}

class NoConnectionPage extends StatelessWidget {
  const NoConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * .15,
              ),
              const Icon(
                Icons.cloud_off,
                color: AppColor.redColor,
                size: 50,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                    child: Text(
                  'Internet Not Connect',
                  textAlign: TextAlign.center,
                )),
              ),
              SizedBox(
                height: height * .15,
              ),
              InkWell(
                // onTap: widget.onPress,
                onTap: () {
                  var connectivityService = Get.find<ConnectivityService>();
                  if (connectivityService.isConnected.value) {
                    Get.snackbar("Connected", "You are online.");
                  } else {
                    Get.snackbar("Offline", "You are currently offline.");
                  }
                },
                child: Container(
                  height: 44,
                  width: 160,
                  decoration: BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(50)),
                  child: Center(
                      child: Text(
                    'Retry',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
