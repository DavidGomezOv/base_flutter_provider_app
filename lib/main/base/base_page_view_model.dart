import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'base_loading_view.dart';
import 'base_view_model.dart';

class BasePageViewModel<T extends BaseViewModel> extends StatelessWidget {
  const BasePageViewModel({
    super.key,
    required this.viewModel,
    required this.page,
    this.backgroundWidget,
    this.onWillPop,
  });

  final T viewModel;
  final Widget page;
  final Widget? backgroundWidget;
  final WillPopCallback? onWillPop;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => viewModel,
      builder: (context, child) {
        final isLoading = context.watch<T>().isLoading;
        return WillPopScope(
          onWillPop: (isLoading) ? () async => false : onWillPop,
          child: Stack(
            children: [
              (backgroundWidget != null)
                  ? backgroundWidget!
                  : Container(
                      color: Colors.white,
                    ),
              page,
              (isLoading) ? const BaseLoadingView() : const SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
