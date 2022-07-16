//Imports
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;


//Loot Tables and Pools
val tableDungeonRaid = LootTweaker.getTable("arcaneworld:raid_1");
val poolRaid = tableDungeonRaid.getPool("raid_1");

//EBWiz mob loot inject
val tableEBWizInjectMob = LootTweaker.getTable("ebwizardry:entities/mob_additions");
val poolEBWizInjectMob = tableEBWizInjectMob.getPool("wizardry");

//dimdoors
val tableDimDoors = LootTweaker.getTable("dimdoors:dungeon_chest");
val poolDimDoorsNew = tableDimDoors.addPool("bm_book", 1, 1, 0, 0);

//simple_dungeon
val tableSimpleDungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");
val poolsToRemove = [
	//"custom_avatar_loot_pools",
	//"custom_avatar_loot_pools_2",
	//"custom_avatar_loot_pools_3",
	"MysticalWorld",
	"bewitchment_materials_pool",
	"botania_inject_pool",
	"rat_upgrade_basic",
	"token_fragment",
	"rats:contaminated_food",
	"magicalsculpture_simple_dungeon",
	"tombstone:chest_treasure"
] as string[];
val poolExtra = tableSimpleDungeon.addPool("hos_early_loot", 1, 3, 1, 1);
val poolRare = tableSimpleDungeon.addPool("hos_early_rare_loot", 0, 2, 0, 0);

//foxhound drops
val tableFoxhound = LootTweaker.getTable("quark:entities/foxhound");
val poolDevilDust = tableFoxhound.addPool("devil_dust", 1, 1, 0, 0);

val tableFrogQ = LootTweaker.getTable("quark:entities/frog");
val tableFrogMW = LootTweaker.getTable("mysticalworld:entity/frog");
val poolFrogLeg = tableFrogMW.addPool("leg", 1, 1, 0, 1);

//nether fortress
val tableNetherFortress = LootTweaker.getTable("minecraft:chests/nether_bridge");
val netherPoolsToRemove = [
	//"custom_avatar_loot_pools",
	//"custom_avatar_loot_pools_2",
	//"custom_avatar_loot_pools_3",
	//"custom_avatar_loot_pools_4",
	"bewitchment_nether_materials_pool",
	"bewitchment_materials_pool",
	"magicalsculpture_nether_bridge",
	"tombstone:chest_treasure"
] as string[];
val poolNetherExtra = tableNetherFortress.addPool("hos_nether_loot", 2, 7, 1, 1);
val poolNetherRare = tableNetherFortress.addPool("hos_nether_rare_loot", 1, 2, 0, 0);
val poolNetherMain = tableNetherFortress.getPool("main");

val tableAetherBronzeChest = LootTweaker.getTable("aether_legacy:chests/bronze_dungeon_chest");
val tableAetherBronzeReward = LootTweaker.getTable("aether_legacy:chests/bronze_dungeon_reward");
val tableAetherSilverChest = LootTweaker.getTable("aether_legacy:chests/silver_dungeon_chest");
val tableAetherSilverReward = LootTweaker.getTable("aether_legacy:chests/silver_dungeon_reward");
val tableAetherGoldReward = LootTweaker.getTable("aether_legacy:chests/gold_dungeon_reward");
val poolAetherBronzeChest = tableAetherBronzeChest.addPool("hos_extra", 1, 3, 1, 1);
val poolAetherBronzeReward = tableAetherBronzeReward.addPool("hos_extra", 1, 3, 1, 1);
val poolAetherSilverChest = tableAetherSilverChest.addPool("hos_extra", 1, 3, 1, 1);
val poolAetherSilverReward = tableAetherSilverReward.addPool("hos_extra", 1, 2, 0, 0);
val poolAetherGoldReward = tableAetherGoldReward.addPool("hos_extra", 1, 2, 0, 0);

