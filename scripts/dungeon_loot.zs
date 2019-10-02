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
	<botania:tinypotato> : 3
} as int[IItemStack];
val grassSeeds = <botania:grassseeds>;
val chestUpgrade = <metalchests:chest_upgrade>;
val illuminationPowder = <astralsorcery:itemusabledust>;
val angelHeart = <contenttweaker:angel_heart>;
val portalCore = <contenttweaker:otherworlds_core>;
val elytra = <minecraft:elytra>;
val doubleFlowers = <minecraft:double_plant>;
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
poolExtra.addItemEntryHelper(chestUpgrade, 2, 2, [Functions.setMetadata(0, 4)], []);
poolExtra.addItemEntryHelper(illuminationPowder, 6, 1, [Functions.setCount(0, 10)], []);
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