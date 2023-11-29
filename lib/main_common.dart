import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_flavors_example/config_flavors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var flavorConfigProvider;

void mainCommon(FlavorConfig config) {
  flavorConfigProvider = config;
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final config = flavorConfigProvider;
    return MaterialApp(
      title: config.appTitle,
      theme: config.theme,
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // log(ref.read(flavorConfigProvider.notifier).state.appTitle);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          flavorConfigProvider.appTitle,
        ),
      ),
      body: Image.asset(
        flavorConfigProvider.imageLocation!,
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
