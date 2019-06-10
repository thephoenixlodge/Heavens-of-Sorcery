#loader contenttweaker

//Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var starlitCatalyst = VanillaFactory.createBlock("catalyst_starlit", <blockmaterial:rock>);
starlitCatalyst.setLightOpacity(3);
starlitCatalyst.setLightValue(1);
starlitCatalyst.setBlockHardness(8.0);
starlitCatalyst.setBlockResistance(8.0);
starlitCatalyst.setToolClass("pickaxe");
starlitCatalyst.setToolLevel(2);
starlitCatalyst.setBlockSoundType(<soundtype:stone>);
starlitCatalyst.register();