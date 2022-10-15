import 'package:base_flutter_provider_app/presentation/routes/route_names.dart';
import 'package:base_flutter_provider_app/presentation/singleton/example_singleton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../presentation/routes/route_settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ExampleSingleton(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BaseFlutterProviderApp',
        initialRoute: RouteNames.homePage,
        onGenerateRoute: RouteSetting.generate,
        builder: ((context, child) {
          final data = MediaQuery.of(context);
          return MediaQuery(
            data: data.copyWith(
              textScaleFactor:
                  data.textScaleFactor > 1.7 ? 1.7 : data.textScaleFactor,
            ),
            child: child ?? const SizedBox.shrink(),
          );
        }),
      ),
    );
  }
}
