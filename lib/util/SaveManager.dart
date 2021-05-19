import 'dart:io';

import 'package:sts_savemanager/model/card.dart';
import 'package:sts_savemanager/model/metric_campfire_choice.dart';
import 'package:sts_savemanager/model/metric_card_choice.dart';
import 'package:sts_savemanager/model/metric_damage_taken.dart';
import 'package:sts_savemanager/model/metric_event_choice.dart';
import 'package:sts_savemanager/model/metric_potions_obtained.dart';
import 'package:sts_savemanager/model/metric_relics_obtained.dart';

import 'dart:convert';

final sample =
    "{\"name\":\"OvO\",\"loadout\":null,\"current_health\":46,\"max_health\":75,\"max_orbs\":3,\"gold\":171,\"hand_size\":5,\"red\":3,\"green\":0,\"blue\":0,\"monsters_killed\":6,\"elites1_killed\":2,\"elites2_killed\":0,\"elites3_killed\":0,\"gold_gained\":228,\"mystery_machine\":3,\"champions\":0,\"perfect\":0,\"overkill\":false,\"combo\":false,\"cards\":[{\"upgrades\":0,\"misc\":0,\"id\":\"Strike_B\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Strike_B\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Strike_B\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Strike_B\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Defend_B\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Defend_B\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Defend_B\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Defend_B\"},{\"upgrades\":1,\"misc\":0,\"id\":\"Zap\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Dualcast\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Fusion\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Ball Lightning\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Auto Shields\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Streamline\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Rebound\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Defragment\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Turbo\"},{\"upgrades\":1,\"misc\":0,\"id\":\"Seek\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Go for the Eyes\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Ball Lightning\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Leap\"},{\"upgrades\":0,\"misc\":0,\"id\":\"FTL\"},{\"upgrades\":0,\"misc\":0,\"id\":\"Steam Power\"}],\"obtained_cards\":{\"Fusion\":1,\"Ball Lightning\":2,\"Auto Shields\":1,\"Streamline\":1,\"Rebound\":1,\"Defragment\":1,\"Turbo\":1,\"Seek\":1,\"Go for the Eyes\":1,\"Leap\":1,\"FTL\":1,\"Steam Power\":1},\"relics\":[\"Cracked Core\",\"Orrery\",\"Blue Candle\",\"StrikeDummy\",\"Question Card\"],\"relic_counters\":[-1,-1,-1,-1,-1],\"potions\":[\"DuplicationPotion\",\"DuplicationPotion\",\"Energy Potion\"],\"potion_slots\":3,\"is_endless_mode\":false,\"blights\":[],\"blight_counters\":[],\"endless_increments\":[],\"chose_neow_reward\":false,\"neow_bonus\":\"UPGRADE_CARD\",\"neow_cost\":\"NONE\",\"is_ascension_mode\":true,\"ascension_level\":1,\"level_name\":\"Exordium\",\"floor_num\":15,\"act_num\":1,\"event_list\":[\"Big Fish\",\"The Cleric\",\"Dead Adventurer\",\"Golden Idol\",\"Golden Wing\",\"Liars Game\",\"Living Wall\",\"Mushrooms\",\"Scrap Ooze\",\"Shining Light\"],\"one_time_event_list\":[\"Accursed Blacksmith\",\"Bonfire Elementals\",\"Designer\",\"Duplicator\",\"FaceTrader\",\"Fountain of Cleansing\",\"Knowing Skull\",\"Lab\",\"N'loth\",\"SecretPortal\",\"The Joust\",\"WeMeetAgain\",\"The Woman in Blue\"],\"potion_chance\":0,\"event_chances\":[0.3,0.1,0.12,0.08],\"monster_list\":[\"Large Slime\",\"Looter\",\"Red Slaver\",\"3 Louse\",\"2 Fungi Beasts\",\"Looter\",\"Large Slime\",\"3 Louse\",\"Exordium Wildlife\",\"Exordium Thugs\"],\"elite_monster_list\":[\"3 Sentries\",\"Lagavulin\",\"Gremlin Nob\",\"Lagavulin\",\"3 Sentries\",\"Gremlin Nob\",\"Lagavulin\",\"Gremlin Nob\"],\"boss_list\":[\"Slime Boss\",\"The Guardian\",\"Hexaghost\"],\"play_time\":494,\"save_date\":0,\"seed\":7811600684752178531,\"special_seed\":0,\"seed_set\":false,\"is_daily\":false,\"is_final_act_on\":true,\"has_ruby_key\":false,\"has_emerald_key\":false,\"has_sapphire_key\":false,\"daily_date\":0,\"is_trial\":false,\"daily_mods\":[],\"custom_mods\":[],\"boss\":\"Slime Boss\",\"purgeCost\":75,\"monster_seed_count\":36,\"event_seed_count\":3,\"merchant_seed_count\":16,\"card_seed_count\":126,\"treasure_seed_count\":10,\"relic_seed_count\":7,\"potion_seed_count\":41,\"ai_seed_count\":0,\"shuffle_seed_count\":0,\"card_random_seed_count\":0,\"card_random_seed_randomizer\":-1,\"path_x\":[4,4,4,5,4,4,5,5,5,5,5,4,5,5,5],\"path_y\":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14],\"room_x\":5,\"room_y\":14,\"spirit_count\":0,\"current_room\":\"com.megacrit.cardcrawl.rooms.RestRoom\",\"common_relics\":[\"Omamori\",\"Lantern\",\"DataDisk\",\"Bronze Scales\",\"Strawberry\",\"Bag of Marbles\",\"Centennial Puzzle\",\"Smiling Mask\",\"Whetstone\",\"Anchor\",\"Nunchaku\",\"CeramicFish\",\"Potion Belt\",\"Toy Ornithopter\",\"Akabeko\",\"MealTicket\",\"Orichalcum\",\"Ancient Tea Set\",\"Blood Vial\",\"Juzu Bracelet\",\"Oddly Smooth Stone\",\"Bag of Preparation\",\"Pen Nib\",\"Regal Pillow\",\"Tiny Chest\",\"Dream Catcher\",\"MawBank\",\"Happy Flower\",\"Art of War\",\"War Paint\",\"Boot\"],\"uncommon_relics\":[\"Matryoshka\",\"Symbiotic Virus\",\"Bottled Flame\",\"Toxic Egg 2\",\"Mummified Hand\",\"InkBottle\",\"Eternal Feather\",\"Singing Bowl\",\"Shuriken\",\"Bottled Tornado\",\"Pear\",\"Molten Egg 2\",\"Ornamental Fan\",\"HornCleat\",\"Cables\",\"Pantograph\",\"White Beast Statue\",\"Sundial\",\"Gremlin Horn\",\"Bottled Lightning\",\"The Courier\",\"Letter Opener\",\"Meat on the Bone\",\"Darkstone Periapt\",\"Frozen Egg 2\",\"Mercury Hourglass\",\"Kunai\"],\"rare_relics\":[\"Peace Pipe\",\"Unceasing Top\",\"StoneCalendar\",\"WingedGreaves\",\"Incense Burner\",\"Shovel\",\"TungstenRod\",\"Lizard Tail\",\"Gambling Chip\",\"FossilizedHelix\",\"Old Coin\",\"Ginger\",\"Prayer Wheel\",\"Dead Branch\",\"Bird Faced Urn\",\"Torii\",\"Thread and Needle\",\"Calipers\",\"CaptainsWheel\",\"Du-Vu Doll\",\"Ice Cream\",\"Mango\",\"Emotion Chip\",\"Pocketwatch\",\"Turnip\",\"Girya\"],\"shop_relics\":[\"Cauldron\",\"Chemical X\",\"OrangePellets\",\"Lee's Waffle\",\"Strange Spoon\",\"ClockworkSouvenir\",\"Frozen Eye\",\"Runic Capacitor\",\"DollysMirror\",\"PrismaticShard\",\"Toolbox\",\"Medical Kit\",\"Sling\",\"TheAbacus\",\"Membership Card\",\"HandDrill\"],\"boss_relics\":[\"Astrolabe\",\"Coffee Dripper\",\"Philosopher's Stone\",\"Snecko Eye\",\"Nuclear Battery\",\"Tiny House\",\"Fusion Hammer\",\"FrozenCore\",\"Velvet Choker\",\"Runic Pyramid\",\"Runic Dome\",\"SlaversCollar\",\"Busted Crown\",\"Black Star\",\"SacredBark\",\"Sozu\",\"Empty Cage\",\"Ectoplasm\",\"Inserter\",\"Cursed Key\",\"Calling Bell\"],\"post_combat\":false,\"mugged\":false,\"smoked\":false,\"combat_rewards\":null,\"bottled_flame\":null,\"bottled_lightning\":null,\"bottled_tornado\":null,\"metric_campfire_rested\":2,\"metric_campfire_upgraded\":0,\"metric_campfire_rituals\":0,\"metric_campfire_meditates\":0,\"metric_purchased_purges\":0,\"metric_potions_floor_spawned\":[1,3,6,12],\"metric_potions_floor_usage\":[],\"metric_current_hp_per_floor\":[74,71,62,51,51,35,35,27,27,21,43,36,58,46],\"metric_max_hp_per_floor\":[75,75,75,75,75,75,75,75,75,75,75,75,75,75],\"metric_gold_per_floor\":[116,128,144,219,63,93,93,113,113,129,129,141,141,171],\"metric_path_per_floor\":[\"M\",\"M\",\"M\",\"?\",\"S\",\"E\",\"?\",\"M\",\"T\",\"M\",\"R\",\"M\",\"R\",\"E\"],\"metric_path_taken\":[\"M\",\"M\",\"M\",\"?\",\"S\",\"E\",\"?\",\"M\",\"T\",\"?\",\"R\",\"M\",\"R\",\"E\",\"R\"],\"metric_items_purchased\":[\"Orrery\"],\"metric_item_purchase_floors\":[5],\"metric_items_purged\":[],\"metric_items_purged_floors\":[],\"metric_card_choices\":[{\"picked\":\"Fusion\",\"not_picked\":[\"Coolheaded\",\"Tempest\"],\"floor\":1},{\"picked\":\"Ball Lightning\",\"not_picked\":[\"Turbo\",\"BootSequence\"],\"floor\":2},{\"picked\":\"Auto Shields\",\"not_picked\":[\"Gash\",\"Redo\"],\"floor\":3},{\"picked\":\"Streamline\",\"not_picked\":[\"Stack\",\"Leap\"],\"floor\":5},{\"picked\":\"Rebound\",\"not_picked\":[\"Rainbow\",\"Streamline\"],\"floor\":5},{\"picked\":\"Defragment\",\"not_picked\":[\"Biased Cognition\",\"Aggregate\"],\"floor\":5},{\"picked\":\"Turbo\",\"not_picked\":[\"Rebound\",\"Conserve Battery\"],\"floor\":5},{\"picked\":\"Seek\",\"not_picked\":[\"Barrage\",\"Steam\"],\"floor\":5},{\"picked\":\"Go for the Eyes\",\"not_picked\":[\"Consume\",\"Cold Snap\"],\"floor\":6},{\"picked\":\"Ball Lightning\",\"not_picked\":[\"Steam Power\",\"Amplify\"],\"floor\":8},{\"picked\":\"Leap\",\"not_picked\":[\"Beam Cell\",\"Tempest\"],\"floor\":10},{\"picked\":\"FTL\",\"not_picked\":[\"Beam Cell\",\"Ball Lightning\"],\"floor\":12},{\"picked\":\"Steam Power\",\"not_picked\":[\"Rebound\",\"Leap\"],\"floor\":14}],\"metric_event_choices\":[{\"event_name\":\"World of Goop\",\"player_choice\":\"Gather Gold\",\"floor\":4,\"cards_obtained\":null,\"cards_removed\":null,\"cards_transformed\":null,\"cards_upgraded\":null,\"relics_obtained\":null,\"potions_obtained\":null,\"relics_lost\":null,\"damage_taken\":11,\"damage_healed\":0,\"max_hp_loss\":0,\"max_hp_gain\":0,\"gold_gain\":75,\"gold_loss\":0},{\"event_name\":\"Upgrade Shrine\",\"player_choice\":\"Upgraded\",\"floor\":7,\"cards_obtained\":null,\"cards_removed\":null,\"cards_transformed\":null,\"cards_upgraded\":[\"Seek\"],\"relics_obtained\":null,\"potions_obtained\":null,\"relics_lost\":null,\"damage_taken\":0,\"damage_healed\":0,\"max_hp_loss\":0,\"max_hp_gain\":0,\"gold_gain\":0,\"gold_loss\":0}],\"metric_boss_relics\":[],\"metric_damage_taken\":[{\"floor\":1,\"enemies\":\"Cultist\",\"damage\":1,\"turns\":3},{\"floor\":2,\"enemies\":\"Small Slimes\",\"damage\":3,\"turns\":2},{\"floor\":3,\"enemies\":\"2 Louse\",\"damage\":9,\"turns\":3},{\"floor\":6,\"enemies\":\"Gremlin Nob\",\"damage\":16,\"turns\":4},{\"floor\":8,\"enemies\":\"Lots of Slimes\",\"damage\":8,\"turns\":3},{\"floor\":10,\"enemies\":\"3 Louse\",\"damage\":6,\"turns\":3},{\"floor\":12,\"enemies\":\"Blue Slaver\",\"damage\":7,\"turns\":3},{\"floor\":14,\"enemies\":\"Lagavulin\",\"damage\":12,\"turns\":6}],\"metric_potions_obtained\":[{\"key\":\"DuplicationPotion\",\"floor\":1},{\"key\":\"DuplicationPotion\",\"floor\":3},{\"key\":\"SneckoOil\",\"floor\":6},{\"key\":\"Energy Potion\",\"floor\":12}],\"metric_relics_obtained\":[{\"key\":\"Blue Candle\",\"floor\":6},{\"key\":\"StrikeDummy\",\"floor\":9},{\"key\":\"Question Card\",\"floor\":14}],\"metric_campfire_choices\":[{\"floor\":11,\"key\":\"REST\"},{\"floor\":13,\"key\":\"REST\"}],\"metric_build_version\":\"2020-01-27\",\"metric_seed_played\":\"7811600684752178531\",\"metric_floor_reached\":15,\"metric_playtime\":494}";

