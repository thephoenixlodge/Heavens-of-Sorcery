////Imports
import mods.jei.JEI;
import mods.roots.Mortar;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.IItemStack;

////Vars
//Amethyst
val oreAmethyst = <ore:gemAmethyst>;
val amethystWings = <wings:amethyst>;
val amethystBW = <bewitchment:amethyst>;
val amethystMW = <mysticalworld:amethyst_gem>;
val blockAmethystBW = <bewitchment:block_of_amethyst>;
val amethystOreBW = <bewitchment:amethyst_ore>;
val amethystOreWings = <wings:amethyst_ore>;
val amethystOreMW = <mysticalworld:amethyst_ore>;
val oreOreAmethyst = <ore:oreAmethyst>;
//Sapphire
//val blockSapphireIF = <iceandfire:sapphire_block>;
//val sapphireIF = <iceandfire:sapphire_gem>;
val oreSapphire = <ore:gemSappire>;
//val sapphireOreIF = <iceandfire:sapphire_ore>;
val oreOreSapphire = <ore:oreSapphire>;
//nuggets
val nuggetSilverOre = <ore:nuggetSilver>;
val nuggetSilverTC = <thaumcraft:nugget:3>;
val nuggetSilverBW = <bewitchment:silver_nugget>;
val nuggetSilverMW = <mysticalworld:silver_nugget>;
//val nuggetSilverIF = <iceandfire:silver_nugget>;
val nuggetLeadOre = <ore:nuggetLead>;
val nuggetLeadTC = <thaumcraft:nugget:4>;
val nuggetCopperOre = <ore:nuggetCopper>;
val nuggetCopperTC = <thaumcraft:nugget:1>;
val nuggetCopperMW = <mysticalworld:copper_nugget>;
val nuggetIronOre = <ore:nuggetIron>;
val nuggetIronTC = <thaumcraft:nugget>;
val nuggetTinOre = <ore:nuggetTin>;
val nuggetTinTC = <thaumcraft:nugget:2>;
//copper
val ingotCopperOre = <ore:ingotCopper>;
val ingotCopperMW = <mysticalworld:copper_ingot>;
val blockCopperMW = <mysticalworld:copper_block>;
val oreCopperOre = <ore:oreCopper>;
val oreCopperMW = <mysticalworld:copper_ore>;
//Silver ore and ingots
val ingotSilverOre = <ore:ingotSilver>;
val ingotSilverBW = <bewitchment:silver_ingot>;
val ingotSilverMW = <mysticalworld:silver_ingot>;
//val ingotSilverIF = <iceandfire:silver_ingot>;
val oreSilverOre = <ore:oreSilver>;
val oreSilverBW = <bewitchment:silver_ore>;
val oreSilverMW = <mysticalworld:silver_ore>;
//val oreSilverIF = <iceandfire:silver_ore>;
//val blockSilverIF = <iceandfire:silver_block>;
val blockSilverBW = <bewitchment:block_of_silver>;
val blockSilverMW = <mysticalworld:silver_block>;
val plateSilver = <bewitchment:silver_plate>;
val orePlateSilver = <ore:plateSilver>;
val plateIronTC = <thaumcraft:plate:1>;
val plateIronOre = <ore:plateIron>;
//copper tools
val copperAxe = <mysticalworld:copper_axe>;
val copperHoe = <mysticalworld:copper_hoe>;
val copperPickaxe = <mysticalworld:copper_pickaxe>;
val copperShovel = <mysticalworld:copper_shovel>;
val copperSword = <mysticalworld:copper_sword>;
//silver tools/armour
val silverPickaxeBW = <bewitchment:silver_pickaxe>;
val silverPickaxeEm = <embers:pickaxe_silver>;
val silverPickaxeMy = <mysticalworld:silver_pickaxe>;
val silverAxeBW = <bewitchment:silver_axe>;
val silverAxeEm = <embers:axe_silver>;
val silverAxeMy = <mysticalworld:silver_axe>;
val silverShovelBW = <bewitchment:silver_shovel>;
val silverShovelEm = <embers:shovel_silver>;
val silverShovelMy = <mysticalworld:silver_shovel>;
val silverHoeBW = <bewitchment:silver_hoe>;
val silverHoeEm = <embers:hoe_silver>;
val silverHoeMy = <mysticalworld:silver_hoe>;
val silverSwordBW = <bewitchment:silver_sword>;
val silverSwordEm = <embers:sword_silver>;
val silverSwordMy = <mysticalworld:silver_sword>;
/*val silverHelmetIF = <iceandfire:armor_silver_metal_helmet>;
val silverChestIF = <iceandfire:armor_silver_metal_chestplate>;
val silverLegsIF = <iceandfire:armor_silver_metal_leggings>;
val silverBootsIF = <iceandfire:armor_silver_metal_boots>;*/
val silverHelmetBW = <bewitchment:silver_helmet>;
val silverChestBW = <bewitchment:silver_chestplate>;
val silverLegsBW = <bewitchment:silver_leggings>;
val silverBootsBW = <bewitchment:silver_boots>;

