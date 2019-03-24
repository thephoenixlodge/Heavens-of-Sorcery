////Imports
import mods.astralsorcery.LightTransmutation;
import mods.botania.PureDaisy;

////Variables
val oreIronMW = <mist:iron_ore>;
val oreStarmetal = <astralsorcery:blockcustomore:1>;
val marble = <astralsorcery:blockmarble>;
val holystone = <aether_legacy:holystone>;
val aquamarineShale = <astralsorcery:blockcustomsandore>;
val quicksoil = <aether_legacy:quicksoil>;

//Starmetal able to be made from the Iron Ore from the Misty World
LightTransmutation.addTransmutation(oreIronMW, oreStarmetal, 100);

//Holystone to marble transmutation
LightTransmutation.addTransmutation(holystone, marble, 20);
PureDaisy.addRecipe(holystone, marble);

//Quicksoil to Aquamarine Shale
LightTransmutation.addTransmutation(quicksoil, aquamarineShale, 80);
PureDaisy.addRecipe(quicksoil, aquamarineShale);