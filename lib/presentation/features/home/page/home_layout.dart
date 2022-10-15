import 'package:base_flutter_provider_app/presentation/features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, _) => const SizedBox(
        child: Center(
          child: Text('Home Layout'),
        ),
      ),
    );
  }
}
