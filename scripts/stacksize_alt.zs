#priority -1

import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

var mapSizeChange = {
    64 : 8192,
    16 : 4096,
    8 : 2048
} as int[int];

for item in game.items {
    if (item.name != "tile.air") {
        var stackSize = item.makeStack().maxStackSize;
        for old, new in mapSizeChange {
            if (stackSize == old) {
                item.makeStack().maxStackSize = new;
            }
        }
    }
}

<wizardry:nacre_pearl>.maxStackSize = 2048;