val tableBSLibrary = LootTweaker.getTable("blue_skies:chests/blinding_dungeon/library_chest");
val tableBSStudy = LootTweaker.getTable("blue_skies:chests/blinding_dungeon/study_chest");
val tableBSPrisonBright = LootTweaker.getTable("blue_skies:chests/blinding_dungeon/prison_chest_everbright");
val tableBSPrisonDawn = LootTweaker.getTable("blue_skies:chests/blinding_dungeon/prison_chest_everdawn");
val tableBSAlchemist = LootTweaker.getTable("blue_skies:chests/blinding_dungeon/bosses/alchemist_loot");
val tableBSSummoner = LootTweaker.getTable("blue_skies:chests/blinding_dungeon/bosses/summoner_loot");
val tableBSVillageBright = LootTweaker.getTable("blue_skies:chests/village/everbright_blacksmith");
val tableBSVillageDawn = LootTweaker.getTable("blue_skies:chests/village/everdawn_blacksmith");

val poolBSLibrary = tableBSLibrary.addPool("hos_extra", 1, 2, 1, 1);
val poolBSLibaryWizInject = tableBSLibrary.addPool("wiz_inject", 1, 1, 0, 0);
val poolBSStudy = tableBSStudy.addPool("hos_extra", 1, 3, 1, 1);
val poolBSPrisonBright = tableBSPrisonBright.addPool("hos_extra", 1, 3, 1, 1);
val poolBSPrisonDawn = tableBSPrisonDawn.addPool("hos_extra", 1, 3, 1, 1);
val poolBSAlchemist = tableBSAlchemist.addPool("hos_extra", 1, 3, 0, 0);
val poolBSSummoner = tableBSSummoner.addPool("hos_extra", 1, 3, 0, 0);
val poolBSVillageBright = tableBSVillageBright.addPool("hos_extra", 1, 3, 1, 1);
val poolBSVillageDawn = tableBSVillageDawn.addPool("hos_extra", 1, 3, 1, 1);

val tableAetherMimic = LootTweaker.getTable("aether_legacy:entities/chest_mimic");
val poolAetherMimic = tableAetherMimic.getPool("chest");

val tableArtifactMimic = LootTweaker.getTable("artifacts:mimic_underground");
val poolArtifactMimic = tableArtifactMimic.getPool("main");

val tableCavePot = LootTweaker.getTable("thebetweenlands:loot/cave_pot");
val poolCavePot = tableCavePot.getPool("cave_pot");
val tableCommonPot = LootTweaker.getTable("thebetweenlands:loot/common_pot_loot");
val poolCommonPot = tableCommonPot.getPool("common_pot");
val tableCragrockTowerPot = LootTweaker.getTable("thebetweenlands:loot/cragrock_tower_pot");
val poolCragrockTowerPot = tableCragrockTowerPot.getPool("pot_loot");
val tableDungeonPot = LootTweaker.getTable("thebetweenlands:loot/dungeon_pot_loot");
val poolDungeonPot = tableDungeonPot.getPool("dungeon_pot");
val tableMarshRuinsPot = LootTweaker.getTable("thebetweenlands:loot/marsh_ruins_pot");
val poolMarshRuinsPot = tableMarshRuinsPot.getPool("marsh_ruins_pot");
val tableSludgePlainsRuinsUrn = LootTweaker.getTable("thebetweenlands:loot/sludge_plains_ruins_urn");
val poolSludgePlainsRuinsUrn = tableSludgePlainsRuinsUrn.getPool("sludge_plains_ruins_urn");
val tableSludgeWormDungeonCryptUrn = LootTweaker.getTable("thebetweenlands:loot/sludge_worm_dungeon_crypt_urn");
val poolSludgeWormDungeonCryptUrn = tableSludgeWormDungeonCryptUrn.getPool("urn_loot");
val tableSludgeWormDungeonUrn = LootTweaker.getTable("thebetweenlands:loot/sludge_worm_dungeon_urn");
val poolSludgeWormDungeonUrn = tableSludgeWormDungeonUrn.getPool("urn_loot");
val tableTarPoolPot = LootTweaker.getTable("thebetweenlands:loot/tar_pool_pot");
val poolTarPoolPot = tableTarPoolPot.getPool("tar_pool_pot");
val tableUndergroundRuinsPot = LootTweaker.getTable("thebetweenlands:loot/underground_ruins_pot");
val poolUndergroundRuinsPot = tableUndergroundRuinsPot.getPool("underground_ruins_pot");
val tableWightFortressPot = LootTweaker.getTable("thebetweenlands:loot/wight_fortress_pot");
val poolWightFortressPot = tableWightFortressPot.getPool("pot_loot");

