////imports
import mods.thaumcraft.SalisMundus;
import crafttweaker.block.IBlock;
import moretweaker.betweenlands.Animator;

////variables
val thaumonomicon = <thaumcraft:thaumonomicon>;
val arcaneWorkbench = <thaumcraft:arcane_workbench>;
val weedwoodCraftingTable = <thebetweenlands:weedwood_workbench>;
val weedwoodCraftingTableBlock = weedwoodCraftingTable as IBlock;
val book = <minecraft:book>;

//tweak thaumonomicon transformation
SalisMundus.removeSingleConversion(thaumonomicon);
Animator.addRecipe(book, 16, 20, thaumonomicon);

//tweak arcane worktable transformation
SalisMundus.removeSingleConversion(arcaneWorkbench);
SalisMundus.addSingleConversion(weedwoodCraftingTableBlock, arcaneWorkbench);
