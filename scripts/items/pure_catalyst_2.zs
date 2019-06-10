#loader contenttweaker

//Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var pureCatalyst = VanillaFactory.createBlock("catalyst_pure_2", <blockmaterial:rock>);
pureCatalyst.setLightOpacity(3);
pureCatalyst.setLightValue(0.5);
pureCatalyst.setBlockHardness(8.0);
pureCatalyst.setBlockResistance(8.0);
pureCatalyst.setToolClass("pickaxe");
pureCatalyst.setToolLevel(1);
pureCatalyst.setBlockSoundType(<soundtype:stone>);
pureCatalyst.register();