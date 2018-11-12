//Imports
import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;


//Loot Tables and Pools
val tableDungeonRaid = LootTables.getTable("arcaneworld:raid_1");
val poolRaid = tableDungeonRaid.getPool("raid_1");

//Items
val angelHeart = <contenttweaker:angel_heart>;
val flyingPhial = <flying_things:phial_of_animation>;
val portalCore = <contenttweaker:otherworlds_core>;


//Add angel hearts to the pool
poolRaid.addItemEntry(angelHeart, 8);

//Flying Things animation phial
poolRaid.addItemEntry(flyingPhial, 6);

//Portal core for Misty World and aether portals
poolRaid.addItemEntry(portalCore, 8);