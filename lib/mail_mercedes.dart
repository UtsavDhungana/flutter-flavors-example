import 'package:flutter/material.dart';
import 'package:flutter_flavors_example/config_flavors.dart';
import 'package:flutter_flavors_example/main_common.dart';

void main() {
  mainCommon(
    FlavorConfig()
      ..appTitle = "Mercedes"
      ..apiEndpoint = {
        Endpoints.items: "flutterjunction.api.dev/items",
        Endpoints.details: "flutterjunction.api.dev/items",
      }
      ..imageLocation = "assets/images/mercedes car.jpeg"
      ..theme = ThemeData.light().copyWith(
        primaryColor: const Color(0xFF123456),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: const Color(0xFF654321),
            ),
      ),
  );
}
