import 'package:base_flutter_provider_app/core/example_api_response.dart';
import 'package:base_flutter_provider_app/data/data_source/example_data_source.dart';
import 'package:base_flutter_provider_app/domain/models_ui/example_request_model_ui.dart';
import 'package:base_flutter_provider_app/domain/repositories/example_repository.dart';
import 'package:flutter/cupertino.dart';

class ExampleRepositoryImpl implements ExampleRepository {

  ExampleRepositoryImpl({
    required ExampleDataSource dataSource,
  }) : _dataSource = dataSource;

  final ExampleDataSource _dataSource;

  @override
  Future<ExampleApiResponse> exampleMethod(ExampleRequestModelUI requestModelUI) async {
    dynamic response;
    try {
      response = await _dataSource.exampleMethod(requestModelUI.toServer());
    } catch (e) {
      debugPrint(e.toString());
    }
    return ExampleApiResponse(response);
  }



}