////Imports
import mods.astralsorcery.LightTransmutation;

////Variables
val oreIronMW = <mist:iron_ore>;
val oreStarmetal = <astralsorcery:blockcustomore:1>;
val marble = <astralsorcery:blockmarble>;
val holystone = <aether_legacy:holystone>;

//Starmetal able to be made from the Iron Ore from the Misty World
LightTransmutation.addTransmutation(oreIronMW, oreStarmetal, 100);

//Holystone to marble transmutation
LightTransmutation.addTransmutation(holystone, marble, 20);