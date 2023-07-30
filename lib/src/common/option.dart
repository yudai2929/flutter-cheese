class Option {
  final String label;
  final String value;
  const Option({
    required this.label,
    required this.value,
  });
}

class Options {
  final List<Option> options;
  const Options({
    required this.options,
  });

  List<String> get values => options.map((e) => e.value).toList();
  List<String> get labels => options.map((e) => e.label).toList();

  List<Option> get selectedOptions =>
      options.where((element) => element.value.isNotEmpty).toList();

  String valueToLabel(String value) {
    return options.firstWhere((element) => element.value == value).label;
  }
}
