#loader contenttweaker

////Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var angelHeart = VanillaFactory.createItem("angel_heart");
angelHeart.maxStackSize = 1;
angelHeart.rarity = "rare";
angelHeart.register();