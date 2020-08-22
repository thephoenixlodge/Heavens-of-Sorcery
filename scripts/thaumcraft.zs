////imports
import mods.thaumcraft.SalisMundus;
import mods.thaumcraft.ArcaneWorkbench;
import thaumcraft.aspect.CTAspectStack;
import crafttweaker.block.IBlock;
import moretweaker.betweenlands.Animator;
import mods.DivineFavor;

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
val greatwoodSeed = <dynamictreestc:greatwoodseed>;
val silverwoodSeed = <dynamictreestc:silverwoodseed>;
val inviteTimber = <divinefavor:calling_stone_timber>;
val salisMundus = <thaumcraft:salis_mundus>;
val wispBL = <thebetweenlands:wisp>;
val wisdomSapling = <wizardry:wisdom_sapling>;
val lifeCrystal = <thebetweenlands:life_crystal>;
val ordaniisVial = <thebetweenlands:aspect_vial:*>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Ordaniis"}}]}});
val freiwynnVial = <thebetweenlands:aspect_vial:*>.withTag({blHerbloreAspects: {container: [{aspect: {type: "Freiwynn"}}]}});

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

//Saplings
DivineFavor.addMediumRecipe(greatwoodSeed, [inviteTimber], [wisdomSapling, salisMundus, wispBL]);
DivineFavor.addMediumRecipe(silverwoodSeed, [inviteTimber], [greatwoodSeed, salisMundus, wispBL, lifeCrystal]);