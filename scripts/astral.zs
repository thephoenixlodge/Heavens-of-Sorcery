////Imports
import mods.astralsorcery.LightTransmutation;

////Variables
val oreIronMW = <mist:iron_ore>;
val oreStarmetal = <astralsorcery:blockcustomore:1>;

//Starmetal able to be made from the Iron Ore from the Misty World
LightTransmutation.addTransmutation(oreIronMW, oreStarmetal, 100);