//items
val extrasSimpleMap = {
	<dynamictrees:oakseed> : 10,
	<dynamictrees:appleseed> : 6,
	<dynamictrees:birchseed> : 10,
	<dynamictrees:spruceseed> : 10,
	<dynamictrees:jungleseed> : 10,
	<dynamictrees:acaciaseed> : 10,
	<dynamictrees:darkoakseed> : 10,
	<dynamictrees:cactusseed> : 10,
	<rustic:tomato_seeds> : 10,
	<rustic:grape_stem> : 10,
	<inspirations:potato_seeds> : 10,
	<inspirations:carrot_seeds> : 10,
	<wizardry:syringe:1> : 4,
	<wizardry:syringe:2> : 2,
	<quark:glass_item_frame> : 3,
	<rats:cheese> : 7,
	<minecraft:ender_pearl> : 4,
	<inspirations:rope> : 7,
	<botania:tinypotato> : 3,
	<inspirations:flower> : 10,
	<minecraft:anvil> : 3,
	<naturescompass:naturescompass> : 3
} as int[IItemStack];
val grassSeeds = <botania:grassseeds>;
val chestUpgrade = <metalchests:chest_upgrade>;
val illuminationPowder = <astralsorcery:itemusabledust>;
val angelHeart = <contenttweaker:angel_heart>;
val portalCore = <contenttweaker:otherworlds_core>;
val elytra = <minecraft:elytra>;
val doubleFlowers = <minecraft:double_plant:*>;
val beacon = <minecraft:beacon>;
val pickarang = <quark:pickarang>;
val wandUnbreakable = <betterbuilderswands:wandunbreakable:12>;
val moltenCore = <arcaneworld:molten_core>;
val diaryDoomed = <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:doomed"});
val tornPage = <contenttweaker:torn_page>;
val sentientSword = <bloodmagic:sentient_sword>;
val shulkerBoxes = [
	<minecraft:white_shulker_box>,
	<minecraft:orange_shulker_box>,
	<minecraft:magenta_shulker_box>,
	<minecraft:light_blue_shulker_box>,
	<minecraft:yellow_shulker_box>,
	<minecraft:lime_shulker_box>,
	<minecraft:pink_shulker_box>,
	<minecraft:gray_shulker_box>,
	<minecraft:silver_shulker_box>,
	<minecraft:cyan_shulker_box>,
	<minecraft:purple_shulker_box>,
	<minecraft:blue_shulker_box>,
	<minecraft:brown_shulker_box>,
	<minecraft:green_shulker_box>,
	<minecraft:red_shulker_box>,
	<minecraft:black_shulker_box>
] as IItemStack[];
val devilDust = <wizardry:devil_dust>;
val frogLeg = <quark:frog_leg>;
val extrasNetherMap = {
	<rustic:mooncap_mushroom> : 5,
	<rustic:cohosh> : 5,
	<rustic:chamomile> : 5,
	<rustic:aloe_vera> : 5,
	<arcaneworld:amethyst> : 3,
	<cuisine:crops:8> : 5,
	<cuisine:crops:1> : 5,
	<minecraft:nether_wart> : 5,
	<rustic:blood_orchid> : 3,
	<minecraft:splash_potion>.withTag({Potion: "minecraft:fire_resistance"}) : 15,
	<rustic:oliveseed> : 5,
	<rustic:core_root> : 5,
	<rustic:ginseng> : 5,
	<rustic:wind_thistle> : 5,
	<rustic:horsetail> : 5,
	<rustic:cloudsbluff> : 5,
	<rustic:marsh_mallow> : 5,
	<minecraft:ender_pearl> : 25,
	<embers:breaker> : 6,
	<contenttweaker:token_reforge> : 5
} as int[IItemStack];
val netherMainRemovals = [
	"minecraft:iron_horse_armor",
	"minecraft:diamond_horse_armor",
	"minecraft:golden_horse_armor",
	"minecraft:saddle"
] as string[];
val biomeStones = <botania:biomestonea>;
val coal = <minecraft:coal>;
val cobblestone = <minecraft:cobblestone>;
val iChisel = <chisel:chisel_hitech>;
val advSimilsax = <similsaxtranstructors:similsaxtranstructoradvanced>;
val shieldWood = <superiorshields:vanilla_shield_wood>;
val shieldStone = <superiorshields:vanilla_shield_stone>;
val obsidian = <minecraft:obsidian>;
val autoBreaker = <embers:breaker>;
val extrasAetherMap = {
	<cuisine:crops:21> : 5,
	<cuisine:crops:10> : 5,
	<minecraft:fireworks>.withTag({Fireworks: {Flight: 3 as byte}}) * 3 : 20,
	<cuisine:crops:12> : 5,
	<quark:biotite> : 7,
	<quark:arrow_torch> : 10,
	<astralsorcery:itemusabledust> : 10,
	<cuisine:crops:9> : 5,
	<cuisine:crops:3>: 5,
	<botania:tinypotato> : 5,
	<quark:iron_rod> : 2
} as int[IItemStack];
val chorusFlower = <minecraft:chorus_flower>;
val skyRod = <botania:tornadorod>;
val overgrowthSeed = <botania:overgrowthseed>;
val laputaShard = <botania:laputashard>;
val totemUndying = <minecraft:totem_of_undying>;
val wingsMap = {
	<wings:angel_wings> : 1,
	<wings:slime_wings> : 1,
	<wings:blue_butterfly_wings> : 1,
	<wings:monarch_butterfly_wings> : 1,
	<wings:dragon_wings> : 1,
	<wings:evil_wings> : 1,
	<wings:fairy_wings> : 1,
	<wings:bat_wings> : 1,
	<wings:fire_wings> : 1
} as int[IItemStack];
val extrasBSMap = {
	<contenttweaker:precia_mundane> : 10,
	<contenttweaker:metallia_mundane> : 10,
	<embers:ingot_lead> : 15,
	<embers:ingot_copper> : 15,
	<embers:ingot_tin> : 15,
	<embers:ingot_dawnstone> : 10,
	<embers:ingot_bronze> : 12,
	<superiorshields:vanilla_shield_gold> : 3,
	<superiorshields:vanilla_shield_iron> : 6,
	<superiorshields:vanilla_shield_diamond> : 1,
	<superiorshields:botania_shield_manasteel> : 1,
	<buildinggadgets:constructionpaste> : 12,
	<botania:tinypotato> : 8,
	<arcaneworld:fang_wand> : 6,
	<rats:token_fragment> : 15,
	<rats:token_piece> : 3
} as int[IItemStack];
val sparkUpgrade = <botania:sparkupgrade>;
val caveIlluminator = <astralsorcery:blockworldilluminator>;
val book = <minecraft:book>;
val lapis = <minecraft:dye:4>;
//val bendingScroll = <avatarmod:scroll>;
val tokenReforge = <contenttweaker:token_reforge>;
val chests = {
	<metalchests:metal_chest:0> : 4,
	<metalchests:metal_chest:1> : 3,
	<metalchests:metal_chest:2> : 2,
	<metalchests:metal_chest:3> : 2,
	<metalchests:metal_chest:4> : 1,
	<metalchests:metal_chest:5> : 1,
	<minecraft:ender_chest> : 3,
	<minecraft:chest> : 5,
	<quark:custom_chest:0> : 5,
	<quark:custom_chest:1> : 5,
	<quark:custom_chest:2> : 5,
	<quark:custom_chest:3> : 5,
	<quark:custom_chest:4> : 5
} as int[IItemStack];
val snorkel = <artifacts:snorkel>;
val drinkingHat = <artifacts:drinking_hat>;
val curiosityArcane = <thaumcraft:curio:0>;
val curiosityPreserved = <thaumcraft:curio:1>;
val curiosityAncient = <thaumcraft:curio:2>;
val curiosityEldritch = <thaumcraft:curio:3>;
val curiosityIlluminating = <thaumcraft:curio:4>;
val curiosityTwisted = <thaumcraft:curio:5>;
val amber = <thaumcraft:amber>;
val quicksilverDrop = <thaumcraft:nugget:5>;

