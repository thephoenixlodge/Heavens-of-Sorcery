////Imports
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Altar;
import mods.astralsorcery.Utils;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.StarlightInfusion;
import mods.botania.PureDaisy;
import mods.ArcaneWorld;

////Variables
val oreIronMW = <mist:iron_ore>;
val oreStarmetal = <astralsorcery:blockcustomore:1>;
val marble = <astralsorcery:blockmarble>;
val marblePillar = <astralsorcery:blockmarble:2>;
val marbleBricks = <astralsorcery:blockmarble:1>;
val marbleArch = <astralsorcery:blockmarble:3>;
val marbleChiseled = <astralsorcery:blockmarble:4>;
val marbleEngraved = <astralsorcery:blockmarble:5>;
val marbleRuned = <astralsorcery:blockmarble:6>;
val marbleAny = <ore:stoneMarble>;
val holystone = <aether_legacy:holystone>;
val aquamarineShale = <astralsorcery:blockcustomsandore>;
val quicksoil = <aether_legacy:quicksoil>;
val luminousTable = <astralsorcery:blockaltar>;
val starlightAltar = <astralsorcery:blockaltar:1>;
val celestialAltar = <astralsorcery:blockaltar:2>;
val craftingTable = <minecraft:crafting_table>;
val resonatingWand = <astralsorcery:itemwand>;
val manaPearl = <botania:manaresource:1>;
val ironwoodWand = <contenttweaker:ironwood_wand_one>;
val aquamarine = <astralsorcery:itemcraftingcomponent>;
val dictMarble = <ore:blockMarble>;
val sootyMarble = <astralsorcery:blockblackmarble:*>;
val patFrameLivingwood = <botania:livingwood:4>;
val livingwood = <botania:livingwood>;
val livingwoodStick = <botania:manaresource:3>;
val wisdomWood = <wizardry:wisdom_wood_log>;
val linkingTool = <astralsorcery:itemlinkingtool>;
val rockCrystalAny = Utils.getCrystalORIngredient(false, false);
val runeAir = <botania:rune:3>;
val runeMana = <botania:rune:8>;
val runeStarlight = <contenttweaker:rune_starlight>;
val runeWinter = <botania:rune:7>;
val runeSpring = <botania:rune:4>;
val lightWell = <astralsorcery:blockwell>;
val ingotBronze = <embers:ingot_bronze>;
val ingotStarmetal = <astralsorcery:itemcraftingcomponent:1>;
val dustStarmetal = <astralsorcery:itemcraftingcomponent:2>;
val ironberry = <rustic:ironberries>;
val pastureSeedInfused = <botania:grassseeds:7>;
val devilDust = <wizardry:devil_dust>;
val chiliPowder = <cuisine:material:4>;
val gemZanite = <aether_legacy:zanite_gemstone>;
val manaOrb100 = <wizardry:orb:1>;
val plankSkyroot = <aether_legacy:skyroot_plank>;
val gemResonating = <astralsorcery:itemcraftingcomponent:4>;
val enchantingTable = <minecraft:enchanting_table>;
val cauldron = <minecraft:cauldron>;
val icestone = <aether_legacy:icestone>;
val enchanter = <aether_legacy:enchanter>;
val freezer = <aether_legacy:freezer>;
val ingotGold = <minecraft:gold_ingot>;
val glassLens = <astralsorcery:itemcraftingcomponent:3>;
val manaGlassPane = <botania:managlasspane>;
val alfGlassPane = <botania:elfglasspane>;
val sextant = <astralsorcery:itemsextant>;
val lookingGlass = <astralsorcery:itemhandtelescope>;
val telescope = <astralsorcery:blockmachine>;
val starlightInfuser = <astralsorcery:blockstarlightinfuser>;
val attunementAltar = <astralsorcery:blockattunementaltar>;
val spectralRelay = <astralsorcery:blockattunementrelay>;
val nuggetGold = <minecraft:gold_nugget>;
val infusedWood = <astralsorcery:blockinfusedwood>;
//liquids
val liquidMana = <liquid:mana_fluid>;
val liquidStarlight = <liquid:astralsorcery.liquidstarlight>;
val liquidIronberry = <liquid:ironberryjuice>;
val liquidLava = <liquid:lava>;

//Starmetal able to be made from the Iron Ore from the Misty World
LightTransmutation.addTransmutation(oreIronMW, oreStarmetal, 100);

//Holystone to marble transmutation
LightTransmutation.addTransmutation(holystone, marble, 20);

//Quicksoil to Aquamarine Shale
LightTransmutation.addTransmutation(quicksoil, aquamarineShale, 80);
PureDaisy.addRecipe(quicksoil, aquamarineShale);

//Alt livingwood
LightTransmutation.addTransmutation(infusedWood, livingwood, 400);

//Ritual to craft Luminous Crafting Table
ArcaneWorld.createRitualCreateItem("astral_table", "Attune to Starlight", luminousTable, craftingTable, patFrameLivingwood, sootyMarble, dictMarble, dictMarble);

//Ritual to craft resonating wand
ArcaneWorld.createRitualCreateItem("astral_wand", "Attune to Starlight", resonatingWand, ironwoodWand, dictMarble, aquamarine, aquamarine, manaPearl);
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");

//Tweak Linking wand recipe
Altar.addAttunementAltarRecipe("internal/altar/tool_linking", linkingTool, 1000, 300, [livingwoodStick, aquamarine, manaPearl, livingwoodStick, rockCrystalAny, aquamarine, wisdomWood, livingwoodStick, livingwoodStick, null, null, livingwood, null]);

