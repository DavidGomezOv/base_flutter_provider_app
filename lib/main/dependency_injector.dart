import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

class DependencyInjector {
  static void init() {
    _utils();
    _services();
  }

  //Used for initialize Singleton classes
  static void _utils() {}

  //Used for initialize dependencies
  static void _services() {}
}
