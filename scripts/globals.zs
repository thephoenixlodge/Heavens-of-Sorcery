#priority 100

////Imports
import crafttweaker.item.IItemStack;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemDefinition;


function setNewName(item as IItemStack, newName as string) {
	var unlocName = item.definition.name ~ ".name";
	game.setLocalization("en_us", unlocName, newName);
}