//Add angel hearts to the pool
poolRaid.addItemEntry(angelHeart, 6);

//Portal core for Misty World and aether portals
poolRaid.addItemEntry(portalCore, 14);

//add Elytra to the pool
poolRaid.addItemEntry(elytra, 6);

//reforge tokens
poolRaid.addItemEntry(tokenReforge, 10, 1, [Functions.setCount(3, 8)], []);
poolExtra.addItemEntry(tokenReforge, 20, 2, [Functions.setCount(2, 7)], []);
poolDimDoorsNew.addItemEntry(tokenReforge, 5, 1, [Functions.setCount(3, 8)], []);
tokenReforge.addTooltip(format.gold("Use in Reforging Station to reroll equipment Traits"));

//remove Potion Orbs
poolRaid.removeEntry("arcaneworld:potion_orb");

//remove spell books from mob drops
poolEBWizInjectMob.removeEntry("ebwizardry:spell_book");

//remove extra pools from simple_dungeon
for pool in poolsToRemove {
	tableSimpleDungeon.removePool(pool);
}

//add extra stuff
for item, weight in extrasSimpleMap {
	poolExtra.addItemEntry(item, weight);	
}
poolExtra.addItemEntry(grassSeeds, 6, 1, [Functions.setMetadata(0, 8)], []);
poolExtra.addItemEntry(chestUpgrade, 4, 2, [Functions.setMetadata(0, 14)], []);
poolExtra.addItemEntry(illuminationPowder, 6, 1, [Functions.setCount(1, 10)], []);
poolExtra.addItemEntry(doubleFlowers, 5, 1, [Functions.setMetadata(0, 1)], []);
poolExtra.addItemEntry(doubleFlowers, 5, 1, [Functions.setMetadata(4, 5)], []);
for box in shulkerBoxes {
	poolExtra.addItemEntry(box, 2);
	box.addTooltip(format.gold("Insert items without placing: Right click the item directly onto it in your inventory!"));
	box.addTooltip(format.gold("Does NOT work on your hotbar, or with other UIs open"));
}

