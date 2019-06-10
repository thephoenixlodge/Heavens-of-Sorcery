#loader contenttweaker

//Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var oreMetallia = VanillaFactory.createBlock("metallia_ore", <blockmaterial:rock>);
oreMetallia.setLightOpacity(3);
oreMetallia.setBlockHardness(6.0);
oreMetallia.setBlockResistance(8.0);
oreMetallia.setToolClass("pickaxe");
oreMetallia.setToolLevel(1);
oreMetallia.setBlockSoundType(<soundtype:stone>);
oreMetallia.register();