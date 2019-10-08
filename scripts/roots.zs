////Imports
import mods.naturesaura.Altar as NatureAltar;
import mods.naturesaura.TreeRitual;
import mods.astralsorcery.Altar;
import mods.roots.Fey;

//variables
val pyre = <roots:bonfire>;
val infusedRock = <naturesaura:infused_stone>;
val tokenJoy = <naturesaura:token_joy>;
val tokenSorrow = <naturesaura:token_sorrow>;
val wildroot = <roots:wildroot>;
val terraMoss = <roots:terra_moss>;
val logMaple = <blue_skies:maple_log>;
val saplingMaple = <blue_skies:maple_sapling>;
val saplingLunar = <blue_skies:lunar_sapling>;
val imbuer = <roots:imbuer>;
val stickLivingwood = <botania:manaresource:3>;
val groveStone = <roots:grove_stone>;
val infusedRockSlab = <naturesaura:infused_slab>;
val infusedHorizonite = <naturesaura:infused_iron>;
val livingwood = <botania:livingwood>;
val woodStand = <naturesaura:wood_stand>;
val feyCrafter = <roots:fey_crafter>;
val runeStone = <roots:runestone>;
val gemTurquoise = <blue_skies:turquoise_gem>;

//Pyre
recipes.remove(pyre);
TreeRitual.addRecipe("pyre", saplingMaple, pyre, 400, [infusedRock, infusedRock, logMaple, logMaple, tokenJoy, wildroot, terraMoss]);

//Imbuer
recipes.remove(imbuer);
TreeRitual.addRecipe("imbuer", saplingLunar, imbuer, 400, [infusedRock, stickLivingwood, stickLivingwood, tokenSorrow]);

//grove stone
recipes.remove(groveStone);
Altar.addConstellationAltarRecipe("internal/altar/grove_stone", groveStone, 3200, 500, [null, infusedRock, null, infusedRock, terraMoss, infusedRock, infusedRock, wildroot, infusedRock, null, null, infusedRockSlab, infusedRockSlab, null, null, null, null, null, null, infusedRock, infusedRock]);

//fey crafter
recipes.remove(feyCrafter);
Altar.addConstellationAltarRecipe("internal/altar/fey_crafter", feyCrafter, 3200, 500, [infusedHorizonite, terraMoss, infusedHorizonite, null, wildroot, null, null, woodStand, null, null, null, null, null, null, null, null, null, null, null, livingwood, livingwood]);

Fey.removeRecipe(runeStone);
Fey.addRecipe("runestone", runeStone, [gemTurquoise, infusedRock, infusedRock, infusedRock, infusedRock]);