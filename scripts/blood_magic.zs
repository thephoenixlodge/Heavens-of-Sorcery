import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.AlchemyTable;

////variables
val snare = <bloodmagic:soul_snare>;
val slate = <rustic:slate>;
val gravesDust = <tombstone:crafting_ingredient:3>;
val devilDust = <wizardry:devil_dust>;
val cauldron = <minecraft:cauldron>;
val stableFabric = <dimdoors:stable_fabric>;
val demonicWill = <bloodmagic:monster_soul>;
val hellfireForge = <bloodmagic:soul_forge>;
val bloodAltar = <bloodmagic:altar>;
val worldThread = <dimdoors:world_thread>;
val gemZanite = <aether_legacy:zanite_gemstone>;
val redstone = <minecraft:redstone>;
val gemTartaricPetty = <bloodmagic:soul_gem>;
val gemTartaricLesser = <bloodmagic:soul_gem:1>;
val gemTartaricCommon = <bloodmagic:soul_gem:2>;
val ingotGold = <minecraft:gold_ingot>;
val gemAmethyst = <arcaneworld:amethyst>;
val gemDiamond = <minecraft:diamond>;
val gemCharoite = <blue_skies:charoite>;
val blockLapis = <minecraft:lapis_block>;
val blockRedstone = <minecraft:redstone_block>;
val blockGold = <minecraft:gold_block>;
val blockGravitite = <aether_legacy:enchanted_gravitite>;
val dustFairy = <wizardry:fairy_dust>;
val bloodOrbWeak = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"});
val bloodOrbApprentice = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"});
val bloodOrbMagician = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"});
val bloodOrbMaster = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"});
val bloodOrbArchmage = <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"});
val bloodOrbs1 = bloodOrbWeak|bloodOrbApprentice|bloodOrbMagician|bloodOrbMaster|bloodOrbArchmage;
val bloodOrbs2 = bloodOrbApprentice|bloodOrbMagician|bloodOrbMaster|bloodOrbArchmage;
val bloodOrbs3 = bloodOrbMagician|bloodOrbMaster|bloodOrbArchmage;
val bloodOrbs4 = bloodOrbMaster|bloodOrbArchmage;
val bloodOrbs5 = bloodOrbArchmage;
val slateT1 = <bloodmagic:slate>;
val slateT2 = <bloodmagic:slate:1>;
val slateT3 = <bloodmagic:slate:2>;
val slateT4 = <bloodmagic:slate:3>;
val slateT5 = <bloodmagic:slate:4>;
val netherrack = <minecraft:netherrack>;
val ingotBronze = <embers:ingot_bronze>;
val nuggetBronze = <embers:nugget_bronze>;
val plateBronze = <embers:plate_bronze>;
val incenseAltar = <bloodmagic:incense_altar>;
val imperfectRitualStone = <bloodmagic:ritual_controller:1>;
val darkMarble = <tombstone:dark_marble>;
val ritualTable = <arcaneworld:ritual_table>;
val obsidian = <minecraft:obsidian>;
val alchemyTable = <bloodmagic:alchemy_table>;
val vial = <extraalchemy:vial_break>;
val carpetRed = <minecraft:carpet:14>;
val alchemyCatalyst = <botania:alchemycatalyst>;
val bonemeal = <minecraft:dye:15>;
val gunpowder = <minecraft:gunpowder>;
val charcoal = <minecraft:coal:1>;
val arcaneAsh = <bloodmagic:arcane_ashes>;
val woodAsh = <bewitchment:wood_ash>;
val ash = <mist:ash>;
val plantOil = <bloodmagic:component:22>;
val sesameOil = <cuisine:spice_bottle>.withTag({Fluid: {FluidName: "sesame_oil", Amount: 1000}});
val edibleOil = <cuisine:spice_bottle>.withTag({Fluid: {FluidName: "edible_oil", Amount: 1000}});
val rottenFlesh = <minecraft:rotten_flesh>;
val bone = <minecraft:bone>;
val bottledGhosts = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"});
val dustSpectral = <bewitchment:spectral_dust>;
val ebbOfDeath = <bewitchment:ebb_of_death>;

//disable snare
recipes.remove(snare);

