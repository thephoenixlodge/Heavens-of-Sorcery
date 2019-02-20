////Imports
import mods.jei.JEI;

////Variables
val clayTile = <cathedral:firedtile>;
val terracottaShingle = <quark:hardened_clay_tiles>;
val yabbaBarrel = <yabba:item_barrel>;
val yabbaBarrelCrate = <yabba:item_barrel>.withTag({BlockEntityTag: {Model: "crate", Skin: "minecraft:quartz_block_chiseled"}});
val chest = <ore:chestWood>;
val blockQuartz = <ore:blockQuartz>;
val itemQuartz = <ore:gemQuartz>;
val slabQuartz = <minecraft:stone_slab:7>;

//tweak clay tile related recipes
recipes.remove(terracottaShingle);
recipes.addShaped(terracottaShingle * 4, [[clayTile, clayTile], [clayTile, clayTile]]);

//Change YABBA Barrel recipe to default to the Crate model
recipes.remove(yabbaBarrel);
recipes.addShaped(yabbaBarrelCrate, [[blockQuartz, slabQuartz, blockQuartz], [itemQuartz, chest, itemQuartz], [blockQuartz, slabQuartz, blockQuartz]]);
JEI.hide(yabbaBarrel);
JEI.addItem(yabbaBarrelCrate);