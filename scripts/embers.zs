////Imports
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Altar;
import mods.astralsorcery.Utils;
import crafttweaker.item.IItemStack;
import mods.chisel.Carving;
import mods.embers.Melter;
import mods.embers.Stamper;

////Variables
val caminiteBlend = <embers:blend_caminite>;
val rocksMisty = <mist:rocks>;
val oreSand = <ore:sand>;
val clay = <minecraft:clay_ball>;
val caminiteBrickBlock = <embers:block_caminite_brick>;
val caminiteBrickItem = <embers:brick_caminite>;
val caminiteBrickStairs = <embers:stairs_caminite_brick>;
val caminiteBlendBlock = <soot:caminite_clay>;
val embersBore = <embers:ember_bore>;
val fluidExtractor = <embers:pump>;
val itemExtractor = <embers:item_pump>;
val mechCore = <embers:mech_core>;
val ingotNiobium = <mist:niobium_ingot>;
val blockNiobium = <mist:niobium_block>;
val nuggetNiobium = <mist:niobium_nugget>;
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
val plateColdIron = <bewitchment:cold_iron_plate>;
val ingotColdIron = <bewitchment:cold_iron_ingot>;
val emberActivator = <embers:ember_activator>;
val emberEmitter = <embers:ember_emitter>;
val emberReceptor = <embers:ember_receiver>;
val melter = <embers:block_furnace>;
val mixer = <embers:mixer>;
val stamper = <embers:stamper>;
val stamperBase = <embers:stamper_base>;
val bin = <embers:bin>;
val trapdoorIron = <minecraft:iron_trapdoor>;
val binTrapdoor = <soot:redstone_bin>;
val stampRawArray = [
	<embers:stamp_bar_raw>,
	<embers:stamp_plate_raw>,
	<soot:stamp_nugget_raw>,
	<embers:stamp_gear_raw>,
	<soot:stamp_text_raw>,
	<embers:stamp_flat_raw>
] as IItemStack[];
val stampRawBlank = <embers:stamp_flat_raw>;
val stampCookedArray = [
	<embers:stamp_flat>,
	<embers:stamp_bar>,
	<embers:stamp_plate>,
	<embers:stamp_gear>,
	<soot:stamp_nugget>,
	<soot:stamp_text>
] as IItemStack[];
val stampCookedBlank = <embers:stamp_flat>;
val stampBar = <embers:stamp_bar>;
val moltenCore = <arcaneworld:molten_core>;
val plateIron = <embers:plate_iron>;
val plateCaminite = <embers:plate_caminite>;
val ingotManasteel = <botania:manaresource>;
val cauldron = <minecraft:cauldron>;
val piston = <minecraft:piston>;
val amethyst = <arcaneworld:amethyst>;
val lava = <liquid:lava>;
val magmaCream = <minecraft:magma_cream>;
val emberShard = <embers:shard_ember>;
val emberCrystal = <embers:crystal_ember>;
val beamSplitter = <embers:beam_splitter>;
val ingotDawnstone = <embers:ingot_dawnstone>;
val latex = <mist:latex>;
val blockLatex = <mist:latex_block>;
val latexFluid = <liquid:latex_fluid>;
val sulfur = <mist:sulfur>;
val rubber = <thebetweenlands:items_misc:23>;

//tweak caminite blend recipe
recipes.remove(caminiteBlend);
recipes.addShapeless(caminiteBlend * 32, [rocksMisty, rocksMisty, rocksMisty, rocksMisty, oreSand, clay, clay, clay, clay]);

//buff number of caminite brick blocks from crafting
recipes.remove(caminiteBrickBlock);
recipes.addShaped(caminiteBrickBlock * 4, [[caminiteBrickItem, caminiteBrickItem], [caminiteBrickItem, caminiteBrickItem]]);

//Caminite blend block buff
recipes.remove(caminiteBlendBlock);
recipes.addShaped(caminiteBlendBlock * 4, [[caminiteBlend, caminiteBlend], [caminiteBlend, caminiteBlend]]);

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

//cold iron plate
recipes.remove(plateColdIron);
recipes.addShapeless(plateColdIron, [ingotColdIron, ingotColdIron, tinkersHammer.reuse()]);

//Ember activator
emberActivator.addTooltip(format.gold("Input Ember Crystals to bottom half"));
emberActivator.addTooltip(format.gold("Attach Ember Emitter to top half"));
recipes.remove(emberActivator);
Altar.addDiscoveryAltarRecipe("custom_ember_activator", emberActivator, 500, 120, [ingotCopper, ingotCopper, ingotCopper, ingotCopper, ingotCopper, ingotCopper, plateIron, moltenCore, plateIron]);

