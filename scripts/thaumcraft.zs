////imports
import mods.thaumcraft.SalisMundus;
import crafttweaker.block.IBlock;


////variables
val thaumonomicon = <thaumcraft:thaumonomicon>;
val arcaneWorkbench = <thaumcraft:arcane_workbench>;
val weedwoodCraftingTable = <thebetweenlands:weedwood_workbench>;
val weedwoodCraftingTableBlock = weedwoodCraftingTable as IBlock;

//tweak thaumonomicon transformation
SalisMundus.removeSingleConversion(thaumonomicon);

//tweak arcane worktable transformation
SalisMundus.removeSingleConversion(arcaneWorkbench);
SalisMundus.addSingleConversion(weedwoodCraftingTableBlock, arcaneWorkbench);