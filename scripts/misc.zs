////Imports

////Variables
val zooPantiles = <zoocraftdiscoveries:roof_pantile>;
val clayTile = <cathedral:firedtile>;
val zooTile = <zoocraftdiscoveries:clay_tile>;
val terracottaShingle = <quark:hardened_clay_tiles>;


//tweak clay tile related recipes
recipes.remove(zooPantiles);
recipes.remove(zooTile);
recipes.addShaped(zooPantiles * 2, [[clayTile], [clayTile]]);
recipes.remove(terracottaShingle);
recipes.addShaped(terracottaShingle * 4, [[clayTile, clayTile], [clayTile, clayTile]]);