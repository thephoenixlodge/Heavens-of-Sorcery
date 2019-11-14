//Imports
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;


//Loot Tables and Pools
val tableDungeonRaid = LootTables.getTable("arcaneworld:raid_1");
val poolRaid = tableDungeonRaid.getPool("raid_1");

//EBWiz mob loot inject
val tableEBWizInjectMob = LootTables.getTableUnchecked("ebwizardry:entities/mob_additions");
val poolEBWizInjectMob = tableEBWizInjectMob.getPool("wizardry");

//dimdoors
val tableDimDoors = LootTables.getTable("dimdoors:dungeon_chest");
val poolDimDoorsNew = tableDimDoors.addPool("bm_book", 1, 1, 0, 0);

//simple_dungeon
val tableSimpleDungeon = LootTables.getTable("minecraft:chests/simple_dungeon");
val poolsToRemove = [
	"custom_avatar_loot_pools",
	"custom_avatar_loot_pools_2",
	"custom_avatar_loot_pools_3",
	"MysticalWorld",
	"magicalsculpture_simple_dungeon",
	"bewitchment_materials_pool",
	"botania_inject_pool"
] as string[];
val poolExtra = tableSimpleDungeon.addPool("hos_early_loot", 1, 3, 1, 1);
val poolRare = tableSimpleDungeon.addPool("hos_early_rare_loot", 0, 2, 0, 0);

//foxhound drops
val tableFoxhound = LootTables.getTable("quark:entities/foxhound");
val poolDevilDust = tableFoxhound.addPool("devil_dust", 1, 1, 0, 0);

val tableFrogMW = LootTables.getTable("mysticalworld:entity/frog");
val poolFrogLeg = tableFrogMW.addPool("leg", 1, 1, 0, 1);

//nether fortress
val tableNetherFortress = LootTables.getTable("minecraft:chests/nether_bridge");
val netherPoolsToRemove = [
	"custom_avatar_loot_pools",
	"custom_avatar_loot_pools_2",
	"custom_avatar_loot_pools_3",
	"custom_avatar_loot_pools_4",
	"magicalsculpture_nether_bridge",
	"bewitchment_materials_pool",
	"bewitchment_books_pool"
] as string[];
val poolNetherExtra = tableNetherFortress.addPool("hos_nether_loot", 1, 3, 1, 1);
val poolNetherRare = tableNetherFortress.addPool("hos_nether_rare_loot", 0, 2, 0, 0);

val tableAetherBronzeChest = LootTables.getTable("aether_legacy:chests/bronze_dungeon_chest");
val tableAetherBronzeReward = LootTables.getTable("aether_legacy:chests/bronze_dungeon_reward");
val tableAetherSilverChest = LootTables.getTable("aether_legacy:chests/silver_dungeon_chest");
val tableAetherSilverReward = LootTables.getTable("aether_legacy:chests/silver_dungeon_reward");
val tableAetherGoldChest = LootTables.getTable("aether_legacy:chests/gold_dungeon_chest");
val tableAetherGoldReward = LootTables.getTable("aether_legacy:chests/gold_dungeon_reward");
val poolAetherBronzeChest = tableAetherBronzeChest.addPool("hos_extra", 1, 3, 1, 1);
val poolAetherBronzeReward = tableAetherBronzeReward.addPool("hos_extra", 1, 3, 1, 1);
val poolAetherSilverChest = tableAetherSilverChest.addPool("hos_extra", 1, 3, 1, 1);
val poolAetherSilverReward = tableAetherSilverReward.addPool("hos_extra", 1, 2, 0, 0);
val poolAetherGoldChest = tableAetherGoldChest.addPool("hos_extra", 1, 2, 0, 0);
val poolAetherGoldReward = tableAetherGoldReward.addPool("hos_extra", 1, 2, 0, 0);

val tableBSLibrary = LootTables.getTable("blue_skies:chests/blinding_dungeon/library_chest");
val tableBSStudy = LootTables.getTable("blue_skies:chests/blinding_dungeon/study_chest");
val tableBSPrisonBright = LootTables.getTable("blue_skies:chests/blinding_dungeon/prison_chest_everbright");
val tableBSPrisonDawn = LootTables.getTable("blue_skies:chests/blinding_dungeon/prison_chest_everdawn");
val tableBSAlchemist = LootTables.getTable("blue_skies:chests/blinding_dungeon/bosses/alchemist_loot");
val tableBSSummoner = LootTables.getTable("blue_skies:chests/blinding_dungeon/bosses/summoner_loot");
val tableBSVillageBright = LootTables.getTable("blue_skies:chests/village/everbright_blacksmith");
val tableBSVillageDawn = LootTables.getTable("blue_skies:chests/village/everdawn_blacksmith");