poolRare.addItemEntry(beacon, 1, 3, [Functions.setCount(0, 1)], []);
poolRare.addItemEntry(pickarang, 3, 2, [Functions.setCount(0, 1)], []);
poolRare.addItemEntry(wandUnbreakable, 1, 4, [Functions.setCount(0, 1)], []);
poolRare.addItemEntry(moltenCore, 5, 1, [Functions.setCount(0, 1)], []);
poolRare.addItemEntry(elytra, 3, 1, [Functions.setCount(0, 1)], []);

//Dim doors
poolDimDoorsNew.addItemEntry(tornPage, 2);
poolDimDoorsNew.addItemEntry(sentientSword, 2);

//foxhound
tableFoxhound.removePool("leather");
poolDevilDust.addItemEntry(devilDust, 1, 0, [Functions.setCount(0, 3), Functions.lootingEnchantBonus(0, 1, 5)], []);

//frog
tableFrogQ.removePool("main");
poolFrogLeg.addItemEntry(frogLeg, 1, 0, [], []);

//nether fortress
for poolNether in netherPoolsToRemove {
	tableNetherFortress.removePool(poolNether);
}
for netherItem, weight in extrasNetherMap {
	poolNetherExtra.addItemEntry(netherItem, weight);	
}
poolNetherExtra.addItemEntry(biomeStones, 10, 1, [Functions.setMetadata(8, 15), Functions.setCount(5, 100)], []);
poolNetherExtra.addItemEntry(cobblestone, 15, 1, [Functions.setCount(5, 100)], []);
poolNetherExtra.addItemEntry(coal, 4, 1, [Functions.setCount(1, 3)], []);
for trash in netherMainRemovals {
	poolNetherMain.removeEntry(trash);
}

