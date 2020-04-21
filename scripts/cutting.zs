////imports
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;


function addCuttingMeat(name as string, table as string, poolsAndDrops as int[][IItemStack][string]) {
	val rollsPerLevel = [
		[0, 1],
		[1, 1],
		[1, 2],
		[1, 3],
		[2, 4]
	] as int[][];
	var meatTableName = "hos:cutting/" ~ name ~ "_meat";
	var lootTableMeat = LootTables.newTable(meatTableName);
	var lootPoolMeat = lootTableMeat.addPool("meat", 1, 1, 0, 0);
	var lootTable = LootTables.getTable(table);
	var lootPools = {} as LootPool[int];
	for drops in poolsAndDrops.values {
		for drop, count in drops {
			var minCount = count[0];
			var maxCount = count[1];
			var meta = drop.metadata;
			lootPoolMeat.addItemEntryHelper(drop, 1, 0, [Functions.setMetadata(meta, meta), Functions.setCount(minCount, maxCount), Functions.lootingEnchantBonus(0, 1, 2), Functions.parse({"function": "minecraft:furnace_smelt","conditions": [{"properties": {"minecraft:on_fire": true}, "entity": "this", "condition": "minecraft:entity_properties"}]})], []);
		}
	}
	for pool, drops in poolsAndDrops {
		print(pool);
		lootPools[1] = lootTable.getPool(pool);
		lootPools[2] = lootTable.addPool(pool ~ "_cutting_2", 0, 0, 0, 0);
		lootPools[3] = lootTable.addPool(pool ~ "_cutting_3", 0, 0, 0, 0);
		lootPools[4] = lootTable.addPool(pool ~ "_cutting_4", 0, 0, 0, 0);
		lootPools[5] = lootTable.addPool(pool ~ "_cutting_5", 0, 0, 0, 0);
	}
	lootPools[1].clearEntries();
	for cuttingLevel, pool in lootPools {
		var cuttingConditions = {
			1 : {"value": 1, "condition": "mist:skill_cutting"},
			2 : {"value": 2, "condition": "mist:skill_cutting"},
			3 : {"value": 3, "condition": "mist:skill_cutting"},
			4 : {"value": 4, "condition": "mist:skill_cutting"},
			5 : {"value": 5, "condition": "mist:skill_cutting"}
		} as IData[int];
		pool.addConditionsJson([cuttingConditions[cuttingLevel]]);
		pool.setRolls(rollsPerLevel[cuttingLevel][0], rollsPerLevel[cuttingLevel][1]);
		pool.addLootTableEntry(meatTableName, 1, 0, "meat");
	}
}

//TODO - exclude original pool from adding the new entry, change the smelt function to be conditional on mob being on fire


//table, {pool : {drop : [minCount, maxCount]}}
addCuttingMeat("pig", "minecraft:entities/pig", {"main" : {<minecraft:porkchop> : [1, 3]}});