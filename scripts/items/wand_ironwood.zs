#loader contenttweaker

////Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var wandIronwood = VanillaFactory.createItem("ironwood_wand_one");
wandIronwood.maxStackSize = 1;
wandIronwood.rarity = "common";
wandIronwood.register();