poolNetherRare.addItemEntry(iChisel, 2, 3, [Functions.setCount(0, 1)], []);
poolNetherRare.addItemEntry(advSimilsax, 2, 2, [Functions.setCount(0, 1)], []);
poolNetherRare.addItemEntry(shieldWood, 3, 4, [Functions.setCount(0, 1)], []);
poolNetherRare.addItemEntry(shieldStone, 2, 1, [Functions.setCount(0, 1)], []);
poolNetherRare.addItemEntry(obsidian, 7, 1, [Functions.setCount(0, 5)], []);
poolNetherRare.addItemEntry(chestUpgrade, 6, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 14)], []);
poolNetherRare.addItemEntry(autoBreaker, 5, 1, [], []);
poolNetherRare.addItemEntry(tokenReforge, 6, 1, [Functions.setCount(1, 3)], []);

//Aether dungeons
for aetherItem, weight in extrasAetherMap {
	poolAetherBronzeChest.addItemEntry(aetherItem, weight);
	poolAetherSilverChest.addItemEntry(aetherItem, weight);
	poolAetherGoldReward.addItemEntry(aetherItem, weight);
}
poolAetherBronzeChest.addItemEntry(lapis, 16, 1, [Functions.setCount(1, 20)], []);
poolAetherSilverChest.addItemEntry(lapis, 16, 1, [Functions.setCount(1, 20)], []);
poolAetherGoldReward.addItemEntry(lapis, 16, 1, [Functions.setCount(1, 20)], []);
poolAetherBronzeChest.addItemEntry(chestUpgrade, 3, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 14)], []);
poolAetherSilverChest.addItemEntry(chestUpgrade, 3, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 14)], []);
poolAetherGoldReward.addItemEntry(chestUpgrade, 3, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 14)], []);
poolAetherBronzeReward.addItemEntry(iChisel, 2, 3, [Functions.setCount(0, 1)], []);
poolAetherBronzeReward.addItemEntry(skyRod, 2, 3, [Functions.setCount(0, 1)], []);
poolAetherBronzeReward.addItemEntry(chorusFlower, 2, 3, [Functions.setCount(1, 2)], []);
poolAetherSilverReward.addItemEntry(elytra, 3, 1, [Functions.setCount(0, 1)], []);
poolAetherSilverReward.addItemEntry(wandUnbreakable, 1, 4, [Functions.setCount(0, 1)], []);
poolAetherSilverReward.addItemEntry(totemUndying, 1, 1, [Functions.setCount(0, 1)], []);
poolAetherSilverReward.addItemEntry(overgrowthSeed, 2, 1, [Functions.setCount(0, 1)], []);
poolAetherGoldReward.addItemEntry(overgrowthSeed, 3, 1, [Functions.setCount(0, 1)], []);
poolAetherGoldReward.addItemEntry(laputaShard, 2, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 19)], []);
poolAetherGoldReward.addItemEntry(totemUndying, 3, 1, [Functions.setCount(0, 1)], []);

