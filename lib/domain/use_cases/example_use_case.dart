import 'package:base_flutter_provider_app/domain/models_ui/example_request_model_ui.dart';
import 'package:base_flutter_provider_app/domain/repositories/example_repository.dart';

import '../../core/example_api_response.dart';

class ExampleUseCase {
  ExampleUseCase({
    required ExampleRepository repository,
  }) : _repository = repository;

  final ExampleRepository _repository;

  Future<ExampleApiResponse> exampleMethod(ExampleRequestModelUI requestModelUI) => _repository.exampleMethod(requestModelUI);
}
