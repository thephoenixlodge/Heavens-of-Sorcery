////imports
import mods.embers.Alchemy;
import crafttweaker.item.IItemStack;


////variables
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


//bone dagger
recipes.remove(boneDagger);
recipes.addShaped(boneDagger, [[null, null, slimyBone], [null, gemMiddleBlue, null], [woodHandle, null, null]]);

for blend, ingredients in blends {
	recipes.remove(blend);
	Alchemy.add(blend, [ingredients[0], ingredients[1], ingredients[1], ingredients[1], ingredients[1]], {"thaumium" : 16 to 20});
}
recipes.remove(etherealGooBlend);
Alchemy.add(etherealGooBlend, [soulShardAny, sludge, sludge], {"thaumium" : 8 to 12, "iron" : 8 to 12});