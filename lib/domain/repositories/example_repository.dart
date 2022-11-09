import 'package:base_flutter_provider_app/domain/models_ui/example_request_model_ui.dart';

import '../../core/example_api_response.dart';

mixin ExampleRepository {

  Future<ExampleApiResponse> exampleMethod(ExampleRequestModelUI requestModelUI);

}