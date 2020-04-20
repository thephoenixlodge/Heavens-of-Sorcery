////imports
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;


function addCuttingMeat(table as string, poolsAndDrops as int[][IItemStack][string]) {
	val rollsPerLevel = [
		[0, 1],
		[1, 1],
		[1, 2],
		[1, 3],
		[2, 4]
	] as int[][];
	var lootTable = LootTables.getTable(table);
	var lootPools = {} as int[LootPool];
	for pool, drops in poolsAndDrops {
		print(pool);
		lootPools[lootTable.getPool(pool)] = 1;
		lootPools[lootTable.addPool(pool ~ "_cutting_2", 0, 0, 0, 0)] = 2;
		lootPools[lootTable.addPool(pool ~ "_cutting_3", 0, 0, 0, 0)] = 3;
		lootPools[lootTable.addPool(pool ~ "_cutting_4", 0, 0, 0, 0)] = 4;
		lootPools[lootTable.addPool(pool ~ "_cutting_5", 0, 0, 0, 0)] = 5;
	}
	for pool, cuttingLevel in lootPools {
		var cuttingConditions = {
			1 : {"value": 1, "condition": "mist:skill_cutting"},
			2 : {"value": 2, "condition": "mist:skill_cutting"},
			3 : {"value": 3, "condition": "mist:skill_cutting"},
			4 : {"value": 4, "condition": "mist:skill_cutting"},
			5 : {"value": 5, "condition": "mist:skill_cutting"}
		} as IData[int];
		pool.addConditionsJson([cuttingConditions[cuttingLevel]]);
		pool.setRolls(rollsPerLevel[cuttingLevel][0], rollsPerLevel[cuttingLevel][1]);
		for drops in poolsAndDrops.values {
			for drop, count in drops {
				var minCount = count[0];
				var maxCount = count[1];
				var meta = drop.metadata;
				pool.addItemEntryHelper(drop, 1, 0, [Functions.setMetadata(meta, meta), Functions.setCount(minCount, maxCount), Functions.lootingEnchantBonus(0, 1, 2), Functions.smelt()], []);
			}
		}
	}
}




//table, {pool : {drop : [minCount, maxCount]}}
addCuttingMeat("minecraft:entities/pig", {"main" : {<minecraft:porkchop> : [1, 3]}});