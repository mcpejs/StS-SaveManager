class MetricEventChoices {
	String? eventName;
	String? playerChoice;
	int? floor;
	dynamic cardsObtained;
	dynamic cardsRemoved;
	dynamic cardsTransformed;
	dynamic cardsUpgraded;
	dynamic relicsObtained;
	dynamic potionsObtained;
	dynamic relicsLost;
	int? damageTaken;
	int? damageHealed;
	int? maxHpLoss;
	int? maxHpGain;
	int? goldGain;
	int? goldLoss;

	MetricEventChoices({
		this.eventName,
		this.playerChoice,
		this.floor,
		this.cardsObtained,
		this.cardsRemoved,
		this.cardsTransformed,
		this.cardsUpgraded,
		this.relicsObtained,
		this.potionsObtained,
		this.relicsLost,
		this.damageTaken,
		this.damageHealed,
		this.maxHpLoss,
		this.maxHpGain,
		this.goldGain,
		this.goldLoss,
	});

	factory MetricEventChoices.fromJson(Map<String, dynamic> json) {
		return MetricEventChoices(
			eventName: json['event_name'] as String?,
			playerChoice: json['player_choice'] as String?,
			floor: json['floor'] as int?,
			cardsObtained: json['cards_obtained'],
			cardsRemoved: json['cards_removed'],
			cardsTransformed: json['cards_transformed'],
			cardsUpgraded: json['cards_upgraded'],
			relicsObtained: json['relics_obtained'],
			potionsObtained: json['potions_obtained'],
			relicsLost: json['relics_lost'],
			damageTaken: json['damage_taken'] as int?,
			damageHealed: json['damage_healed'] as int?,
			maxHpLoss: json['max_hp_loss'] as int?,
			maxHpGain: json['max_hp_gain'] as int?,
			goldGain: json['gold_gain'] as int?,
			goldLoss: json['gold_loss'] as int?,
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'event_name': eventName,
			'player_choice': playerChoice,
			'floor': floor,
			'cards_obtained': cardsObtained,
			'cards_removed': cardsRemoved,
			'cards_transformed': cardsTransformed,
			'cards_upgraded': cardsUpgraded,
			'relics_obtained': relicsObtained,
			'potions_obtained': potionsObtained,
			'relics_lost': relicsLost,
			'damage_taken': damageTaken,
			'damage_healed': damageHealed,
			'max_hp_loss': maxHpLoss,
			'max_hp_gain': maxHpGain,
			'gold_gain': goldGain,
			'gold_loss': goldLoss,
		};
	}
}
