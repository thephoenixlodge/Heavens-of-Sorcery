////Imports
import mods.aether_legacy.Accessory;
import crafttweaker.item.IItemStack;
import mods.astralsorcery.Utils;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemDefinition;
import scripts.globals;
import mods.astralsorcery.Altar;

////Variables
//Shields
val shieldWood = <superiorshields:vanilla_shield_wood>;
val shieldStone = <superiorshields:vanilla_shield_stone>;
val shieldIron = <superiorshields:vanilla_shield_iron>;
val shieldGold = <superiorshields:vanilla_shield_gold>;
val shieldDiamond = <superiorshields:vanilla_shield_diamond>;
val shieldObsidian = <superiorshields:vanilla_shield_obsidian>;
val shieldEmerald = <superiorshields:vanilla_shield_emerald>;
val shieldEndstone = <superiorshields:vanilla_shield_endstone>;
val shieldInfusedIron = <superiorshields:natures_aura_shield_infused_iron>;
val shieldSkyIngot = <superiorshields:natures_aura_shield_sky_ingot>;
val shieldManasteel = <superiorshields:botania_shield_manasteel>;
val shieldTerrasteel = <superiorshields:botania_shield_terrasteel>;
val shieldElementium = <superiorshields:botania_shield_elementium>;
//Ingredients
val nacrePearl = <wizardry:nacre_pearl>;
val stickWisdomWood = <wizardry:wisdom_stick>;
val stickSkyroot = <aether_legacy:skyroot_stick>;
val stickLivingwood = <botania:manaresource:3>;
val stickDreamwood = <botania:manaresource:13>;
val stickLunar = <blue_skies:lunar_stick>;
val stickBluebright = <blue_skies:bluebright_stick>;
val devilDust = <wizardry:devil_dust>;
val logWisdomWood = <wizardry:wisdom_wood_log>;
val plankWisdomWoodPigmented = <wizardry:wisdom_wood_pigmented_planks>;
val mistCobble = <mist:cobblestone>;
val holyStoneBrick = <aether_legacy:holystone_brick>;
val ingotNiobium = <mist:niobium_ingot>;
val gemZanite = <aether_legacy:zanite_gemstone>;
val ambrosium = <aether_legacy:ambrosium_shard>;
val goldenAmber = <aether_legacy:golden_amber>;
val manaQuartz = <botania:quartz:1>;
val manaWeave = <botania:manaresource:22>;
val ingotLead = <embers:ingot_lead>;
val brickArchaic = <embers:archaic_brick>;
val bacterialShale = <mist:bio_shale>;
val blockPetalGreen = <botania:petalblock:13>;
val feather = <minecraft:feather>;
val rockCrystalAny = Utils.getCrystalORIngredient(false, false);
val liquidMana = <liquid:mana_fluid>;
val ingotManasteel = <botania:manaresource>;
val manaDiamond = <botania:manaresource:2>;
val ingotElementium = <botania:manaresource:7>;
val dragonstone = <botania:manaresource:9>;
val ingotTerrasteel = <botania:manaresource:4>;

//wooden shield
recipes.remove(shieldWood);
recipes.addShaped(shieldWood, [[stickWisdomWood, devilDust, stickWisdomWood], [plankWisdomWoodPigmented, nacrePearl, plankWisdomWoodPigmented], [stickWisdomWood, logWisdomWood, stickWisdomWood]]);
globals.setNewName(shieldWood, "Simpleton's Magic Shield");

//stone shield
recipes.remove(shieldStone);
recipes.addShaped(shieldStone, [[stickSkyroot, mistCobble, stickSkyroot], [holyStoneBrick, shieldWood, holyStoneBrick], [stickSkyroot, mistCobble, stickSkyroot]]);
globals.setNewName(shieldStone, "Apprentice's Magic Shield");

