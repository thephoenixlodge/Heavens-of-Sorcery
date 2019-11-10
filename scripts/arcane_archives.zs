import mods.naturesaura.TreeRitual;
import mods.astralsorcery.Altar;
import mods.arcanearchives.GCT;

////variables
val resonator = <arcanearchives:radiant_resonator>;
val ingotDawnstone = <embers:ingot_dawnstone>;
val nuggetDawnstone = <embers:nugget_dawnstone>;
val liquidMana = <liquid:mana_fluid>;
val stickLivingwood = <botania:manaresource:3>;
val livingwood = <botania:livingwood>;
val terraMoss = <roots:terra_moss>;
val saplingBluebright = <blue_skies:bluebright_sapling>;
val gemCutter = <arcanearchives:gemcutters_table>;
val grindstone = <astralsorcery:blockmachine:1>;
val lens = <astralsorcery:itemcraftingcomponent:3>;
val paper = <minecraft:paper>;
val luminousCraftingTable = <astralsorcery:blockaltar>;
val radiantQuartzRaw = <arcanearchives:raw_quartz>;
val radiantQuartzShaped = <arcanearchives:shaped_quartz>;
val radiantQuartzDust = <arcanearchives:radiant_dust>;
val woodInfused = <astralsorcery:blockinfusedwood>;
val gemDiopside = <blue_skies:diopside_gem>;
val gemPyrope = <blue_skies:pyrope_gem>;
val gemTurquoise = <blue_skies:turquoise_gem>;
val gemDiamond = <minecraft:diamond>;
val gemSapphire = <arcaneworld:sapphire>;
val gemZanite = <aether_legacy:zanite_gemstone>;
val gemResonating = <astralsorcery:itemcraftingcomponent:4>;
val shardMoonstone = <blue_skies:moonstone_shard>;
val zealLighter = <blue_skies:zeal_lighter>.reuse();
val obsidian = <minecraft:obsidian>;
val moltenCore = <arcaneworld:molten_core>;
val extraneousFirestarter = <naturesaura:furnace_heater>;
val blockClay = <minecraft:clay>;
val mundaneAmulet = <thaumcraft:baubles>;
val radiantLantern = <arcanearchives:radiant_lantern>;
val radiantTank = <arcanearchives:radiant_tank>;
val containmentField = <arcanearchives:containment_field>;
val scintillatingInlay = <arcanearchives:scintillating_inlay>;
val monitoringCrystal = <arcanearchives:monitoring_crystal>;
val matrixBrace = <arcanearchives:matrix_brace>;
val materialInterface = <arcanearchives:material_interface>;
val devouringCharm = <arcanearchives:devouring_charm>;
val brazierHoarding = <arcanearchives:brazier_of_hoarding>;
val radiantKey = <arcanearchives:radiant_key>;
val amphora = <arcanearchives:radiant_amphora>;
val gemSocket = <arcanearchives:gemsocket>;

//resonator
recipes.remove(resonator);
TreeRitual.addRecipe("resonator", saplingBluebright, resonator, 400, [ingotDawnstone, stickLivingwood, stickLivingwood, terraMoss, liquidMana * 1000, gemResonating]);

//gemCutter
recipes.remove(gemCutter);
Altar.addConstellationAltarRecipe("internal/altar/gem_cutter", gemCutter, 3200, 500, [null, null, null, grindstone, lens, paper, ingotDawnstone, luminousCraftingTable, ingotDawnstone, gemDiopside, gemDiamond, null, null, gemPyrope, gemSapphire, gemTurquoise, gemZanite, radiantQuartzRaw, radiantQuartzRaw, woodInfused, woodInfused]);

//replace radiant lantern recipe
GCT.replaceRecipe("radiant_lantern", radiantLantern * 4, [radiantQuartzRaw * 2, nuggetDawnstone]);

//radiant tank
GCT.replaceRecipe("radiant_tank", radiantTank * 4, [radiantQuartzShaped * 2, containmentField, ingotDawnstone]);

//containment field
GCT.replaceRecipe("containment_field", containmentField, [scintillatingInlay, ingotDawnstone * 2, radiantQuartzShaped * 2]);

//inlay
GCT.replaceRecipe("scintillating_inlay", scintillatingInlay, [radiantQuartzDust * 6, shardMoonstone * 6, ingotDawnstone, nuggetDawnstone * 6]);

//monitoring crystal
GCT.replaceRecipe("monitoring_crystal", monitoringCrystal, [radiantQuartzShaped, nuggetDawnstone * 2, stickLivingwood * 2]);

//matrix brace
GCT.replaceRecipe("matrix_brace", matrixBrace, [scintillatingInlay, ingotDawnstone * 2]);

//material interface
GCT.replaceRecipe("material_interface", materialInterface, [scintillatingInlay, ingotDawnstone, radiantQuartzShaped]);

//devouring charm
GCT.replaceRecipe("devouring_charm", devouringCharm * 4, [ingotDawnstone, obsidian * 2, zealLighter]);

//brazier
GCT.replaceRecipe("brazier_of_hoarding", brazierHoarding, [radiantQuartzDust * 4, moltenCore, ingotDawnstone * 2, livingwood * 3, extraneousFirestarter]);

//radiant key
GCT.replaceRecipe("radiant_key", radiantKey * 4, [ingotDawnstone, nuggetDawnstone * 3, radiantQuartzShaped]);

//amphora
GCT.replaceRecipe("radiant_amphora", amphora, [radiantQuartzDust * 4, blockClay * 4, nuggetDawnstone * 4]);

//gem socket
GCT.replaceRecipe("gemsocket", gemSocket, [scintillatingInlay, nuggetDawnstone * 4, mundaneAmulet]);