////Imports
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Altar;
import mods.astralsorcery.Utils;

////Variables
val caminiteBlend = <embers:blend_caminite>;
val rocksMisty = <mist:rocks>;
val oreSand = <ore:sand>;
val clay = <minecraft:clay_ball>;
val caminiteBrickBlock = <embers:block_caminite_brick>;
val caminiteBrickItem = <embers:brick_caminite>;
val caminiteBrickStairs = <embers:stairs_caminite_brick>;
val embersBore = <embers:ember_bore>;
val fluidExtractor = <embers:pump>;
val itemExtractor = <embers:item_pump>;
val mechCore = <embers:mech_core>;
val ingotNiobium = <mist:niobium_ingot>;
val blockNiobium = <mist:niobium_block>;
val ingotNickel = <embers:ingot_nickel>;
val blockNickel = <embers:block_nickel>;
val ingotCopper = <embers:ingot_copper>;
val plateLead = <embers:plate_lead>;
val ingotIron = <minecraft:iron_ingot>;
val hardFoggyStone = <mist:stone_basic>;
val foggyCobble = <mist:cobblestone>;
val oreFogStone = <ore:fogStone>;
val rockCrystalAny = Utils.getCrystalORIngredient(false, false);
val tinkersHammer = <embers:tinker_hammer>;
val stickLivingwood = <botania:manaresource:3>;
val ingotLead = <embers:ingot_lead>;
val ingotBrass = <thaumcraft:ingot:2>;
val ingotThaumium = <thaumcraft:ingot>;
val ingotVoid = <thaumcraft:ingot:1>;
val plateBrass = <thaumcraft:plate>;
val plateThaumium = <thaumcraft:plate:2>;
val plateVoid = <thaumcraft:plate:3>;
val emberActivator = <embers:ember_activator>;
val emberEmitter = <embers:ember_emitter>;
val melter = <embers:block_furnace>;
val mixer = <embers:mixer>;

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

//tweak bore recipe
recipes.remove(embersBore);
Altar.addDiscoveryAltarRecipe("custom_ember_bore", embersBore, 1000, 250, [caminiteBrickStairs, ingotCopper, caminiteBrickStairs, caminiteBrickBlock, mechCore, caminiteBrickBlock, ingotNiobium, ingotNiobium, ingotNiobium]);

//tweak mech core recipe
recipes.remove(mechCore);
Altar.addDiscoveryAltarRecipe("custom_mech_core", mechCore, 500, 120, [ingotIron, rockCrystalAny, ingotIron, oreFogStone, plateLead, oreFogStone, ingotIron, oreFogStone, ingotIron]);

//tweak hammer recipe slightly
recipes.remove(tinkersHammer);
recipes.addShaped(tinkersHammer, [[ingotNiobium, ingotLead, ingotNiobium], [ingotNiobium, stickLivingwood, ingotNiobium], [null, stickLivingwood, null]]);

//tweak TC plate recipes
recipes.remove(plateBrass);
recipes.addShapeless(plateBrass, [ingotBrass, ingotBrass, tinkersHammer.reuse()]);
recipes.remove(plateThaumium);
recipes.addShapeless(plateThaumium, [ingotThaumium, ingotThaumium, tinkersHammer.reuse()]);
recipes.remove(plateVoid);
recipes.addShapeless(plateVoid, [ingotVoid, ingotVoid, tinkersHammer.reuse()]);

//Ember activator
emberActivator.addTooltip(format.gold("Input Ember Crystals to bottom half"));
emberActivator.addTooltip(format.gold("Attach Ember Emitter to top half"));

//Emitter
emberEmitter.addTooltip(format.gold("Activate with redstone signal"));

//melter
melter.addTooltip(format.gold("Input Items to top half"));
melter.addTooltip(format.gold("Extract Fluids from top half"));
melter.addTooltip(format.gold("Input Ember to bottom half"));

//Mixer centrifuge
mixer.addTooltip(format.gold("Input fluids to bottom half. Each side is a separate tank"));
mixer.addTooltip(format.gold("Extract Fluids from top half"));
mixer.addTooltip(format.gold("Input Ember to top half"));