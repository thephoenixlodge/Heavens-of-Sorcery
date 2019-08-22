////Imports
import mods.astralsorcery.Altar;
import mods.astralsorcery.Utils;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

////Variables
val feather = <minecraft:feather>;
val manaweave = <botania:manaresource:22>;
val fairyDust = <wizardry:fairy_dust>;
val stardust = <astralsorcery:itemcraftingcomponent:2>;
val elytra = <minecraft:elytra>;
//wings
val wingsDragon = <wings:dragon_wings>;
val wingsAngel = <wings:angel_wings>;
val wingsSlime = <wings:slime_wings>;
val wingsButterfly = <wings:blue_butterfly_wings>;
val wingsMonarch = <wings:monarch_butterfly_wings>;
val wingsBat = <wings:bat_wings>;
val wingsFairy = <wings:fairy_wings>;
val wingsEvil = <wings:evil_wings>;
val wingsFire = <wings:fire_wings>;
//foci
//val dragonBone = <iceandfire:dragonbone>;
val slime = <minecraft:slime_ball>;
val dyeLightBlue = <ore:dyeLightBlue>;
val dyeOrange = <ore:dyeOrange>;
val leather = <minecraft:leather>;
val smokeyQuartz = <botania:quartz>;
val blazePowder = <minecraft:blaze_powder>;
val dragonStone = <botania:manaresource:9>;

val wingsToFoci = {} as IIngredient[IItemStack];
wingsToFoci[wingsDragon] = dragonStone;
wingsToFoci[wingsAngel] = feather;
wingsToFoci[wingsSlime] = slime;
wingsToFoci[wingsButterfly] = dyeLightBlue;
wingsToFoci[wingsMonarch] = dyeOrange;
wingsToFoci[wingsBat] = leather;
wingsToFoci[wingsFairy] = fairyDust;
wingsToFoci[wingsEvil] = smokeyQuartz;
wingsToFoci[wingsFire] = blazePowder;

//Add Altar recipes for wings
for wings, foci in wingsToFoci {
	recipes.remove(wings);
	Altar.addTraitAltarRecipe("internal/altar/" ~ wings.name, wings, 5000, 800, [feather, foci, feather, manaweave, elytra, manaweave, fairyDust, stardust, fairyDust, null, null, feather, feather, null, null, null, null, feather, feather, null, null, null, feather, feather, null, foci, foci], "astralsorcery.constellation.vicio");
}