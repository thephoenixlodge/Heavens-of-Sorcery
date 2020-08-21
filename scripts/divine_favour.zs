////imports
import mods.embers.Alchemy;
import crafttweaker.item.IItemStack;
import thaumcraft.aspect.CTAspectStack;
import mods.thaumcraft.ArcaneWorkbench;


////variables
//aspects
val aer = <aspect:aer>;
val ignis = <aspect:ignis>;
val aqua = <aspect:aqua>;
val terra = <aspect:terra>;
val ordo = <aspect:ordo>;
val perditio = <aspect:perditio>;
//other
val boneDagger = <divinefavor:bone_dagger>;
val slimyBone = <thebetweenlands:items_misc:14>;
val gemMiddleBlue = <thebetweenlands:aqua_middle_gem>;
val woodHandle = <cuisine:material:1>;
var blends = {
	<divinefavor:blend_wood> : [<thebetweenlands:weedwood_planks>, <divinefavor:soul_shard_wither>],
	<divinefavor:blend_redstone> : [<minecraft:redstone>, <divinefavor:soul_shard_will>],
	<divinefavor:blend_charcoal> : [<minecraft:coal:1>, <divinefavor:soul_shard_nether>],
	<divinefavor:blend_flint> : [<minecraft:flint>, <divinefavor:soul_shard_mind>],
	<divinefavor:blend_fleshy> : [<mysticalworld:venison>, <divinefavor:soul_shard_wild>],
	<divinefavor:blend_feathers> : [<bewitchment:ravens_feather>, <divinefavor:soul_shard_peace>],
	<divinefavor:blend_ender_pearl> : [<minecraft:ender_pearl>, <divinefavor:soul_shard_end>],
	<divinefavor:blend_snow> : [<minecraft:snowball>, <divinefavor:soul_shard_water>],
	<divinefavor:blend_lapis> : [<minecraft:dye:4>, <divinefavor:soul_shard_undeath>]
} as IItemStack[][IItemStack];
val etherealGooBlend = <divinefavor:blend_ethereal_goo>;
val soulShardAny = <ore:soulShard>;
val sludge = <thebetweenlands:sludge_ball>;
val ritualPouch = <divinefavor:ritual_pouch>;
val lurkerPouch = <thebetweenlands:lurker_skin_pouch>;
val enchantedFabric = <thaumcraft:fabric>;
val manaString = <botania:manaresource:16>;
val bathHeater = <divinefavor:bath_heater>;
val runeStone = <roots:runestone>;
val wildfireCore = <embers:wildfire_core>;
val bellows = <thaumcraft:bellows>;

//bone dagger
recipes.remove(boneDagger);
recipes.addShaped(boneDagger, [[null, null, slimyBone], [null, gemMiddleBlue, null], [woodHandle, null, null]]);

for blend, ingredients in blends {
	recipes.remove(blend);
	Alchemy.add(blend, [ingredients[0], ingredients[1], ingredients[1], ingredients[1], ingredients[1]], {"thaumium" : 16 to 20});
}
recipes.remove(etherealGooBlend);
Alchemy.add(etherealGooBlend, [soulShardAny, sludge, null, sludge, null], {"thaumium" : 8 to 12, "iron" : 8 to 12});

//ritual pouch
recipes.remove(ritualPouch);
ArcaneWorkbench.registerShapedRecipe("ritual_pouch", "UNLOCKINFUSION", 25, [terra, aer], ritualPouch, [[null, manaString, null], [enchantedFabric, lurkerPouch, enchantedFabric], [null, enchantedFabric, null]]);

//bath heater
recipes.remove(bathHeater);
ArcaneWorkbench.registerShapedRecipe("bath_heater", "BELLOWS", 25, [ignis * 2, aqua * 2, terra], bathHeater, [[runeStone, wildfireCore, runeStone], [runeStone, bellows, runeStone], [runeStone, runeStone, runeStone]]);