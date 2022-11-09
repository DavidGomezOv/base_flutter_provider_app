class ExampleRequestModel {
  final int id;
  final String name;

  ExampleRequestModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
      };
}