class SaveManager {
  late String path;
  String? name;
  dynamic loadout;
  int? currentHealth;
  int? maxHealth;
  int? maxOrbs;
  int? gold;
  int? handSize;
  int? red;
  int? green;
  int? blue;
  int? monstersKilled;
  int? elites1Killed;
  int? elites2Killed;
  int? elites3Killed;
  int? goldGained;
  int? mysteryMachine;
  int? champions;
  int? perfect;
  bool? overkill;
  bool? combo;
  List<Card>? cards;
  Map<String, int>? obtainedCards;
  List<String>? relics;
  List<int>? relicCounters;
  List<String>? potions;
  int? potionSlots;
  bool? isEndlessMode;
  List<dynamic>? blights;
  List<dynamic>? blightCounters;
  List<dynamic>? endlessIncrements;
  bool? choseNeowReward;
  String? neowBonus;
  String? neowCost;
  bool? isAscensionMode;
  int? ascensionLevel;
  String? levelName;
  int? floorNum;
  int? actNum;
  List<String>? eventList;
  List<String>? oneTimeEventList;
  int? potionChance;
  List<num>? eventChances;
  List<String>? monsterList;
  List<String>? eliteMonsterList;
  List<String>? bossList;
  int? playTime;
  int? saveDate;
  int? seed;
  int? specialSeed;
  bool? seedSet;
  bool? isDaily;
  bool? isFinalActOn;
  bool? hasRubyKey;
  bool? hasEmeraldKey;
  bool? hasSapphireKey;
  int? dailyDate;
  bool? isTrial;
  List<dynamic>? dailyMods;
  List<dynamic>? customMods;
  String? boss;
  int? purgeCost;
  int? monsterSeedCount;
  int? eventSeedCount;
  int? merchantSeedCount;
  int? cardSeedCount;
  int? treasureSeedCount;
  int? relicSeedCount;
  int? potionSeedCount;
  int? aiSeedCount;
  int? shuffleSeedCount;
  int? cardRandomSeedCount;
  int? cardRandomSeedRandomizer;
  List<int>? pathX;
  List<int>? pathY;
  int? roomX;
  int? roomY;
  int? spiritCount;
  String? currentRoom;
  List<String>? commonRelics;
  List<String>? uncommonRelics;
  List<String>? rareRelics;
  List<String>? shopRelics;
  List<String>? bossRelics;
  bool? postCombat;
  bool? mugged;
  bool? smoked;
  dynamic combatRewards;
  dynamic bottledFlame;
  dynamic bottledLightning;
  dynamic bottledTornado;
  int? metricCampfireRested;
  int? metricCampfireUpgraded;
  int? metricCampfireRituals;
  int? metricCampfireMeditates;
  int? metricPurchasedPurges;
  List<int>? metricPotionsFloorSpawned;
  List<dynamic>? metricPotionsFloorUsage;
  List<int>? metricCurrentHpPerFloor;
  List<int>? metricMaxHpPerFloor;
  List<int>? metricGoldPerFloor;
  List<String>? metricPathPerFloor;
  List<String>? metricPathTaken;
  List<String>? metricItemsPurchased;
  List<int>? metricItemPurchaseFloors;
  List<dynamic>? metricItemsPurged;
  List<dynamic>? metricItemsPurgedFloors;
  List<MetricCardChoices>? metricCardChoices;
  List<MetricEventChoices>? metricEventChoices;
  List<dynamic>? metricBossRelics;
  List<MetricDamageTaken>? metricDamageTaken;
  List<MetricPotionsObtained>? metricPotionsObtained;
  List<MetricRelicsObtained>? metricRelicsObtained;
  List<MetricCampfireChoices>? metricCampfireChoices;
  String? metricBuildVersion;
  String? metricSeedPlayed;
  int? metricFloorReached;
  int? metricPlaytime;

