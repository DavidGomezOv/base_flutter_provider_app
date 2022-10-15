import 'package:base_flutter_provider_app/presentation/features/home/page/home_page.dart';
import 'package:base_flutter_provider_app/presentation/routes/route_names.dart';
import 'package:flutter/material.dart';

import '../features/unknown/page/unknown_page.dart';

class RouteSetting {
  static Route<dynamic> generate(RouteSettings settings) {
    dynamic page;
    String name = settings.name!;

    switch (name) {
      case RouteNames.homePage:
        page = const HomePage();
        break;
      default:
        page = const UnknownPage();
    }

    return MaterialPageRoute(
      settings: RouteSettings(
        name: name,
        arguments: settings.arguments,
      ),
      builder: (_) => page,
    );
  }
}
