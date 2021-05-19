class MetricCardChoices {
  String? picked;
  List<String>? notPicked;
  int? floor;

  MetricCardChoices({
    this.picked,
    this.notPicked,
    this.floor,
  });

  factory MetricCardChoices.fromJson(Map<String, dynamic> json) {
    return MetricCardChoices(
      picked: json['picked'] as String?,
      notPicked: json['not_picked']?.cast<String>(),
      floor: json['floor'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'picked': picked,
      'not_picked': notPicked,
      'floor': floor,
    };
  }
}
