import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;

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
val ingotGold = <minecraft:gold_ingot>;
val gemAmethyst = <arcaneworld:amethyst>;
val gemDiamond = <minecraft:diamond>;
val gemCharoite = <blue_skies:charoite>;
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

//disable snare
recipes.remove(snare);

//hellfire forge
recipes.remove(hellfireForge);
recipes.addShaped(hellfireForge, [[gravesDust, null, gravesDust], [slate, devilDust, slate], [slate, stableFabric, slate]]);

//blood altar
recipes.remove(bloodAltar);
recipes.addShaped(bloodAltar, [[devilDust, null, devilDust], [slate, cauldron, slate], [slate, demonicWill, slate]]);

//lesser tartaric gem
TartaricForge.removeRecipe([redstone, ingotGold, <minecraft:glass>, <minecraft:dye:4>]);
TartaricForge.addRecipe(gemTartaricPetty, [gemZanite, worldThread, redstone, gravesDust], 1, 1);

//slate T1
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.addRecipe(slateT1, slate, 0, 1000, 10, 5);

//weak orb
BloodAltar.removeRecipe(gemDiamond);
BloodAltar.addRecipe(bloodOrbWeak, gemAmethyst, 0, 2000, 3, 1);

//apprentice orb
BloodAltar.removeRecipe(<minecraft:redstone_block>);
BloodAltar.addRecipe(bloodOrbApprentice, stableFabric, 1, 5000, 5, 5);

//magician orb
BloodAltar.removeRecipe(<minecraft:gold_block>);
BloodAltar.addRecipe(bloodOrbMagician, gemCharoite, 2, 25000, 20, 20);