  SaveManager({
    this.name,
    this.loadout,
    this.currentHealth,
    this.maxHealth,
    this.maxOrbs,
    this.gold,
    this.handSize,
    this.red,
    this.green,
    this.blue,
    this.monstersKilled,
    this.elites1Killed,
    this.elites2Killed,
    this.elites3Killed,
    this.goldGained,
    this.mysteryMachine,
    this.champions,
    this.perfect,
    this.overkill,
    this.combo,
    this.cards,
    this.obtainedCards,
    this.relics,
    this.relicCounters,
    this.potions,
    this.potionSlots,
    this.isEndlessMode,
    this.blights,
    this.blightCounters,
    this.endlessIncrements,
    this.choseNeowReward,
    this.neowBonus,
    this.neowCost,
    this.isAscensionMode,
    this.ascensionLevel,
    this.levelName,
    this.floorNum,
    this.actNum,
    this.eventList,
    this.oneTimeEventList,
    this.potionChance,
    this.eventChances,
    this.monsterList,
    this.eliteMonsterList,
    this.bossList,
    this.playTime,
    this.saveDate,
    this.seed,
    this.specialSeed,
    this.seedSet,
    this.isDaily,
    this.isFinalActOn,
    this.hasRubyKey,
    this.hasEmeraldKey,
    this.hasSapphireKey,
    this.dailyDate,
    this.isTrial,
    this.dailyMods,
    this.customMods,
    this.boss,
    this.purgeCost,
    this.monsterSeedCount,
    this.eventSeedCount,
    this.merchantSeedCount,
    this.cardSeedCount,
    this.treasureSeedCount,
    this.relicSeedCount,
    this.potionSeedCount,
    this.aiSeedCount,
    this.shuffleSeedCount,
    this.cardRandomSeedCount,
    this.cardRandomSeedRandomizer,
    this.pathX,
    this.pathY,
    this.roomX,
    this.roomY,
    this.spiritCount,
    this.currentRoom,
    this.commonRelics,
    this.uncommonRelics,
    this.rareRelics,
    this.shopRelics,
    this.bossRelics,
    this.postCombat,
    this.mugged,
    this.smoked,
    this.combatRewards,
    this.bottledFlame,
    this.bottledLightning,
    this.bottledTornado,
    this.metricCampfireRested,
    this.metricCampfireUpgraded,
    this.metricCampfireRituals,
    this.metricCampfireMeditates,
    this.metricPurchasedPurges,
    this.metricPotionsFloorSpawned,
    this.metricPotionsFloorUsage,
    this.metricCurrentHpPerFloor,
    this.metricMaxHpPerFloor,
    this.metricGoldPerFloor,
    this.metricPathPerFloor,
    this.metricPathTaken,
    this.metricItemsPurchased,
    this.metricItemPurchaseFloors,
    this.metricItemsPurged,
    this.metricItemsPurgedFloors,
    this.metricCardChoices,
    this.metricEventChoices,
    this.metricBossRelics,
    this.metricDamageTaken,
    this.metricPotionsObtained,
    this.metricRelicsObtained,
    this.metricCampfireChoices,
    this.metricBuildVersion,
    this.metricSeedPlayed,
    this.metricFloorReached,
    this.metricPlaytime,
  });

