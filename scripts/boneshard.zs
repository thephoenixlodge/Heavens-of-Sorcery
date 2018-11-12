#loader contenttweaker

////Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var boneShard = VanillaFactory.createItem("boneshard");
boneShard.maxStackSize = 64;
boneShard.rarity = "common";
boneShard.register();