val bwStone = <betterbuilderswands:wandstone>;
val bookNA = <patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"});
val bitChiselStone = <chiselsandbits:chisel_stone>;
val bitChiselGold = <chiselsandbits:chisel_gold>;

val resonatingGemKathairis = <kathairis:mysticgem>;

//crops
val tomatoCuisine = <cuisine:crops:4>;
val oreCropTomato = <ore:cropTomato>;
val oreListAllVeggie = <ore:listAllveggie>;
val flourRoots = <roots:flour>;
val bread = <minecraft:bread>;
//other
val magicCrystal =<ebwizardry:magic_crystal>;
val skyrootSword = <aether_legacy:skyroot_sword>;

//tallow
val oreTallow = <ore:tallow>;
val oreWax = <ore:wax>;
val tallowBW = <bewitchment:tallow>;
val tallowMist = <mist:tallow>;
val blockTallow = <mist:tallow_block>;
val tallowRustic = <rustic:tallow>;
val tableTallow = LootTweaker.getTable("mist:entities/tallow");
val tableTallowMaxi = LootTweaker.getTable("mist:entities/tallow_maxi");
val poolsTallowNames = [
	"tallow_1",
	"tallow_2",
	"tallow_3",
	"tallow_4"
] as string[];
var poolsTallow = [] as LootPool[];
var poolsTallowMaxi = [] as LootPool[];
for pool in poolsTallowNames {
	poolsTallow += tableTallow.getPool(pool);
	poolsTallowMaxi += tableTallowMaxi.getPool(pool);
}


//misty world branches
var branches = [
	<mist:acacia_branch>,
	<mist:acacia_branch:3>,
	<mist:aspen_branch>,
	<mist:aspen_branch:3>,
	<mist:a_tree_branch>,
	<mist:a_tree_branch:3>,
	<mist:birch_branch>,
	<mist:birch_branch:3>,
	<mist:oak_branch>,
	<mist:oak_branch:3>,
	<mist:pine_branch>,
	<mist:pine_branch:3>,
	<mist:poplar_branch>,
	<mist:poplar_branch:3>,
	<mist:snow_branch>,
	<mist:snow_branch:3>,
	<mist:spruce_branch>,
	<mist:spruce_branch:3>,
	<mist:s_tree_branch>,
	<mist:s_tree_branch:3>,
	<mist:t_tree_branch>,
	<mist:t_tree_branch:3>,
	<mist:willow_branch>,
	<mist:willow_branch:3>,
	<mist:r_tree_branch>,
	<mist:r_tree_branch:3>
] as IItemStack[];
val stick = <ore:stickWood>;

//MW rubber
val rubberMW = <mist:rubber>;

//remove extra amethyst from the oredict
oreAmethyst.remove(amethystWings);
oreAmethyst.remove(amethystBW);
oreAmethyst.remove(amethystMW);
recipes.remove(amethystBW);
recipes.remove(amethystMW);
recipes.remove(blockAmethystBW);
oreOreAmethyst.remove(amethystOreBW);
oreOreAmethyst.remove(amethystOreWings);
oreOreAmethyst.remove(amethystOreMW);

//remove I&F Sapphire from oredict, and remove recipes for the block
//oreSapphire.remove(sapphireIF);
//recipes.remove(sapphireIF);
//recipes.remove(blockSapphireIF);
//oreOreSapphire.remove(sapphireOreIF);

//Nugget oredicts
nuggetSilverOre.remove(nuggetSilverTC);
nuggetSilverOre.remove(nuggetSilverBW);
nuggetSilverOre.remove(nuggetSilverMW);
//nuggetSilverOre.remove(nuggetSilverIF);
recipes.remove(nuggetSilverTC);
recipes.remove(nuggetSilverBW);
//recipes.remove(nuggetSilverIF);
furnace.remove(nuggetSilverBW);
recipes.remove(nuggetSilverMW);
recipes.removeByRecipeName("thaumcraft:silvernuggetstoingot");
nuggetLeadOre.remove(nuggetLeadTC);
recipes.remove(nuggetLeadTC);
recipes.removeByRecipeName("thaumcraft:leadnuggetstoingot");
nuggetCopperOre.remove(nuggetCopperTC);
recipes.remove(nuggetCopperTC);
recipes.removeByRecipeName("thaumcraft:coppernuggetstoingot");
nuggetTinOre.remove(nuggetTinTC);
recipes.remove(nuggetTinTC);
recipes.removeByRecipeName("thaumcraft:tinnuggetstoingot");
nuggetIronOre.remove(nuggetIronTC);
recipes.removeByRecipeName("thaumcraft:ironnuggetconvert");

//copper
recipes.remove(blockCopperMW);
recipes.removeByRecipeName("mysticalworld:copper_nugget_to_ingot");
recipes.removeByRecipeName("mysticalworld:copper_block_to_ingot");
recipes.removeByRecipeName("mysticalworld:copper_ingot_to_nugget");
recipes.removeByRecipeName("chisel:uncraft_blockcopper");
nuggetCopperOre.remove(nuggetCopperMW);
ingotCopperOre.remove(ingotCopperMW);
oreCopperOre.remove(oreCopperMW);
furnace.remove(ingotCopperMW);