  factory SaveManager.fromJson(Map<String, dynamic> json) {
    return SaveManager(
      name: json['name'] as String?,
      loadout: json['loadout'],
      currentHealth: json['current_health'] as int?,
      maxHealth: json['max_health'] as int?,
      maxOrbs: json['max_orbs'] as int?,
      gold: json['gold'] as int?,
      handSize: json['hand_size'] as int?,
      red: json['red'] as int?,
      green: json['green'] as int?,
      blue: json['blue'] as int?,
      monstersKilled: json['monsters_killed'] as int?,
      elites1Killed: json['elites1_killed'] as int?,
      elites2Killed: json['elites2_killed'] as int?,
      elites3Killed: json['elites3_killed'] as int?,
      goldGained: json['gold_gained'] as int?,
      mysteryMachine: json['mystery_machine'] as int?,
      champions: json['champions'] as int?,
      perfect: json['perfect'] as int?,
      overkill: json['overkill'] as bool?,
      combo: json['combo'] as bool?,
      cards: (json['cards'] as List<dynamic>?)
          ?.map((e) => Card.fromJson(e as Map<String, dynamic>))
          .toList(),
      obtainedCards: json['obtained_cards'] == null
          ? null
          : json['obtained_cards'].cast<String, int>(),
      relics: json['relics']?.cast<String>(),
      relicCounters: json['relic_counters']?.cast<int>(),
      potions: json['potions']?.cast<String>(),
      potionSlots: json['potion_slots'] as int?,
      isEndlessMode: json['is_endless_mode'] as bool?,
      blights: json['blights'] as List<dynamic>?,
      blightCounters: json['blight_counters'] as List<dynamic>?,
      endlessIncrements: json['endless_increments'] as List<dynamic>?,
      choseNeowReward: json['chose_neow_reward'] as bool?,
      neowBonus: json['neow_bonus'] as String?,
      neowCost: json['neow_cost'] as String?,
      isAscensionMode: json['is_ascension_mode'] as bool?,
      ascensionLevel: json['ascension_level'] as int?,
      levelName: json['level_name'] as String?,
      floorNum: json['floor_num'] as int?,
      actNum: json['act_num'] as int?,
      eventList: json['event_list']?.cast<String>(),
      oneTimeEventList: json['one_time_event_list']?.cast<String>(),
      potionChance: json['potion_chance'] as int?,
      eventChances: json['event_chances']?.cast<num>(),
      monsterList: json['monster_list']?.cast<String>(),
      eliteMonsterList: json['elite_monster_list']?.cast<String>(),
      bossList: json['boss_list']?.cast<String>(),
      playTime: json['play_time'] as int?,
      saveDate: json['save_date'] as int?,
      seed: json['seed'] as int?,
      specialSeed: json['special_seed'] as int?,
      seedSet: json['seed_set'] as bool?,
      isDaily: json['is_daily'] as bool?,
      isFinalActOn: json['is_final_act_on'] as bool?,
      hasRubyKey: json['has_ruby_key'] as bool?,
      hasEmeraldKey: json['has_emerald_key'] as bool?,
      hasSapphireKey: json['has_sapphire_key'] as bool?,
      dailyDate: json['daily_date'] as int?,
      isTrial: json['is_trial'] as bool?,
      dailyMods: json['daily_mods'] as List<dynamic>?,
      customMods: json['custom_mods'] as List<dynamic>?,
      boss: json['boss'] as String?,
      purgeCost: json['purgeCost'] as int?,
      monsterSeedCount: json['monster_seed_count'] as int?,
      eventSeedCount: json['event_seed_count'] as int?,
      merchantSeedCount: json['merchant_seed_count'] as int?,
      cardSeedCount: json['card_seed_count'] as int?,
      treasureSeedCount: json['treasure_seed_count'] as int?,
      relicSeedCount: json['relic_seed_count'] as int?,
      potionSeedCount: json['potion_seed_count'] as int?,
      aiSeedCount: json['ai_seed_count'] as int?,
      shuffleSeedCount: json['shuffle_seed_count'] as int?,
      cardRandomSeedCount: json['card_random_seed_count'] as int?,
      cardRandomSeedRandomizer: json['card_random_seed_randomizer'] as int?,
      pathX: json['path_x']?.cast<int>(),
      pathY: json['path_y']?.cast<int>(),
      roomX: json['room_x'] as int?,
      roomY: json['room_y'] as int?,
      spiritCount: json['spirit_count'] as int?,
      currentRoom: json['current_room'] as String?,
      commonRelics: json['common_relics']?.cast<String>(),
      uncommonRelics: json['uncommon_relics']?.cast<String>(),
      rareRelics: json['rare_relics']?.cast<String>(),
      shopRelics: json['shop_relics']?.cast<String>(),
      bossRelics: json['boss_relics']?.cast<String>(),
      postCombat: json['post_combat'] as bool?,
      mugged: json['mugged'] as bool?,
      smoked: json['smoked'] as bool?,
      combatRewards: json['combat_rewards'],
      bottledFlame: json['bottled_flame'],
      bottledLightning: json['bottled_lightning'],
      bottledTornado: json['bottled_tornado'],
      metricCampfireRested: json['metric_campfire_rested'] as int?,
      metricCampfireUpgraded: json['metric_campfire_upgraded'] as int?,
      metricCampfireRituals: json['metric_campfire_rituals'] as int?,
      metricCampfireMeditates: json['metric_campfire_meditates'] as int?,
      metricPurchasedPurges: json['metric_purchased_purges'] as int?,
      metricPotionsFloorSpawned:
          json['metric_potions_floor_spawned']?.cast<int>(),
      metricPotionsFloorUsage:
          json['metric_potions_floor_usage'] as List<dynamic>?,
      metricCurrentHpPerFloor: json['metric_current_hp_per_floor']?.cast<int>(),
      metricMaxHpPerFloor: json['metric_max_hp_per_floor']?.cast<int>(),
      metricGoldPerFloor: json['metric_gold_per_floor']?.cast<int>(),
      metricPathPerFloor: json['metric_path_per_floor']?.cast<String>(),
      metricPathTaken: json['metric_path_taken']?.cast<String>(),
      metricItemsPurchased: json['metric_items_purchased']?.cast<String>(),
      metricItemPurchaseFloors:
          json['metric_item_purchase_floors']?.cast<int>(),
      metricItemsPurged: json['metric_items_purged'] as List<dynamic>?,
      metricItemsPurgedFloors:
          json['metric_items_purged_floors'] as List<dynamic>?,
      metricCardChoices: (json['metric_card_choices'] as List<dynamic>?)
          ?.map((e) => MetricCardChoices.fromJson(e as Map<String, dynamic>))
          .toList(),
      metricEventChoices: (json['metric_event_choices'] as List<dynamic>?)
          ?.map((e) => MetricEventChoices.fromJson(e as Map<String, dynamic>))
          .toList(),
      metricBossRelics: json['metric_boss_relics'] as List<dynamic>?,
      metricDamageTaken: (json['metric_damage_taken'] as List<dynamic>?)
          ?.map((e) => MetricDamageTaken.fromJson(e as Map<String, dynamic>))
          .toList(),
      metricPotionsObtained: (json['metric_potions_obtained'] as List<dynamic>?)
          ?.map(
              (e) => MetricPotionsObtained.fromJson(e as Map<String, dynamic>))
          .toList(),
      metricRelicsObtained: (json['metric_relics_obtained'] as List<dynamic>?)
          ?.map((e) => MetricRelicsObtained.fromJson(e as Map<String, dynamic>))
          .toList(),
      metricCampfireChoices: (json['metric_campfire_choices'] as List<dynamic>?)
          ?.map(
              (e) => MetricCampfireChoices.fromJson(e as Map<String, dynamic>))
          .toList(),
      metricBuildVersion: json['metric_build_version'] as String?,
      metricSeedPlayed: json['metric_seed_played'] as String?,
      metricFloorReached: json['metric_floor_reached'] as int?,
      metricPlaytime: json['metric_playtime'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'loadout': loadout,
      'current_health': currentHealth,
      'max_health': maxHealth,
      'max_orbs': maxOrbs,
      'gold': gold,
      'hand_size': handSize,
      'red': red,
      'green': green,
      'blue': blue,
      'monsters_killed': monstersKilled,
      'elites1_killed': elites1Killed,
      'elites2_killed': elites2Killed,
      'elites3_killed': elites3Killed,
      'gold_gained': goldGained,
      'mystery_machine': mysteryMachine,
      'champions': champions,
      'perfect': perfect,
      'overkill': overkill,
      'combo': combo,
      'cards': cards?.map((e) => e.toJson()).toList(),
      'obtained_cards': obtainedCards,
      'relics': relics,
      'relic_counters': relicCounters,
      'potions': potions,
      'potion_slots': potionSlots,
      'is_endless_mode': isEndlessMode,
      'blights': blights,
      'blight_counters': blightCounters,
      'endless_increments': endlessIncrements,
      'chose_neow_reward': choseNeowReward,
      'neow_bonus': neowBonus,
      'neow_cost': neowCost,
      'is_ascension_mode': isAscensionMode,
      'ascension_level': ascensionLevel,
      'level_name': levelName,
      'floor_num': floorNum,
      'act_num': actNum,
      'event_list': eventList,
      'one_time_event_list': oneTimeEventList,
      'potion_chance': potionChance,
      'event_chances': eventChances,
      'monster_list': monsterList,
      'elite_monster_list': eliteMonsterList,
      'boss_list': bossList,
      'play_time': playTime,
      'save_date': saveDate,
      'seed': seed,
      'special_seed': specialSeed,
      'seed_set': seedSet,
      'is_daily': isDaily,
      'is_final_act_on': isFinalActOn,
      'has_ruby_key': hasRubyKey,
      'has_emerald_key': hasEmeraldKey,
      'has_sapphire_key': hasSapphireKey,
      'daily_date': dailyDate,
      'is_trial': isTrial,
      'daily_mods': dailyMods,
      'custom_mods': customMods,
      'boss': boss,
      'purgeCost': purgeCost,
      'monster_seed_count': monsterSeedCount,
      'event_seed_count': eventSeedCount,
      'merchant_seed_count': merchantSeedCount,
      'card_seed_count': cardSeedCount,
      'treasure_seed_count': treasureSeedCount,
      'relic_seed_count': relicSeedCount,
      'potion_seed_count': potionSeedCount,
      'ai_seed_count': aiSeedCount,
      'shuffle_seed_count': shuffleSeedCount,
      'card_random_seed_count': cardRandomSeedCount,
      'card_random_seed_randomizer': cardRandomSeedRandomizer,
      'path_x': pathX,
      'path_y': pathY,
      'room_x': roomX,
      'room_y': roomY,
      'spirit_count': spiritCount,
      'current_room': currentRoom,
      'common_relics': commonRelics,
      'uncommon_relics': uncommonRelics,
      'rare_relics': rareRelics,
      'shop_relics': shopRelics,
      'boss_relics': bossRelics,
      'post_combat': postCombat,
      'mugged': mugged,
      'smoked': smoked,
      'combat_rewards': combatRewards,
      'bottled_flame': bottledFlame,
      'bottled_lightning': bottledLightning,
      'bottled_tornado': bottledTornado,
      'metric_campfire_rested': metricCampfireRested,
      'metric_campfire_upgraded': metricCampfireUpgraded,
      'metric_campfire_rituals': metricCampfireRituals,
      'metric_campfire_meditates': metricCampfireMeditates,
      'metric_purchased_purges': metricPurchasedPurges,
      'metric_potions_floor_spawned': metricPotionsFloorSpawned,
      'metric_potions_floor_usage': metricPotionsFloorUsage,
      'metric_current_hp_per_floor': metricCurrentHpPerFloor,
      'metric_max_hp_per_floor': metricMaxHpPerFloor,
      'metric_gold_per_floor': metricGoldPerFloor,
      'metric_path_per_floor': metricPathPerFloor,
      'metric_path_taken': metricPathTaken,
      'metric_items_purchased': metricItemsPurchased,
      'metric_item_purchase_floors': metricItemPurchaseFloors,
      'metric_items_purged': metricItemsPurged,
      'metric_items_purged_floors': metricItemsPurgedFloors,
      'metric_card_choices': metricCardChoices?.map((e) => e.toJson()).toList(),
      'metric_event_choices':
          metricEventChoices?.map((e) => e.toJson()).toList(),
      'metric_boss_relics': metricBossRelics,
      'metric_damage_taken': metricDamageTaken?.map((e) => e.toJson()).toList(),
      'metric_potions_obtained':
          metricPotionsObtained?.map((e) => e.toJson()).toList(),
      'metric_relics_obtained':
          metricRelicsObtained?.map((e) => e.toJson()).toList(),
      'metric_campfire_choices':
          metricCampfireChoices?.map((e) => e.toJson()).toList(),
      'metric_build_version': metricBuildVersion,
      'metric_seed_played': metricSeedPlayed,
      'metric_floor_reached': metricFloorReached,
      'metric_playtime': metricPlaytime,
    };
  }

  factory SaveManager.fromString(String raw) {
    return SaveManager.fromJson(jsonDecode(raw));
  }

  factory SaveManager.auto() {
    print('자동');
    Directory dir = Directory(
        '/storage/emulated/0/Android/data/com.humble.SlayTheSpire/files/saves');
    late SaveManager manager;
    bool autosaveExist = false;
    String path = '';
    dir.listSync(recursive: false).forEach((e) {
      if (!e.path.endsWith('autosave')) return;
      path = e.path;
      File saveFile = File(path);
      String content = saveFile.readAsStringSync();
      if (content == '') return;

      autosaveExist = true;
      manager = SaveManager.fromString(content);
    });
    if (!autosaveExist) throw Exception('can\'t find save file');
    manager.path = path;
    return manager;
  }

  factory SaveManager.manual(String path) {
    print('수동');
    var temp = SaveManager.fromString(sample);
    temp.path = 'manual';
    return temp;
  }

  void save() {
    File(path).writeAsString(jsonEncode(this.toJson()));
  }

  void addCard({required String name, int upgrades = 0, int misc = 0}) {
    cards?.add(Card(id: name, upgrades: upgrades, misc: misc));
  }

  void addRelics(String name) {
    relics?.add(name);
  }
}
