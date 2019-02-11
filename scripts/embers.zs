////Imports


////Variables
val caminiteBlend = <embers:blend_caminite>;
val rocksMisty = <mist:rocks>;
val oreSand = <ore:sand>;
val clay = <minecraft:clay_ball>;

//tweak caminite blend recipe
recipes.remove(caminiteBlend);
recipes.addShapeless(caminiteBlend * 32, [rocksMisty, rocksMisty, rocksMisty, rocksMisty, oreSand, clay, clay, clay, clay]);