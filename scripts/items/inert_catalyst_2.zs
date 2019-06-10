#loader contenttweaker

//Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var inertCatalyst = VanillaFactory.createBlock("catalyst_inert_2", <blockmaterial:rock>);
inertCatalyst.setLightOpacity(3);
inertCatalyst.setLightValue(0);
inertCatalyst.setBlockHardness(8.0);
inertCatalyst.setBlockResistance(8.0);
inertCatalyst.setToolClass("pickaxe");
inertCatalyst.setToolLevel(0);
inertCatalyst.setBlockSoundType(<soundtype:stone>);
inertCatalyst.register();