////imports
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.data.IData;


function addCuttingMeat(name as string, table as string, poolsAndDrops as int[][IItemStack][string]) {
	val rollsPerLevel = {
		"one" : [0, 1],
		"two" : [1, 1],
		"three" : [1, 2],
		"four" : [1, 3],
		"five" : [2, 4]
	} as int[][string];
	var lootTable = LootTweaker.getTable(table);
	var lootPools = {} as LootPool[string];
	for pool, drops in poolsAndDrops {
		var meatTableName = "hos:cutting/" ~ name ~ "_" ~ pool ~ "_meat";
		var lootTableMeat = LootTweaker.newTable(meatTableName);
		var lootPoolMeat = lootTableMeat.addPool("meat", 1, 1, 0, 0);
		print(pool);
		lootPools["one"] = lootTable.addPool(pool ~ "_cutting_1", 0, 0, 0, 0);
		lootPools["two"] = lootTable.addPool(pool ~ "_cutting_2", 0, 0, 0, 0);
		lootPools["three"] = lootTable.addPool(pool ~ "_cutting_3", 0, 0, 0, 0);
		lootPools["four"] = lootTable.addPool(pool ~ "_cutting_4", 0, 0, 0, 0);
		lootPools["five"] = lootTable.addPool(pool ~ "_cutting_5", 0, 0, 0, 0);
		var lootPoolDefault = lootTable.getPool(pool);
		for drop, count in drops {
			var minCount = count[0];
			var maxCount = count[1];
			var meta = drop.metadata;
			lootPoolMeat.addItemEntry(drop, 1, 0, [Functions.setMetadata(meta, meta), Functions.setCount(minCount, maxCount), Functions.lootingEnchantBonus(0, 1, 10), {"function": "minecraft:furnace_smelt","conditions": [{"properties": {"minecraft:on_fire": true}, "entity": "this", "condition": "minecraft:entity_properties"}]}], []);
			lootPoolDefault.removeEntry(drop.definition.id);
		}
		for cuttingLevel, pool in lootPools {
			var cuttingConditions = {
				"one" : {"value": 1, "condition": "mist:skill_cutting"},
				"two" : {"value": 2, "condition": "mist:skill_cutting"},
				"three" : {"value": 3, "condition": "mist:skill_cutting"},
				"four" : {"value": 4, "condition": "mist:skill_cutting"},
				"five" : {"value": 5, "condition": "mist:skill_cutting"}
			} as IData[string];
			pool.addConditions([cuttingConditions[cuttingLevel]]);
			pool.setRolls(rollsPerLevel[cuttingLevel][0], rollsPerLevel[cuttingLevel][1]);
			pool.addLootTableEntry(meatTableName, 1, 0, "meat");
		}
	}
}

//table, {pool : {drop : [minCount, maxCount]}}
addCuttingMeat("pig", "minecraft:entities/pig", {"main" : {<minecraft:porkchop> : [1, 3]}});
addCuttingMeat("cow", "minecraft:entities/cow", {"pool1" : {<minecraft:beef> : [1, 2]}, "main" : {<minecraft:leather> : [1, 2]}});
addCuttingMeat("chicken", "minecraft:entities/chicken", {"pool1" : {<minecraft:chicken> : [1, 2]}});
addCuttingMeat("sheep", "minecraft:entities/sheep", {"main" : {<minecraft:mutton> : [1, 2]}});
addCuttingMeat("rabbit", "minecraft:entities/rabbit", {"pool1" : {<minecraft:rabbit> : [0, 1]}});
addCuttingMeat("aechor", "aether_legacy:entities/aechor_plant", {"petal" : {<aether_legacy:aechor_petal> : [1, 2]}});
addCuttingMeat("sheepuff", "aether_legacy:entities/sheepuff", {"meat" : {<minecraft:mutton> : [1, 2]}});
addCuttingMeat("aerbunny", "aether_legacy:entities/aerbunny", {"string" : {<minecraft:string> : [0, 2]}});
addCuttingMeat("flying_cow", "aether_legacy:entities/flying_cow", {"meat" : {<minecraft:beef> : [1, 3]}, "leather" : {<minecraft:leather> : [0, 2]}});
addCuttingMeat("moa", "aether_legacy:entities/moa", {"feather" : {<minecraft:feather> : [2, 3]}});
addCuttingMeat("cockatrice", "aether_legacy:entities/cockatrice", {"feather" : {<minecraft:feather> : [2, 3]}});
addCuttingMeat("phyg", "aether_legacy:entities/phyg", {"meat" : {<minecraft:porkchop> : [1, 3]}});
addCuttingMeat("fox", "mysticalworld:entity/fox", {"main" : {<mysticalworld:pelt> : [1, 1]}});
addCuttingMeat("deer", "mysticalworld:entity/deer", {"main" : {<minecraft:leather> : [0, 1]}, "pool1" : {<mysticalworld:venison> : [0, 2]}});
addCuttingMeat("azulfo", "blue_skies:entities/azulfo", {"meat" : {<blue_skies:raw_azulfo_beef> : [2, 4]}});
addCuttingMeat("cosmic_fox", "blue_skies:entities/cosmic_fox", {"fur" : {<blue_skies:fox_fur> : [0, 1]}});
addCuttingMeat("reindeer", "blue_skies:entities/reindeer", {"meat" : {<blue_skies:raw_venison> : [1, 2]}});
addCuttingMeat("stardust_ram", "blue_skies:entities/stardust_ram", {"meat" : {<minecraft:mutton> : [1, 2]}});
addCuttingMeat("raven", "bewitchment:entities/raven", {"raven" : {<bewitchment:ravens_feather> : [0, 4]}});
addCuttingMeat("toad", "bewitchment:entities/toad", {"toad" : {<bewitchment:toe_of_frog> : [0, 4]}});
addCuttingMeat("lizard", "bewitchment:entities/lizard", {"lizard" : {<bewitchment:lizard_leg> : [0, 4]}});
addCuttingMeat("owl", "bewitchment:entities/owl", {"owl" : {<bewitchment:owlets_wing> : [0, 2]}});