//Emitter
emberEmitter.addTooltip(format.gold("Activate with redstone signal"));
recipes.remove(emberEmitter);
Altar.addDiscoveryAltarRecipe("custom_ember_emitter", emberEmitter * 4, 200, 50, [null, ingotCopper, null, null, ingotCopper, null, ingotNiobium, plateCaminite, ingotNiobium]);

//Receptor
recipes.remove(emberReceptor);
Altar.addDiscoveryAltarRecipe("custom_ember_receptor", emberReceptor * 4, 200, 50, [null, null, null, ingotNiobium, null, ingotNiobium, ingotCopper, plateCaminite, ingotCopper]);

//beam splitter
recipes.remove(beamSplitter);
Altar.addConstellationAltarRecipe("custom_beam_splitter", beamSplitter * 4, 3200, 500, [null, plateCaminite, null, ingotDawnstone, null, ingotDawnstone, null, plateCaminite, null, plateIron, plateIron, plateIron, plateIron, null, null, ingotCopper, ingotCopper, ingotCopper, ingotCopper, ingotNiobium, ingotNiobium]);

//melter
melter.addTooltip(format.gold("Input Items to top half"));
melter.addTooltip(format.gold("Extract Fluids from top half"));
melter.addTooltip(format.gold("Input Ember to bottom half"));
recipes.remove(melter);
Altar.addDiscoveryAltarRecipe("custom_melter", melter, 500, 120, [caminiteBrickItem, plateCaminite, caminiteBrickItem, caminiteBrickItem, ingotCopper, caminiteBrickItem, ingotNiobium, moltenCore, ingotNiobium]);

//Mixer centrifuge
mixer.addTooltip(format.gold("Input fluids to bottom half. Each side is a separate tank"));
mixer.addTooltip(format.gold("Extract Fluids from top half"));
mixer.addTooltip(format.gold("Input Ember to top half"));
recipes.remove(mixer);
Altar.addAttunementAltarRecipe("custom_mixer", mixer, 1000, 200, [plateIron, ingotCopper, plateIron, plateIron, cauldron, plateIron, ingotManasteel, mechCore, ingotManasteel, null, null, caminiteBrickItem, caminiteBrickItem]);

//Stamper
stamper.addTooltip(format.gold("Place two blocks above Stamp Base. Requires Ember input"));
recipes.remove(stamper);
Altar.addDiscoveryAltarRecipe("custom_stamper", stamper, 500, 120, [caminiteBrickItem, ingotCopper, caminiteBrickItem, caminiteBrickItem, piston, caminiteBrickItem, caminiteBrickItem, null, caminiteBrickItem]);

//Stamper Base
stamperBase.addTooltip(format.gold("Place two blocks below Stamper. Input Items or Fluids."));
stamperBase.addTooltip(format.gold("Item outputs can be collected by placing a Bin underneath"));
recipes.remove(stamperBase);
Altar.addDiscoveryAltarRecipe("custom_stamper_base", stamperBase, 250, 80, [null, null, null, ingotNiobium, null, ingotNiobium, caminiteBrickBlock, cauldron, caminiteBrickBlock]);

//bin
recipes.remove(bin);
Altar.addDiscoveryAltarRecipe("custom_bin", bin, 200, 40, [nuggetNiobium, null, nuggetNiobium, nuggetNiobium, null, nuggetNiobium, nuggetNiobium, plateIron, nuggetNiobium]);

//Simplify stamps
for stampRaw in stampRawArray {
	recipes.remove(stampRaw);
}
recipes.addShaped(stampRawBlank, [[null, caminiteBlend, null], [caminiteBlend, null, caminiteBlend], [null, caminiteBlend, null]]);
Carving.addGroup("embers-stamps");
for stampCooked in stampCookedArray {
	if(!(stampCooked has stampCookedBlank)) {
		furnace.remove(stampCooked);
	}
	Carving.addVariation("embers-stamps", stampCooked);
}

//Molten core recipe
recipes.remove(moltenCore);
recipes.addShaped(moltenCore, [[amethyst, emberShard, amethyst], [emberCrystal, lava * 1000, emberCrystal], [magmaCream, emberShard, magmaCream]]);
furnace.setFuel(moltenCore, 20000);

//trapdoor bin
recipes.remove(binTrapdoor);
recipes.addShapeless(binTrapdoor, [bin, trapdoorIron]);

//Misty World latex/rubber
Melter.add(latexFluid * 144, latex);
Melter.add(latexFluid * 1296, blockLatex);
recipes.remove(rubber);
Stamper.add(rubber, latexFluid * 144, stampBar, sulfur);