class Card {
  int? upgrades;
  int? misc;
  String? id;

  Card({
    this.upgrades,
    this.misc,
    this.id,
  });

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
      upgrades: json['upgrades'] as int?,
      misc: json['misc'] as int?,
      id: json['id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'upgrades': upgrades,
      'misc': misc,
      'id': id,
    };
  }
}
