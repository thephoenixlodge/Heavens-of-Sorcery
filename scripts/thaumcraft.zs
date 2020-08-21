////imports
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.ArcaneWorkbench;
import thaumcraft.aspect.CTAspectStack;
import crafttweaker.block.IBlock;
import moretweaker.betweenlands.Animator;

////variables
//aspects
val aer = <aspect:aer>;
val ignis = <aspect:ignis>;
val aqua = <aspect:aqua>;
val terra = <aspect:terra>;
val ordo = <aspect:ordo>;
val perditio = <aspect:perditio>;

val thaumonomicon = <thaumcraft:thaumonomicon>;
val arcaneWorkbench = <thaumcraft:arcane_workbench>;
val weedwoodCraftingTable = <thebetweenlands:weedwood_workbench>;
val weedwoodCraftingTableBlock = weedwoodCraftingTable as IBlock;
val book = <minecraft:book>;
val enchantedFabric = <thaumcraft:fabric>;
val manaweave = <botania:manaresource:22>;
val feyLeather = <roots:fey_leather>;
val magicSilk = <ebwizardry:magic_silk>;
val itemString = <minecraft:string>;
val goldenThread = <bewitchment:golden_thread>;

//tweak thaumonomicon transformation
SalisMundus.removeSingleConversion(thaumonomicon);
Animator.addRecipe(book, 16, 20, thaumonomicon);

//tweak arcane worktable transformation
SalisMundus.removeSingleConversion(arcaneWorkbench);
SalisMundus.addSingleConversion(weedwoodCraftingTableBlock, arcaneWorkbench);

//change enchanted fabric recipe
ArcaneWorkbench.removeRecipe(enchantedFabric);
ArcaneWorkbench.registerShapedRecipe("EnchantedFabric", "UNLOCKINFUSION", 5, [], enchantedFabric * 2, [[feyLeather, itemString, feyLeather], [manaweave, magicSilk, manaweave], [feyLeather, itemString, feyLeather]]);
ArcaneWorkbench.registerShapedRecipe("enchanted_fabric_golden", "UNLOCKINFUSION", 5, [], enchantedFabric * 4, [[feyLeather, goldenThread, feyLeather], [manaweave, magicSilk, manaweave], [feyLeather, goldenThread, feyLeather]]);