#loader contenttweaker

////Imports
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var runeStarlight = VanillaFactory.createItem("rune_starlight");
runeStarlight.maxStackSize = 64;
runeStarlight.rarity = "common";
runeStarlight.register();