//iron shield
recipes.remove(shieldIron);
Altar.addDiscoveryAltarRecipe("shield/iron", shieldIron, 700, 100, [stickSkyroot, ingotNiobium, stickSkyroot, gemZanite, shieldStone, gemZanite, stickSkyroot, ingotNiobium, stickSkyroot]);
globals.setNewName(shieldIron, "Adept's Magic Shield");

//gold shield
recipes.remove(shieldGold);
Altar.addDiscoveryAltarRecipe("shield/gold", shieldGold, 700, 100, [stickSkyroot, ambrosium, stickSkyroot, goldenAmber, shieldStone, goldenAmber, stickSkyroot, ambrosium, stickSkyroot]);
globals.setNewName(shieldGold, "Rogue's Magic Shield");

//diamond shield
recipes.remove(shieldDiamond);
Altar.addAttunementAltarRecipe("shield/diamond", shieldDiamond, 1400, 300, [stickSkyroot, manaQuartz, stickSkyroot, manaWeave, shieldIron, manaWeave, stickSkyroot, manaQuartz, stickSkyroot, stickLivingwood, stickLivingwood, stickLivingwood, stickLivingwood]);
globals.setNewName(shieldDiamond, "Mage's Magic Shield");

//obsidian shield
recipes.remove(shieldObsidian);
Altar.addAttunementAltarRecipe("shield/obsidian", shieldObsidian, 1400, 300, [stickSkyroot, ingotLead, stickSkyroot, brickArchaic, shieldIron, brickArchaic, stickSkyroot, ingotLead, stickSkyroot, stickLivingwood, stickLivingwood, stickLivingwood, stickLivingwood]);
globals.setNewName(shieldObsidian, "Defender's Magic Shield");

//emerald shield
recipes.remove(shieldEmerald);
Altar.addAttunementAltarRecipe("shield/emerald", shieldEmerald, 1400, 300, [stickSkyroot, bacterialShale, stickSkyroot, blockPetalGreen, shieldGold, blockPetalGreen, stickSkyroot, bacterialShale, stickSkyroot, stickLivingwood, stickLivingwood, stickLivingwood, stickLivingwood]);
globals.setNewName(shieldEmerald, "Assassin's Magic Shield");

//end shield
recipes.remove(shieldEndstone);
Altar.addAttunementAltarRecipe("shield/endstone", shieldEndstone, 1400, 300, [stickSkyroot, feather, stickSkyroot, rockCrystalAny, shieldIron, rockCrystalAny, stickSkyroot, liquidMana, stickSkyroot, stickLivingwood, stickLivingwood, stickLivingwood, stickLivingwood]);
globals.setNewName(shieldEndstone, "Deviant's Magic Shield");

//manasteel shield
recipes.remove(shieldManasteel);
Altar.addAttunementAltarRecipe("shield/manasteel", shieldManasteel, 1400, 300, [stickSkyroot, ingotManasteel, stickSkyroot, manaDiamond, shieldIron, manaDiamond, stickSkyroot, ingotManasteel, stickSkyroot, stickLivingwood, stickLivingwood, stickLivingwood, stickLivingwood]);

//terrasteel shield
recipes.remove(shieldTerrasteel);
Altar.addConstellationAltarRecipe("shield/terrasteel", shieldTerrasteel, 2000, 500, [stickLivingwood, ingotTerrasteel, stickLivingwood, ingotTerrasteel, shieldManasteel, ingotTerrasteel, stickLivingwood, ingotTerrasteel, stickLivingwood, null, null, null, null, stickLunar, stickBluebright, stickBluebright, stickLunar, stickLunar, stickBluebright, stickBluebright, stickLunar]);

//elementium shield
recipes.remove(shieldElementium);
Altar.addConstellationAltarRecipe("shield/elementium", shieldElementium, 2000, 500, [stickLivingwood, ingotElementium, stickLivingwood, dragonstone, shieldManasteel, dragonstone, stickLivingwood, ingotElementium, stickLivingwood, null, null, null, null, stickDreamwood, stickDreamwood, stickDreamwood, stickDreamwood, stickDreamwood, stickDreamwood, stickDreamwood, stickDreamwood]);