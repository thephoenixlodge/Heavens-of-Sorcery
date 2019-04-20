//Imports
import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;


//Loot Tables and Pools
val tableDungeonRaid = LootTables.getTable("arcaneworld:raid_1");
val poolRaid = tableDungeonRaid.getPool("raid_1");

//Items
val angelHeart = <contenttweaker:angel_heart>;
val portalCore = <contenttweaker:otherworlds_core>;
val elytra = <minecraft:elytra>;


//Add angel hearts to the pool
poolRaid.addItemEntry(angelHeart, 4);

//Portal core for Misty World and aether portals
poolRaid.addItemEntry(portalCore, 10);

//add Elytra to the pool
poolRaid.addItemEntry(elytra, 4);