//Silver
ingotSilverOre.remove(ingotSilverBW);
ingotSilverOre.remove(ingotSilverMW);
//ingotSilverOre.remove(ingotSilverIF);
recipes.remove(ingotSilverBW);
recipes.remove(ingotSilverMW);
furnace.remove(ingotSilverMW);
//recipes.remove(ingotSilverIF);
oreSilverOre.remove(oreSilverBW);
oreSilverOre.remove(oreSilverMW);
//oreSilverOre.remove(oreSilverIF);
//recipes.remove(blockSilverIF);
recipes.remove(blockSilverBW);
recipes.remove(blockSilverMW);
recipes.removeByRecipeName("chisel:uncraft_blocksilver");


//TC Iron plate
recipes.remove(plateIronTC);
plateIronOre.remove(plateIronTC);

//Essentials piston recipe
recipes.removeByRecipeName("essentials:piston");

//Roots book recipe
recipes.removeByRecipeName("roots:book");

//MyW copper tools
recipes.remove(copperAxe);
recipes.remove(copperHoe);
recipes.remove(copperPickaxe);
recipes.remove(copperShovel);
recipes.remove(copperSword);

//silver tools/armour
//recipes.remove(silverPickaxeBW);
recipes.remove(silverPickaxeEm);
recipes.remove(silverPickaxeMy);
//recipes.remove(silverAxeBW);
recipes.remove(silverAxeEm);
recipes.remove(silverAxeMy);
//recipes.remove(silverShovelBW);
recipes.remove(silverShovelEm);
recipes.remove(silverShovelMy);
//recipes.remove(silverHoeBW);
recipes.remove(silverHoeEm);
recipes.remove(silverHoeMy);
recipes.remove(silverSwordBW);
recipes.remove(silverSwordEm);
//recipes.remove(silverSwordMy);
/*recipes.remove(silverHelmetIF);
recipes.remove(silverChestIF);
recipes.remove(silverLegsIF);
recipes.remove(silverBootsIF);*/
recipes.remove(silverHelmetBW);
recipes.remove(silverChestBW);
recipes.remove(silverLegsBW);
recipes.remove(silverBootsBW);

//stone builder's wand
recipes.remove(bwStone);

//NA book (because reimplemented to update info)
recipes.removeByRecipeName("naturesaura:book");

//stone bit chisel
recipes.remove(bitChiselStone);
recipes.remove(bitChiselGold);

//tomato
oreCropTomato.remove(tomatoCuisine);
oreListAllVeggie.remove(tomatoCuisine);

//roots flour
Mortar.removeRecipe(flourRoots);
furnace.remove(bread, flourRoots);

//magic crystal ore smelting
furnace.remove(magicCrystal);

//skyroot sword
recipes.remove(skyrootSword);

//tallow madness
furnace.remove(tallowRustic);
recipes.remove(tallowMist);
recipes.remove(blockTallow);
recipes.addShaped(blockTallow, [[tallowBW, tallowBW], [tallowBW, tallowBW]]);
recipes.addShapeless(tallowBW * 4, [blockTallow]);
oreTallow.remove(tallowMist);
oreTallow.remove(tallowRustic);
oreWax.remove(tallowRustic);
for poolTallow in poolsTallow {
	poolTallow.removeEntry("mist:tallow");
}
for poolTallowMaxi in poolsTallowMaxi {
	poolTallowMaxi.removeEntry("mist:tallow");
}
poolsTallow[0].addItemEntryHelper(tallowBW, 1, 0, [], []);
poolsTallow[1].addItemEntryHelper(tallowBW, 2, 0, [Functions.lootingEnchantBonus(0, 1, 2)], []);
poolsTallow[2].addItemEntryHelper(tallowBW, 1, 0, [Functions.lootingEnchantBonus(0, 1, 2)], []);
poolsTallow[3].addItemEntryHelper(tallowBW, 1, 0, [Functions.setCount(1, 2), Functions.lootingEnchantBonus(0, 1, 3)], []);
poolsTallowMaxi[0].addItemEntryHelper(tallowBW, 1, 0, [Functions.setCount(0, 2)], []);
poolsTallowMaxi[1].addItemEntryHelper(tallowBW, 1, 0, [Functions.setCount(1, 2), Functions.lootingEnchantBonus(0, 1, 2)], []);
poolsTallowMaxi[2].addItemEntryHelper(tallowBW, 1, 0, [Functions.setCount(2, 3), Functions.lootingEnchantBonus(0, 1, 4)], []);
poolsTallowMaxi[3].addItemEntryHelper(tallowBW, 1, 0, [Functions.setCount(2, 4), Functions.lootingEnchantBonus(0, 1, 5)], []);

//remove branches from stick oredict
for branch in branches {
	stick.remove(branch);
}

//MW rubber recipe removal
recipes.remove(rubberMW);

//silver plate
recipes.remove(plateSilver);
orePlateSilver.remove(plateSilver);

//kathairin gem
recipes.remove(resonatingGemKathairis);