val poolBSLibrary = tableBSLibrary.addPool("hos_extra", 1, 2, 1, 1);
val poolBSLibaryWizInject = tableBSLibrary.addPool("wiz_inject", 0, 4, 1, 2);
val poolBSStudy = tableBSStudy.addPool("hos_extra", 1, 3, 1, 1);
val poolBSPrisonBright = tableBSPrisonBright.addPool("hos_extra", 1, 3, 1, 1);
val poolBSPrisonDawn = tableBSPrisonBright.addPool("hos_extra", 1, 3, 1, 1);
val poolBSAlchemist = tableBSAlchemist.addPool("hos_extra", 1, 3, 0, 0);
val poolBSSummoner = tableBSSummoner.addPool("hos_extra", 1, 3, 0, 0);
val poolBSVillageBright = tableBSVillageBright.addPool("hos_extra", 1, 3, 1, 1);
val poolBSVillageDawn = tableBSVillageDawn.addPool("hos_extra", 1, 3, 1, 1);

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
	<inspirations:flower>: 10
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
	<arcaneworld:amethyst> : 1,
	<cuisine:crops:8> : 5,
	<cuisine:crops:1> : 5,
	<minecraft:nether_wart> : 5,
	<rustic:blood_orchid> : 3,
	<minecraft:splash_potion>.withTag({Potion: "minecraft:fire_resistance"}) : 5,
	<rustic:oliveseed> : 5,
	<rustic:core_root> : 5,
	<rustic:ginseng> : 5,
	<rustic:wind_thistle> : 5,
	<rustic:horsetail> : 5,
	<rustic:cloudsbluff> : 5,
	<rustic:marsh_mallow> : 5
} as int[IItemStack];
val biomeStones = <botania:biomestonea>;
val coal = <minecraft:coal>;
val cobblestone = <minecraft:cobblestone>;
val iChisel = <chisel:chisel_hitech>;
val advSimilsax = <similsaxtranstructors:similsaxtranstructoradvanced>;
val shieldWood = <superiorshields:vanilla_shield_wood>;
val shieldStone = <superiorshields:vanilla_shield_stone>;
val obsidian = <minecraft:obsidian>;
val extrasAetherMap = {
	<cuisine:crops:21> : 5,
	<cuisine:crops:10> : 5,
	<minecraft:fireworks>.withTag({Fireworks: {Flight: 3 as byte}}) * 3 : 20,
	<cuisine:crops:12> : 5,
	<quark:biotite> : 7,
	<quark:arrow_torch> : 10,
	<astralsorcery:itemusabledust> : 10,
	<botania:manaresource:1> : 2,
	<cuisine:crops:9> : 5,
	<cuisine:crops:3>: 5,
	<botania:tinypotato> : 5,
	<quark:iron_rod> : 2,
	<minecraft:dye:4> : 20
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
	<minecraft:dye:4> : 18
} as int[IItemStack];
val sparkUpgrade = <botania:sparkupgrade>;
val caveIlluminator = <astralsorcery:blockworldilluminator>;
val book = <minecraft:book>;
val bendingScroll = <avatarmod:scroll>;

//Add angel hearts to the pool
poolRaid.addItemEntry(angelHeart, 6);

//Portal core for Misty World and aether portals
poolRaid.addItemEntry(portalCore, 14);

//add Elytra to the pool
poolRaid.addItemEntry(elytra, 6);

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
poolExtra.addItemEntryHelper(grassSeeds, 6, 1, [Functions.setMetadata(0, 8)], []);
poolExtra.addItemEntryHelper(chestUpgrade, 2, 2, [Functions.setMetadata(0, 14)], []);
poolExtra.addItemEntryHelper(illuminationPowder, 6, 1, [Functions.setCount(1, 10)], []);
poolExtra.addItemEntryHelper(doubleFlowers, 5, 1, [Functions.setMetadata(0, 1)], []);
poolExtra.addItemEntryHelper(doubleFlowers, 5, 1, [Functions.setMetadata(4, 5)], []);
for box in shulkerBoxes {
	poolExtra.addItemEntry(box, 2);
}

poolRare.addItemEntryHelper(beacon, 1, 3, [Functions.setCount(0, 1)], []);
poolRare.addItemEntryHelper(pickarang, 3, 2, [Functions.setCount(0, 1)], []);
poolRare.addItemEntryHelper(wandUnbreakable, 1, 4, [Functions.setCount(0, 1)], []);
poolRare.addItemEntryHelper(moltenCore, 4, 1, [Functions.setCount(0, 1)], []);
poolRare.addItemEntryHelper(elytra, 3, 1, [Functions.setCount(0, 1)], []);

//Dim doors
poolDimDoorsNew.addItemEntry(diaryDoomed, 1);
poolDimDoorsNew.addItemEntry(sentientSword, 1);

//foxhound
tableFoxhound.removePool("leather");
poolDevilDust.addItemEntryHelper(devilDust, 1, 0, [Functions.setCount(0, 3), Functions.lootingEnchantBonus(0, 1, 5)], []);

//frog
poolFrogLeg.addItemEntryHelper(frogLeg, 1, 0, [], []);

