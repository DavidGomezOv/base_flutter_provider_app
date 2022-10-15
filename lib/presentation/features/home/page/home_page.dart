import 'package:base_flutter_provider_app/main/base/base_page_view_model.dart';
import 'package:base_flutter_provider_app/presentation/features/home/page/home_layout.dart';
import 'package:base_flutter_provider_app/presentation/features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePageViewModel<HomeViewModel>(
      viewModel: HomeViewModel(),
      page: Scaffold(
        appBar: AppBar(
          leading: const SizedBox.shrink(),
          title: const Text('Home Page'),
          centerTitle: true,
        ),
        backgroundColor: Colors.transparent,
        body: const HomeLayout(),
      ),
    );
  }
}