//hellfire forge
recipes.remove(hellfireForge);
recipes.addShaped(hellfireForge, [[gravesDust, null, gravesDust], [slate, devilDust, slate], [slate, stableFabric, slate]]);

//blood altar
recipes.remove(bloodAltar);
recipes.addShaped(bloodAltar, [[devilDust, null, devilDust], [slate, cauldron, slate], [slate, demonicWill, slate]]);

//petty tartaric gem
TartaricForge.removeRecipe([redstone, ingotGold, <minecraft:glass>, <minecraft:dye:4>]);
TartaricForge.addRecipe(gemTartaricPetty, [gemZanite, worldThread, redstone, gravesDust], 1, 1);
//lesser
TartaricForge.removeRecipe([gemTartaricPetty, gemDiamond, blockRedstone, blockLapis]);
TartaricForge.addRecipe(gemTartaricLesser, [gemTartaricPetty, gemZanite, slateT2, blockLapis], 60, 20);
//common
TartaricForge.removeRecipe([gemTartaricLesser, gemDiamond, blockGold, slateT3]);
TartaricForge.addRecipe(gemTartaricCommon, [gemTartaricLesser, dustFairy, slateT3, blockGravitite], 240, 50);

//slate T1
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.addRecipe(slateT1, slate, 0, 1000, 10, 5);

//weak orb
BloodAltar.removeRecipe(gemDiamond);
BloodAltar.addRecipe(bloodOrbWeak, gemAmethyst, 0, 2000, 3, 1);

//apprentice orb
BloodAltar.removeRecipe(blockRedstone);
BloodAltar.addRecipe(bloodOrbApprentice, stableFabric, 1, 5000, 5, 5);

//magician orb
BloodAltar.removeRecipe(blockGold);
BloodAltar.addRecipe(bloodOrbMagician, gemCharoite, 2, 25000, 20, 20);

//incensealtar
recipes.remove(incenseAltar);
recipes.addShaped(incenseAltar, [[nuggetBronze, null, nuggetBronze], [plateBronze, netherrack, plateBronze], [ingotBronze, bloodOrbs1, ingotBronze]]);

//imperfect ritual stone
recipes.remove(imperfectRitualStone);
recipes.addShaped(imperfectRitualStone, [[darkMarble, obsidian, darkMarble], [obsidian, bloodOrbs1, obsidian], [darkMarble, ritualTable, darkMarble]]);

//alchemy table
recipes.remove(alchemyTable);
recipes.addShaped(alchemyTable, [[vial, carpetRed, vial], [darkMarble, alchemyCatalyst, darkMarble], [darkMarble, bloodOrbs1, darkMarble]]);

//arcane ash
TartaricForge.removeRecipe([redstone, bonemeal, gunpowder, charcoal]);
TartaricForge.addRecipe(arcaneAsh, [redstone, gravesDust, gunpowder, charcoal], 240, 50);
TartaricForge.addRecipe(arcaneAsh, [redstone, gravesDust, woodAsh], 0, 0);
TartaricForge.addRecipe(arcaneAsh, [redstone, gravesDust, ash], 0, 0);

//plant oil
AlchemyTable.removeRecipe([<minecraft:potato>, <minecraft:potato>, bonemeal]);
AlchemyTable.removeRecipe([<minecraft:wheat>, <minecraft:wheat>, bonemeal]);
AlchemyTable.removeRecipe([<minecraft:carrot>, <minecraft:carrot>, <minecraft:carrot>, bonemeal]);
AlchemyTable.removeRecipe([<minecraft:beetroot>, <minecraft:beetroot>, <minecraft:beetroot>, bonemeal]);
AlchemyTable.addRecipe(plantOil, [sesameOil, bonemeal], 100, 100, 0);
AlchemyTable.addRecipe(plantOil, [edibleOil, bonemeal], 100, 100, 0);

//graves dust bonus recipes
AlchemyTable.addRecipe(gravesDust * 4, [bottledGhosts, dustFairy, bone, rottenFlesh], 100, 100, 2);
AlchemyTable.addRecipe(gravesDust * 20, [bottledGhosts, dustSpectral, ebbOfDeath], 150, 200, 2);