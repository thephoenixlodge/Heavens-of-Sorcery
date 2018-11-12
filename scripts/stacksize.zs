////Imports
import crafttweaker.item.IItemStack;

//Arrays 
//Add a block/item to an array to set its stack size to the stated number
//make sure every item except the last one in each array has a comma
//If wanting to do bigger than 8192, need to increase the limit in stackup.cfg too

val stack256 = [
	<minecraft:bookshelf>,
	<minecraft:wheat_seeds>,
	<cuisine:crops>,
	<rustic:tomato_seeds>,
	<rustic:chili_pepper_seeds>,
	<rustic:ironwoodseed>,
	<botania:grassseeds>
] as IItemStack[];

val stack512 = [
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
	<minecraft:iron_block>,
	<minecraft:pumpkin>,
	<minecraft:lit_pumpkin>,
	<minecraft:melon_block>
] as IItemStack[];

val stack1024 = [
	<minecraft:log>,
	<minecraft:log2>,
	<minecraft:wool>,
	<minecraft:ice>,
	<minecraft:torch>,
	<contenttweaker:boneshard>,
	<rustic:log>,
	<minecraft:iron_nugget>,
	<extrabitmanipulation:diamond_nugget>,
	<minecraft:diamond>,
	<minecraft:coal>,
	<minecraft:redstone>,
	<minecraft:iron_ingot>,
	<minecraft:gold_ingot>,
	<rustic:chili_pepper>,
	<rustic:wildberries>,
	<minecraft:clay_ball>,
	<wizardry:wisdom_wood_log>,
	<minecraft:quartz>,
	<thaumcraft:nugget>,
	<rustic:dust_tiny_iron>,
	<minecraft:glowstone_dust>,
	<arcaneworld:amethyst>,
	<rustic:ironberries>
] as IItemStack[];

val stack2048 = [
	<minecraft:glass>,
	<minecraft:stained_glass>,
	<minecraft:brick_block>,
	<minecraft:clay>,
	<minecraft:snow>,
	<minecraft:glowstone>,
	<minecraft:dye:15>
] as IItemStack[];

val stack4096 = [
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

val stack8192 = [
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




//The magic, don't touch this
for i in stack256 {
	i.maxStackSize = 256;
}

for j in stack512 {
	j.maxStackSize = 512;
}

for k in stack1024 {
	k.maxStackSize = 1024;
}

for l in stack2048 {
	l.maxStackSize = 2048;
}

for m in stack4096 {
	m.maxStackSize = 4096;
}

for n in stack8192 {
	n.maxStackSize = 8192;
}