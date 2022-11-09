import 'package:base_flutter_provider_app/data/models/example_request_model.dart';

class ExampleRequestModelUI {
  final int id;
  final String name;

  ExampleRequestModelUI({
    required this.id,
    required this.name,
  });

  ExampleRequestModel toServer() => ExampleRequestModel(
        id: id,
        name: name,
      );
}
