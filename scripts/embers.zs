////Imports
import mods.astralsorcery.LightTransmutation;

////Variables
val caminiteBlend = <embers:blend_caminite>;
val rocksMisty = <mist:rocks>;
val oreSand = <ore:sand>;
val clay = <minecraft:clay_ball>;
val caminiteBrickBlock = <embers:block_caminite_brick>;
val caminiteBrickItem = <embers:brick_caminite>;
val embersBore = <embers:ember_bore>;
val fluidExtractor = <embers:pump>;
val itemExtractor = <embers:item_pump>;
val mechCore = <embers:mech_core>;
val ingotNiobium = <mist:niobium_ingot>;
val blockNiobium = <mist:niobium_block>;
val ingotNickel = <embers:ingot_nickel>;
val blockNickel = <embers:block_nickel>;

//tweak caminite blend recipe
recipes.remove(caminiteBlend);
recipes.addShapeless(caminiteBlend * 32, [rocksMisty, rocksMisty, rocksMisty, rocksMisty, oreSand, clay, clay, clay, clay]);

//buff number of caminite brick blocks from crafting
recipes.remove(caminiteBrickBlock);
recipes.addShaped(caminiteBrickBlock * 4, [[caminiteBrickItem, caminiteBrickItem], [caminiteBrickItem, caminiteBrickItem]]);

//Tooltips for information clarity
fluidExtractor.addTooltip(format.gold("Activate with redstone signal"));
itemExtractor.addTooltip(format.gold("Activate with redstone signal"));
embersBore.addTooltip(format.gold("Place on Bedrock. Use " + format.bold(format.italic("Mechanical Core")) + " to manage input/output"));
mechCore.addTooltip(format.gold("Extends adjacent inventories for additional I/O"));

//Add starlight transmute for Niobium to Nickel
LightTransmutation.addTransmutation(blockNiobium, blockNickel, 400);