import 'package:flutter/material.dart';
import 'package:flutter_flavors_example/config_flavors.dart';
import 'package:flutter_flavors_example/main_common.dart';

void main() {
  mainCommon(
    FlavorConfig()
      ..appTitle = "Lamborghini"
      ..apiEndpoint = {
        Endpoints.items: "api.flutterjunction.dev/items",
        Endpoints.details: "api.flutterjunction.dev/items",
      }
      ..imageLocation = "assets/images/lamborghini car.jpeg"
      ..theme = ThemeData.dark(),
  );
}
