////Imports


////Variables
val goldShroom = <mist:mushrooms_food:23>;
val brilliantFibre = <naturesaura:gold_fiber>;
val leaves = <ore:treeLeaves>;
val nuggetGold = <ore:nuggetGold>;
val tallGrass = <minecraft:tallgrass>;


//Tweak gold fibre recipe to require misty world
recipes.remove(brilliantFibre);
recipes.addShaped("gold_fiber", brilliantFibre, [[leaves, nuggetGold, tallGrass], [nuggetGold, goldShroom, nuggetGold], [tallGrass, nuggetGold, leaves]]);