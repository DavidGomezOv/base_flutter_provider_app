import 'package:base_flutter_provider_app/main/app.dart';
import 'package:base_flutter_provider_app/main/dependency_injector.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  DependencyInjector.init();

  runApp(const MyApp());
}
