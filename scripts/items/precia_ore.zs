#loader contenttweaker

//Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var orePrecia = VanillaFactory.createBlock("precia_ore", <blockmaterial:rock>);
orePrecia.setLightOpacity(3);
orePrecia.setBlockHardness(6.0);
orePrecia.setBlockResistance(8.0);
orePrecia.setToolClass("pickaxe");
orePrecia.setToolLevel(2);
orePrecia.setBlockSoundType(<soundtype:stone>);
orePrecia.register();