//nether fortress
for poolNether in netherPoolsToRemove {
	tableNetherFortress.removePool(poolNether);
}
for netherItem, weight in extrasNetherMap {
	poolNetherExtra.addItemEntry(netherItem, weight);	
}
poolNetherExtra.addItemEntryHelper(biomeStones, 10, 1, [Functions.setMetadata(8, 15), Functions.setCount(5, 100)], []);
poolNetherExtra.addItemEntryHelper(cobblestone, 20, 1, [Functions.setCount(5, 100)], []);
poolNetherExtra.addItemEntryHelper(coal, 4, 1, [Functions.setCount(1, 3)], []);

poolNetherRare.addItemEntryHelper(iChisel, 2, 3, [Functions.setCount(0, 1)], []);
poolNetherRare.addItemEntryHelper(advSimilsax, 2, 2, [Functions.setCount(0, 1)], []);
poolNetherRare.addItemEntryHelper(shieldWood, 3, 4, [Functions.setCount(0, 1)], []);
poolNetherRare.addItemEntryHelper(shieldStone, 2, 1, [Functions.setCount(0, 1)], []);
poolNetherRare.addItemEntryHelper(obsidian, 7, 1, [Functions.setCount(0, 5)], []);
poolNetherRare.addItemEntryHelper(chestUpgrade, 4, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 14)], []);

//Aether dungeons
for aetherItem, weight in extrasAetherMap {
	poolAetherBronzeChest.addItemEntry(aetherItem, weight);
	poolAetherSilverChest.addItemEntry(aetherItem, weight);
	poolAetherGoldChest.addItemEntry(aetherItem, weight);
}
poolAetherBronzeChest.addItemEntryHelper(chestUpgrade, 3, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 14)], []);
poolAetherSilverChest.addItemEntryHelper(chestUpgrade, 3, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 14)], []);
poolAetherGoldChest.addItemEntryHelper(chestUpgrade, 3, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 14)], []);
poolAetherBronzeReward.addItemEntryHelper(iChisel, 2, 3, [Functions.setCount(0, 1)], []);
poolAetherBronzeReward.addItemEntryHelper(skyRod, 2, 3, [Functions.setCount(0, 1)], []);
poolAetherBronzeReward.addItemEntryHelper(chorusFlower, 2, 3, [Functions.setCount(0, 1)], []);
poolAetherSilverReward.addItemEntryHelper(elytra, 3, 1, [Functions.setCount(0, 1)], []);
poolAetherSilverReward.addItemEntryHelper(wandUnbreakable, 1, 4, [Functions.setCount(0, 1)], []);
poolAetherSilverReward.addItemEntryHelper(totemUndying, 1, 1, [Functions.setCount(0, 1)], []);
poolAetherSilverReward.addItemEntryHelper(overgrowthSeed, 2, 1, [Functions.setCount(0, 1)], []);
poolAetherGoldReward.addItemEntryHelper(overgrowthSeed, 3, 1, [Functions.setCount(0, 1)], []);
poolAetherGoldReward.addItemEntryHelper(laputaShard, 2, 1, [Functions.setCount(0, 1), Functions.setMetadata(0, 19)], []);
poolAetherGoldReward.addItemEntryHelper(totemUndying, 3, 1, [Functions.setCount(0, 1)], []);

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
poolBSStudy.addItemEntryHelper(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSPrisonBright.addItemEntryHelper(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSPrisonDawn.addItemEntryHelper(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSLibrary.addItemEntryHelper(book, 10, 1, [Functions.enchantWithLevels(25, 35, false)], []);
poolBSLibrary.addItemEntryHelper(book, 2, 1, [Functions.enchantWithLevels(25, 35, true)], []);
poolBSLibrary.addItemEntryHelper(bendingScroll, 8, 1, [Functions.setMetadata(1, 4)], []);
for wings, weight in wingsMap {
	poolBSAlchemist.addItemEntry(wings, weight);
	poolBSSummoner.addItemEntry(wings, weight);
}
poolBSAlchemist.addItemEntryHelper(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSSummoner.addItemEntryHelper(sparkUpgrade, 4, 1, [Functions.setMetadata(0, 3)], []);
poolBSAlchemist.addItemEntryHelper(totemUndying, 2, 1, [Functions.setCount(0, 1)], []);
poolBSSummoner.addItemEntryHelper(totemUndying, 2, 1, [Functions.setCount(0, 1)], []);
poolBSAlchemist.addItemEntryHelper(overgrowthSeed, 2, 1, [Functions.setCount(1, 2)], []);
poolBSSummoner.addItemEntryHelper(overgrowthSeed, 2, 1, [Functions.setCount(1, 2)], []);
poolBSLibaryWizInject.addLootTableEntry("ebwizardry:chests/shrine", 10);
poolBSAlchemist.addLootTableEntry("ebwizardry:chests/shrine", 10);
poolBSSummoner.addLootTableEntry("ebwizardry:chests/shrine", 10);
poolBSAlchemist.addItemEntryHelper(bendingScroll, 2, 1, [Functions.setMetadata(5, 6), Functions.setCount(0, 1)], []);
poolBSSummoner.addItemEntryHelper(bendingScroll, 2, 1, [Functions.setMetadata(7, 8), Functions.setCount(0, 1)], []);