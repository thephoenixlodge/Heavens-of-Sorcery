////Imports
import mods.jei.JEI;

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

val bwStone = <betterbuilderswands:wandstone>;
val bookNA = <patchouli:guide_book>.withTag({"patchouli:book": "naturesaura:book"});
val bitChiselStone = <chiselsandbits:chisel_stone>;
val bitChiselGold = <chiselsandbits:chisel_gold>;

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
//recipes.remove(silverSwordBW);
recipes.remove(silverSwordEm);
recipes.remove(silverSwordMy);
/*recipes.remove(silverHelmetIF);
recipes.remove(silverChestIF);
recipes.remove(silverLegsIF);
recipes.remove(silverBootsIF);*/

//stone builder's wand
recipes.remove(bwStone);

//NA book (because reimplemented to update info)
recipes.removeByRecipeName("naturesaura:book");

//stone bit chisel
recipes.remove(bitChiselStone);
recipes.remove(bitChiselGold);