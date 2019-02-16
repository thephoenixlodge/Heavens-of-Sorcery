#loader contenttweaker

////Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var worldCore = VanillaFactory.createItem("otherworlds_core");
worldCore.maxStackSize = 1;
worldCore.rarity = "rare";
worldCore.register();