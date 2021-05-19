class MetricPotionsObtained {
	String? key;
	int? floor;

	MetricPotionsObtained({this.key, this.floor});

	factory MetricPotionsObtained.fromJson(Map<String, dynamic> json) {
		return MetricPotionsObtained(
			key: json['key'] as String?,
			floor: json['floor'] as int?,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'key': key,
			'floor': floor,
		};
	}
}
