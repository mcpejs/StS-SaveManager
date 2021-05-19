class MetricCampfireChoices {
	int? floor;
	String? key;

	MetricCampfireChoices({this.floor, this.key});

	factory MetricCampfireChoices.fromJson(Map<String, dynamic> json) {
		return MetricCampfireChoices(
			floor: json['floor'] as int?,
			key: json['key'] as String?,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'floor': floor,
			'key': key,
		};
	}
}
