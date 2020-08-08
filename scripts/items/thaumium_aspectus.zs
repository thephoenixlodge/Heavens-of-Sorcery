#loader contenttweaker

////Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var thaumAspectus = VanillaFactory.createItem("thaumium_aspectus");
thaumAspectus.maxStackSize = 64;
thaumAspectus.rarity = "common";
thaumAspectus.register();