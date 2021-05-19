class MetricRelicsObtained {
	String? key;
	int? floor;

	MetricRelicsObtained({this.key, this.floor});

	factory MetricRelicsObtained.fromJson(Map<String, dynamic> json) {
		return MetricRelicsObtained(
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
