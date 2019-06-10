////Imports
import mods.naturesaura.Altar as NatureAltar;

////Variables
val goldShroom = <mist:mushrooms_food:23>;
val brilliantFibre = <naturesaura:gold_fiber>;
val leaves = <ore:treeLeaves>;
val nuggetGold = <ore:nuggetGold>;
val tallGrass = <minecraft:tallgrass>;
val infusedStone = <naturesaura:infused_stone>;
val turqoiseStone = <blue_skies:turquoise_stone>;
val lunarStone = <blue_skies:lunar_stone>;

//Tweak gold fibre recipe to require misty world
recipes.remove(brilliantFibre);
recipes.addShaped("gold_fiber", brilliantFibre, [[leaves, nuggetGold, tallGrass], [nuggetGold, goldShroom, nuggetGold], [tallGrass, nuggetGold, leaves]]);

//Tweak Infused stone recipe
NatureAltar.removeRecipe(infusedStone);
NatureAltar.addRecipe("infused_stone", turqoiseStone, infusedStone, null, 7500, 40);
NatureAltar.addRecipe("infused_stone_alt", lunarStone, infusedStone, null, 7500, 40);