////Imports


////Variables
val goldShroom = <mist:mushrooms_food:18>;
val brilliantFibre = <naturesaura:gold_fiber>;
val leaves = <ore:treeLeaves>;
val nuggetGold = <ore:nuggetGold>;
val tallGrass = <minecraft:tallGrass>;


//Tweak gold fibre recipe to require misty world
recipes.remove(brilliantFibre);
recipes.addShaped(brilliantFibre, [[leaves, nuggetGold, tallGrass], [nuggetGold, goldShroom, nuggetGold], [tallGrass, nuggetGold, leaves]]);