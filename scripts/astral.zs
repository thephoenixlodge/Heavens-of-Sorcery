////Imports
import mods.astralsorcery.LightTransmutation;
import mods.astralsorcery.Altar;
import mods.astralsorcery.Utils;
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
val holystone = <aether_legacy:holystone>;
val aquamarineShale = <astralsorcery:blockcustomsandore>;
val quicksoil = <aether_legacy:quicksoil>;
val luminousTable = <astralsorcery:blockaltar>;
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
val lightWell = <astralsorcery:blockwell>;

//Starmetal able to be made from the Iron Ore from the Misty World
LightTransmutation.addTransmutation(oreIronMW, oreStarmetal, 100);

//Holystone to marble transmutation
LightTransmutation.addTransmutation(holystone, marble, 20);

//Quicksoil to Aquamarine Shale
LightTransmutation.addTransmutation(quicksoil, aquamarineShale, 80);
PureDaisy.addRecipe(quicksoil, aquamarineShale);

//Ritual to craft Luminous Crafting Table
ArcaneWorld.createRitualCreateItem("astral_table", "Attune to Starlight", luminousTable, craftingTable, patFrameLivingwood, sootyMarble, dictMarble, dictMarble);

//Ritual to craft resonating wand
ArcaneWorld.createRitualCreateItem("astral_wand", "Attune to Starlight", resonatingWand, ironwoodWand, dictMarble, aquamarine, aquamarine, manaPearl);
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");

//Tweak Linking wand recipe
Altar.addAttunementAltarRecipe("internal/altar/tool_linking", linkingTool, 1000, 300, [livingwoodStick, aquamarine, manaPearl, livingwoodStick, rockCrystalAny, aquamarine, wisdomWood, livingwoodStick, livingwoodStick, null, null, livingwood, null]);

//Tweak lightwell recipe
Altar.addDiscoveryAltarRecipe("internal/altar/lightwell", lightWell, 200, 100, [marbleRuned, rockCrystalAny, marbleRuned, marbleChiseled, runeAir, marbleChiseled, aquamarine, marbleRuned, aquamarine]);