//Blue Skies
for blueItem, weight in extrasBSMap {
	poolBSVillageBright.addItemEntry(blueItem, weight);
	poolBSVillageDawn.addItemEntry(blueItem, weight);
	poolBSStudy.addItemEntry(blueItem, weight);
	poolBSPrisonBright.addItemEntry(blueItem, weight);
	poolBSPrisonDawn.addItemEntry(blueItem, weight);
}
poolBSStudy.addItemEntry(caveIlluminator, 3);
poolBSPrisonBright.addItemEntry(caveIlluminator, 3);
poolBSPrisonDawn.addItemEntry(caveIlluminator, 3);
poolBSStudy.addItemEntry(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSPrisonBright.addItemEntry(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSPrisonDawn.addItemEntry(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSLibrary.addItemEntry(book, 10, 1, [Functions.enchantWithLevels(25, 35, false)], []);
poolBSLibrary.addItemEntry(book, 2, 1, [Functions.enchantWithLevels(25, 35, true)], []);
poolBSVillageBright.addItemEntry(lapis, 16, 1, [Functions.setCount(1, 20)], []);
poolBSVillageDawn.addItemEntry(lapis, 16, 1, [Functions.setCount(1, 20)], []);
poolBSStudy.addItemEntry(lapis, 16, 1, [Functions.setCount(1, 20)], []);
poolBSPrisonBright.addItemEntry(lapis, 16, 1, [Functions.setCount(1, 20)], []);
poolBSPrisonDawn.addItemEntry(lapis, 16, 1, [Functions.setCount(1, 20)], []);
//poolBSLibrary.addItemEntry(bendingScroll, 8, 1, [Functions.setMetadata(1, 4)], []);
for wings, weight in wingsMap {
	poolBSAlchemist.addItemEntry(wings, weight);
	poolBSSummoner.addItemEntry(wings, weight);
}
poolBSAlchemist.addItemEntry(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSSummoner.addItemEntry(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSAlchemist.addItemEntry(totemUndying, 2, 1, [Functions.setCount(0, 1)], []);
poolBSSummoner.addItemEntry(totemUndying, 2, 1, [Functions.setCount(0, 1)], []);
poolBSAlchemist.addItemEntry(overgrowthSeed, 2, 1, [Functions.setCount(1, 2)], []);
poolBSSummoner.addItemEntry(overgrowthSeed, 2, 1, [Functions.setCount(1, 2)], []);
poolBSLibaryWizInject.addLootTableEntry("ebwizardry:chests/shrine", 10);
poolBSAlchemist.addLootTableEntry("ebwizardry:chests/shrine", 10);
poolBSSummoner.addLootTableEntry("ebwizardry:chests/shrine", 10);
//poolBSAlchemist.addItemEntry(bendingScroll, 2, 1, [Functions.setMetadata(5, 6), Functions.setCount(0, 1)], []);
//poolBSSummoner.addItemEntry(bendingScroll, 2, 1, [Functions.setMetadata(7, 8), Functions.setCount(0, 1)], []);


//aether mimic upgrading
poolAetherMimic.clearEntries();
for chest, weight in chests {
	poolAetherMimic.addItemEntry(chest, weight, 0, [Functions.lootingEnchantBonus(0, 1, 4)], []);
}

//add snorkel and drinking hat to mimic drops
poolArtifactMimic.addItemEntry(snorkel, 2, 0, [], []);
poolArtifactMimic.addItemEntry(drinkingHat, 2, 0, [], []);


//TC stuff in urns/pots
poolCavePot.addItemEntry(curiosityPreserved, 20, 0, [], []);
poolCavePot.addItemEntry(curiosityArcane, 20, 0, [], []);
poolCavePot.addItemEntry(curiosityAncient, 10, 0, [], []);
poolCavePot.addItemEntry(curiosityIlluminating, 10, 0, [], []);
poolCavePot.addItemEntry(amber, 20, 0, [], []);
poolCavePot.addItemEntry(quicksilverDrop, 30, 0, [Functions.setCount(1, 3)], []);
poolCommonPot.addItemEntry(curiosityPreserved, 15, 0, [], []);
poolCommonPot.addItemEntry(curiosityArcane, 15, 0, [], []);
poolCommonPot.addItemEntry(amber, 15, 0, [], []);
poolCommonPot.addItemEntry(quicksilverDrop, 20, 0, [Functions.setCount(1, 3)], []);
poolCragrockTowerPot.addItemEntry(curiosityEldritch, 20, 0, [], []);
poolCragrockTowerPot.addItemEntry(curiosityArcane, 20, 0, [], []);
poolCragrockTowerPot.addItemEntry(curiosityAncient, 10, 0, [], []);
poolCragrockTowerPot.addItemEntry(curiosityIlluminating, 10, 0, [], []);
poolCragrockTowerPot.addItemEntry(amber, 20, 0, [], []);
poolCragrockTowerPot.addItemEntry(quicksilverDrop, 20, 0, [Functions.setCount(1, 3)], []);
poolDungeonPot.addItemEntry(curiosityPreserved, 20, 0, [], []);
poolDungeonPot.addItemEntry(curiosityArcane, 20, 0, [], []);
poolDungeonPot.addItemEntry(curiosityAncient, 10, 0, [], []);
poolDungeonPot.addItemEntry(curiosityIlluminating, 10, 0, [], []);
poolDungeonPot.addItemEntry(curiosityTwisted, 10, 0, [], []);
poolDungeonPot.addItemEntry(amber, 20, 0, [], []);
poolDungeonPot.addItemEntry(quicksilverDrop, 30, 0, [Functions.setCount(1, 3)], []);
poolMarshRuinsPot.addItemEntry(curiosityPreserved, 20, 0, [], []);
poolMarshRuinsPot.addItemEntry(curiosityAncient, 10, 0, [], []);
poolMarshRuinsPot.addItemEntry(amber, 20, 0, [Functions.setCount(1, 3)], []);
poolSludgePlainsRuinsUrn.addItemEntry(curiosityPreserved, 20, 0, [], []);
poolSludgePlainsRuinsUrn.addItemEntry(curiosityTwisted, 20, 0, [], []);
poolSludgePlainsRuinsUrn.addItemEntry(curiosityEldritch, 10, 0, [], []);
poolSludgePlainsRuinsUrn.addItemEntry(quicksilverDrop, 30, 0, [Functions.setCount(1, 3)], []);
poolSludgeWormDungeonCryptUrn.addItemEntry(curiosityEldritch, 20, 0, [], []);
poolSludgeWormDungeonCryptUrn.addItemEntry(curiosityArcane, 20, 0, [], []);
poolSludgeWormDungeonCryptUrn.addItemEntry(curiosityAncient, 10, 0, [], []);
poolSludgeWormDungeonCryptUrn.addItemEntry(curiosityTwisted, 10, 0, [], []);
poolSludgeWormDungeonCryptUrn.addItemEntry(amber, 20, 0, [], []);
poolSludgeWormDungeonCryptUrn.addItemEntry(quicksilverDrop, 30, 0, [Functions.setCount(1, 3)], []);
poolSludgeWormDungeonUrn.addItemEntry(curiosityTwisted, 20, 0, [], []);
poolSludgeWormDungeonUrn.addItemEntry(curiosityArcane, 20, 0, [], []);
poolSludgeWormDungeonUrn.addItemEntry(curiosityEldritch, 10, 0, [], []);
poolSludgeWormDungeonUrn.addItemEntry(curiosityIlluminating, 10, 0, [], []);
poolSludgeWormDungeonUrn.addItemEntry(amber, 20, 0, [Functions.setCount(1, 3)], []);
poolSludgeWormDungeonUrn.addItemEntry(quicksilverDrop, 30, 0, [Functions.setCount(1, 3)], []);
poolTarPoolPot.addItemEntry(curiosityPreserved, 35, 0, [], []);
poolTarPoolPot.addItemEntry(curiosityEldritch, 35, 0, [], []);
poolTarPoolPot.addItemEntry(curiosityTwisted, 20, 0, [], []);
poolUndergroundRuinsPot.addItemEntry(curiosityPreserved, 20, 0, [], []);
poolUndergroundRuinsPot.addItemEntry(curiosityArcane, 30, 0, [], []);
poolUndergroundRuinsPot.addItemEntry(curiosityAncient, 20, 0, [], []);
poolUndergroundRuinsPot.addItemEntry(curiosityIlluminating, 10, 0, [], []);
poolUndergroundRuinsPot.addItemEntry(amber, 20, 0, [], []);
poolUndergroundRuinsPot.addItemEntry(quicksilverDrop, 30, 0, [Functions.setCount(1, 3)], []);
poolWightFortressPot.addItemEntry(curiosityEldritch, 40, 0, [], []);
poolWightFortressPot.addItemEntry(curiosityArcane, 20, 0, [], []);
poolWightFortressPot.addItemEntry(curiosityAncient, 10, 0, [], []);
poolWightFortressPot.addItemEntry(curiosityIlluminating, 10, 0, [], []);
poolWightFortressPot.addItemEntry(curiosityTwisted, 10, 0, [], []);
poolWightFortressPot.addItemEntry(amber, 30, 0, [Functions.setCount(1, 3)], []);
poolWightFortressPot.addItemEntry(quicksilverDrop, 30, 0, [Functions.setCount(1, 3)], []);