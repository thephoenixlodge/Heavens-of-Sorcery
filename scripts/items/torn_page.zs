#loader contenttweaker

////Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var tornPage = VanillaFactory.createItem("torn_page");
tornPage.maxStackSize = 64;
tornPage.rarity = "common";
tornPage.register();