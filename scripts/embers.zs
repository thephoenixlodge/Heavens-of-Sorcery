////Imports


////Variables
val caminiteBlend = <embers:blend_caminite>;
val rocksMisty = <mist:rocks>;
val oreSand = <ore:sand>;
val clay = <minecraft:clay_ball>;
val caminiteBrickBlock = <embers:block_caminite_brick>;
val caminiteBrickItem = <embers:brick_caminite>;
//val embersBore = 

//tweak caminite blend recipe
recipes.remove(caminiteBlend);
recipes.addShapeless(caminiteBlend * 32, [rocksMisty, rocksMisty, rocksMisty, rocksMisty, oreSand, clay, clay, clay, clay]);

//buff number of caminite brick blocks from crafting
recipes.remove(caminiteBrickBlock);
recipes.addShaped(caminiteBrickBlock * 4, [[caminiteBrickItem, caminiteBrickItem], [caminiteBrickItem, caminiteBrickItem]]);