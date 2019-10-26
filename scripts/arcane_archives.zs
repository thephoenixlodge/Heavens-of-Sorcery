import mods.naturesaura.TreeRitual;
import mods.astralsorcery.Altar;

////variables
val resonator = <arcanearchives:radiant_resonator>;
val ingotDawnstone = <embers:ingot_dawnstone>;
val liquidMana = <liquid:mana_fluid>;
val stickLivingwood = <botania:manaresource:3>;
val terraMoss = <roots:terra_moss>;
val saplingBluebright = <blue_skies:bluebright_sapling>;
val gemCutter = <arcanearchives:gemcutters_table>;
val grindstone = <astralsorcery:blockmachine:1>;
val lens = <astralsorcery:itemcraftingcomponent:3>;
val paper = <minecraft:paper>;
val luminousCraftingTable = <astralsorcery:blockaltar>;
val radiantQuartzRaw = <arcanearchives:raw_quartz>;
val woodInfused = <astralsorcery:blockinfusedwood>;
val gemDiopside = <blue_skies:diopside_gem>;
val gemPyrope = <blue_skies:pyrope_gem>;
val gemTurquoise = <blue_skies:turquoise_gem>;
val gemDiamond = <minecraft:diamond>;
val gemSapphire = <arcaneworld:sapphire>;
val gemZanite = <aether_legacy:zanite_gemstone>;
val gemResonating = <astralsorcery:itemcraftingcomponent:4>;

//resonator
recipes.remove(resonator);
TreeRitual.addRecipe("resonator", saplingBluebright, resonator, 400, [ingotDawnstone, stickLivingwood, stickLivingwood, terraMoss, liquidMana * 1000, gemResonating]);

//gemCutter
recipes.remove(gemCutter);
Altar.addConstellationAltarRecipe("internal/altar/gem_cutter", gemCutter, 3200, 500, [null, null, null, grindstone, lens, paper, ingotDawnstone, luminousCraftingTable, ingotDawnstone, gemDiopside, gemDiamond, null, null, gemPyrope, gemSapphire, gemTurquoise, gemZanite, radiantQuartzRaw, radiantQuartzRaw, woodInfused, woodInfused]);