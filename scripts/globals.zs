#priority 100

////Imports
import crafttweaker.item.IItemStack;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemDefinition;


function setNewName(item as IItemStack, newName as string) {
	var unlocName = item.definition.name ~ ".name";
	game.setLocalization("en_us", unlocName, newName);
}

function checkDuplicate(itemArray as IItemStack[]) as bool{
	var duplicate = false;
	var itemsChecked = [] as IItemStack[];
    for i, input in itemArray {
        if(itemsChecked has input) {
            duplicate = true;
            break;
        }
        itemsChecked += input;
    }
    return duplicate;
}