//Tweak lightwell recipe
Altar.addDiscoveryAltarRecipe("internal/altar/lightwell", lightWell, 200, 100, [marbleRuned, rockCrystalAny, marbleRuned, marbleChiseled, runeAir, marbleChiseled, aquamarine, marbleRuned, aquamarine]);

//Tweak starlght altar recipe
Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", starlightAltar, 700, 100, [marblePillar, rockCrystalAny, marblePillar, marbleChiseled, liquidStarlight, marbleChiseled, marblePillar, runeMana, marblePillar]);

//Tweak Celestial altar recipe
Altar.addAttunementAltarRecipe("internal/altar/upgrade_tier3", celestialAltar, 1400, 300, [ingotBronze, null, ingotBronze, marbleChiseled, rockCrystalAny, marbleChiseled, marblePillar, ingotStarmetal, marblePillar, runeStarlight, runeStarlight, aquamarine, aquamarine]);

//New recipes for enchanter and freezer
recipes.remove(enchanter);
Altar.addConstellationAltarRecipe("internal/altar/aether_enchanter", enchanter, 3200, 500, [null, gemResonating, null, gemZanite, enchantingTable, gemZanite, runeStarlight, runeSpring, runeStarlight, plankSkyroot, plankSkyroot, holystone, holystone, plankSkyroot, plankSkyroot, plankSkyroot, plankSkyroot, holystone, holystone, holystone, holystone]);
recipes.remove(freezer);
Altar.addConstellationAltarRecipe("internal/altar/aether_freezer", freezer, 3200, 500, [null, gemResonating, null, icestone, cauldron, icestone, runeStarlight, runeWinter, runeStarlight, holystone, holystone, plankSkyroot, plankSkyroot, holystone, holystone, holystone, holystone, plankSkyroot, plankSkyroot, plankSkyroot, plankSkyroot]);

////Lightwell melting
//Starlight
Lightwell.addLiquefaction(gemZanite, liquidStarlight, 0.4F, 14, 0);
Lightwell.addLiquefaction(manaPearl, liquidStarlight, 0.5F, 17, 0);
Lightwell.addLiquefaction(manaOrb100, liquidStarlight, 0.3F, 12, 0);
//Lava
Lightwell.addLiquefaction(chiliPowder, liquidLava, 0.4F, 6, 0xFF350C);
Lightwell.addLiquefaction(devilDust, liquidLava, 0.8F, 10, 0xFF350C);
//Mana
Lightwell.addLiquefaction(pastureSeedInfused, liquidMana, 0.4F, 4, 0x00CCCC);
//Ironberry Juice
Lightwell.addLiquefaction(ironberry, liquidIronberry, 0.2F, 2, 0xA0A0A0);

//Glass Lens alt recipe
Altar.addDiscoveryAltarRecipe("internal/altar/alt_lens", glassLens * 2, 150, 50, [null, manaGlassPane, null, manaGlassPane, aquamarine, manaGlassPane, null, manaGlassPane, null]);
StarlightInfusion.addInfusion(manaGlassPane, glassLens * 2, false, 0.4, 50);
Altar.addDiscoveryAltarRecipe("internal/altar/alt_lens_two", glassLens * 4, 200, 60, [null, alfGlassPane, null, alfGlassPane, aquamarine, alfGlassPane, null, alfGlassPane, null]);
StarlightInfusion.addInfusion(alfGlassPane, glassLens * 4, false, 0.2, 60);

//Sextant
Altar.addDiscoveryAltarRecipe("internal/altar/sextant", sextant, 200, 100, [null, glassLens, null, ingotGold, glassLens, ingotGold, livingwoodStick, livingwoodStick, livingwoodStick]);

//Looking glass
Altar.addDiscoveryAltarRecipe("internal/altar/handtelescope", lookingGlass, 200, 100, [null, livingwoodStick, glassLens, livingwoodStick, ingotGold, livingwoodStick, livingwood, livingwoodStick, null]);

//telescope
Altar.addAttunementAltarRecipe("internal/altar/telescope", telescope, 1000, 300, [null, lookingGlass, null, ingotGold, livingwood, ingotGold, livingwoodStick, livingwoodStick, livingwoodStick, null, null, null, null]);

//Starlight Infuser
Altar.addConstellationAltarRecipe("internal/altar/starlightinfuser", starlightInfuser, 3200, 500, [runeStarlight, ingotStarmetal, runeStarlight, aquamarine, liquidStarlight, aquamarine, ingotBronze, marbleRuned, ingotBronze, null, null, marbleChiseled, marbleChiseled, null, null, marbleEngraved, marbleEngraved, marblePillar, marblePillar, marblePillar, marblePillar]);

//Attunement Altar
Altar.addAttunementAltarRecipe("internal/altar/attunementaltar", attunementAltar, 1000, 300, [null, rockCrystalAny, null, ingotStarmetal, runeStarlight, ingotStarmetal, marbleRuned, spectralRelay, marbleRuned, aquamarine, aquamarine, marbleRuned, marbleRuned]);

//spectral relay
Altar.addDiscoveryAltarRecipe("internal/altar/attunementrelay", spectralRelay, 200, 100, [null, null, null, nuggetGold, glassLens, nuggetGold, infusedWood, marbleAny, infusedWood]);