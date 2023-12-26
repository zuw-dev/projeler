import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:navigate_router/pages/home_page.dart';
import 'package:navigate_router/pages/maps_page.dart';
import 'package:navigate_router/pages/settings_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    defineRoutes(router);

    return MaterialApp(
      onGenerateRoute: router.generator,
      home: const MyHomePage(),
    );
  }

  void defineRoutes(FluroRouter router) {
    router.define(
      '/',
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
          return const MyHomePage();
        },
      ),
    );

    router.define(
      '/settings',
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
          return const SettingsPage();
        },
      ),
    );

    router.define(
      '/map',
      handler: Handler(
        handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
          return const MapsPage();
        },
      ),
    );
  }
}
