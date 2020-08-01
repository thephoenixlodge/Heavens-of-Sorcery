#loader contenttweaker

////Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var reforgeToken = VanillaFactory.createItem("token_reforge");
reforgeToken.maxStackSize = 64;
reforgeToken.rarity = "rare";
reforgeToken.register();