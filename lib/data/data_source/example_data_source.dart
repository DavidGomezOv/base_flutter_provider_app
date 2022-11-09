import 'package:base_flutter_provider_app/data/models/example_request_model.dart';
import 'package:http/http.dart' as http;

import '../../core/example_api_response.dart';

mixin ExampleDataSource {
  Future<ExampleApiResponse> exampleMethod(ExampleRequestModel requestModel);
}

class ExampleDataSourceImpl implements ExampleDataSource {
  ExampleDataSourceImpl({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;

  @override
  Future<ExampleApiResponse> exampleMethod(ExampleRequestModel requestModel) {
    // TODO: implement exampleMethod
    throw UnimplementedError();
  }
}
