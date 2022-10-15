import 'package:flutter/material.dart';

class BaseViewModel extends ChangeNotifier {
  BaseViewModel() : _isActive = true;

  bool _isLoading = false;
  bool _isActive = false;

  bool get isLoading => _isLoading;

  bool get isActive => _isActive;

  void showLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  @override
  void dispose() {
    _isActive = false;

    super.dispose();
  }
}
