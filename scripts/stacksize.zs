////Imports
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//Arrays 
//Add a block/item to an array to set its stack size to the stated number
//make sure every item except the last one in each array has a comma
//If wanting to do bigger than 8192, need to increase the limit in stackup.cfg too

var materials1024 = [
	//Ingots
	<minecraft:iron_ingot>,
	<minecraft:gold_ingot>,
	<astralsorcery:itemcraftingcomponent:1>, //starmetal
	<bewitchment:cold_iron_ingot>,
	<blue_skies:falsite_ingot>,
	<blue_skies:ventium_ingot>,
	<blue_skies:horizonite_ingot>,
	<botania:manaresource>, //manasteel, terrasteel, elementium, gaiaspirit and a whole bunch of other items
	<embers:ingot_copper>,
	<embers:ingot_lead>,
	<embers:ingot_silver>,
	<embers:ingot_dawnstone>,
	<embers:ingot_aluminum>,
	<embers:ingot_bronze>,
	<embers:ingot_electrum>,
	<embers:ingot_nickel>,
	<embers:ingot_tin>,
	<kathairis:titaniumingot>,
	<mist:niobium_ingot>,
	<naturalpledge:resource>, //thundersteel
	<naturesaura:sky_ingot>,
	<naturesaura:infused_iron>,
	<soot:ingot_antimony>,
	<thaumcraft:ingot>, //thaumium, alch brass, void metal
	<thaumic_arcana:ingot_livium>,
	<thebetweenlands:items_misc>, 
	<thebetweenlands:octine_ingot>,
	//Nuggets
	<minecraft:gold_nugget>,
	<minecraft:iron_nugget>,
	<bewitchment:cold_iron_nugget>,
	<embers:nugget_copper>,
	<embers:nugget_lead>,
	<embers:nugget_silver>,
	<embers:nugget_dawnstone>,
	<embers:nugget_aluminum>,
	<embers:nugget_bronze>,
	<embers:nugget_electrum>,
	<embers:nugget_nickel>,
	<embers:nugget_tin>,
	<extrabitmanipulation:diamond_nugget>,
	<mist:niobium_nugget>,
	<thaumcraft:nugget>,
	<minecraft:diamond>,
	<minecraft:coal>,
	<minecraft:redstone>,
	<minecraft:quartz>,
	<thaumcraft:nugget>,
	<rustic:dust_tiny_iron>,
	<minecraft:glowstone_dust>,
	<arcaneworld:amethyst>
] as IItemStack[];

var oresAndBlocks512 = [
	<minecraft:gold_ore>,
	<minecraft:iron_ore>,
	<minecraft:coal_ore>,
	<minecraft:diamond_ore>,
	<minecraft:emerald_ore>,
	<minecraft:quartz_ore>,
	<minecraft:redstone_ore>,
	<minecraft:lapis_ore>,
	<minecraft:lapis_block>,
	<minecraft:gold_block>,
	<minecraft:iron_block>
] as IItemStack[];

var dict4096 = [
	<ore:logWood>,
	<ore:plankWood>,
	<ore:slabWood>
] as IOreDictEntry[];

var stack256 = [
	<minecraft:bookshelf>,
	<minecraft:wheat_seeds>,
	<cuisine:crops>,
	<rustic:tomato_seeds>,
	<rustic:chili_pepper_seeds>,
	<rustic:ironwoodseed>,
	<botania:grassseeds>,
	<minecraft:wheat>
] as IItemStack[];

var stack512 = [
	<minecraft:pumpkin>,
	<minecraft:lit_pumpkin>,
	<minecraft:melon_block>
] as IItemStack[];

var stack1024 = [
	<minecraft:log>,
	<minecraft:log2>,
	<minecraft:wool>,
	<minecraft:ice>,
	<minecraft:torch>,
	<contenttweaker:boneshard>,
	<rustic:log>,
	<rustic:chili_pepper>,
	<rustic:wildberries>,
	<minecraft:clay_ball>,
	<wizardry:wisdom_wood_log>,
	<rustic:ironberries>
] as IItemStack[];

var stack2048 = [
	<minecraft:glass>,
	<minecraft:stained_glass>,
	<minecraft:brick_block>,
	<minecraft:clay>,
	<minecraft:snow>,
	<minecraft:glowstone>,
	<minecraft:dye:15>
] as IItemStack[];

var stack4096 = [
	<minecraft:planks>,
	<minecraft:sandstone>,
	<minecraft:stone_slab>,
	<minecraft:oak_stairs>,
	<minecraft:stone_stairs>,
	<minecraft:stonebrick>,
	<minecraft:brick_stairs>,
	<minecraft:stone_brick_stairs>,
	<minecraft:nether_brick>,
	<minecraft:nether_brick_stairs>,
	<minecraft:wooden_slab>,
	<rustic:planks>,
	<minecraft:stick>,
	<rustic:ironwood_slab_item>,
	<wizardry:wisdom_wood_planks>,
	<wizardry:wisdom_wood_slab>
] as IItemStack[];

var stack8192 = [
	<minecraft:stone>,
	<minecraft:dirt>,
	<minecraft:cobblestone>,
	<minecraft:sand>,
	<minecraft:gravel>,
	<minecraft:mossy_cobblestone>,
	<minecraft:netherrack>,
	<minecraft:soul_sand>,
	<minecraft:end_stone>,
	<minecraft:grass>,
	<minecraft:mycelium>,
	<quark:basalt>,
	<botania:biomestonea>
] as IItemStack[];

for oreBlock in oresAndBlocks512 {
	stack512 += oreBlock;
}

for material in materials1024 {
	stack1024 += material;
}

for woodDict in dict4096 {
	for dictEntry in woodDict.items {
		stack4096 += dictEntry;
	}
}

var stackTweakMap = {} as IItemStack[][int];
stackTweakMap[256] = stack256;
stackTweakMap[512] = stack512;
stackTweakMap[1024] = stack1024;
stackTweakMap[2048] = stack2048;
stackTweakMap[4096] = stack4096;
stackTweakMap[8192] = stack8192;


for stackSize, items in stackTweakMap {
	for i in items {
		i.maxStackSize = stackSize;
	}
}
