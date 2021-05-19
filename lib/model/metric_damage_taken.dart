class MetricDamageTaken {
	int? floor;
	String? enemies;
	int? damage;
	int? turns;

	MetricDamageTaken({
		this.floor,
		this.enemies,
		this.damage,
		this.turns,
	});

	factory MetricDamageTaken.fromJson(Map<String, dynamic> json) {
		return MetricDamageTaken(
			floor: json['floor'] as int?,
			enemies: json['enemies'] as String?,
			damage: json['damage'] as int?,
			turns: json['turns'] as int?,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'floor': floor,
			'enemies': enemies,
			'damage': damage,
			'turns': turns,
		};
	}
}
