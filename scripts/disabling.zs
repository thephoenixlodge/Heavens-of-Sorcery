////Imports

////Vars
//Amethyst
val oreAmethyst = <ore:gemAmethyst>;
val amethystWings = <wings:amethyst>;
val amethystBW = <bewitchment:amethyst>;
val blockAmethystBW = <bewitchment:block_of_amethyst>;
val amethystOreBW = <bewitchment:amethyst_ore>;
val amethystOreWings = <wings:amethyst_ore>;
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
//val nuggetSilverIF = <iceandfire:silver_nugget>;
val nuggetLeadOre = <ore:nuggetLead>;
val nuggetLeadTC = <thaumcraft:nugget:4>;
val nuggetCopperOre = <ore:nuggetCopper>;
val nuggetCopperTC = <thaumcraft:nugget:1>;
val nuggetIronOre = <ore:nuggetIron>;
val nuggetIronTC = <thaumcraft:nugget>;
val nuggetTinOre = <ore:nuggetTin>;
val nuggetTinTC = <thaumcraft:nugget:2>;
//Silver ore and ingots
val ingotSilverOre = <ore:ingotSilver>;
val ingotSilverBW = <bewitchment:silver_ingot>;
//val ingotSilverIF = <iceandfire:silver_ingot>;
val oreSilverOre = <ore:oreSilver>;
val oreSilverBW = <bewitchment:silver_ore>;
//val oreSilverIF = <iceandfire:silver_ore>;
//val blockSilverIF = <iceandfire:silver_block>;
val blockSilverBW = <bewitchment:block_of_silver>;

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

//remove extra amethyst from the oredict
oreAmethyst.remove(amethystWings);
oreAmethyst.remove(amethystBW);
recipes.remove(amethystBW);
recipes.remove(blockAmethystBW);
oreOreAmethyst.remove(amethystOreBW);
oreOreAmethyst.remove(amethystOreWings);

//remove I&F Sapphire from oredict, and remove recipes for the block
//oreSapphire.remove(sapphireIF);
//recipes.remove(sapphireIF);
//recipes.remove(blockSapphireIF);
//oreOreSapphire.remove(sapphireOreIF);

//Nugget oredicts
nuggetSilverOre.remove(nuggetSilverTC);
nuggetSilverOre.remove(nuggetSilverBW);
//nuggetSilverOre.remove(nuggetSilverIF);
recipes.remove(nuggetSilverTC);
recipes.remove(nuggetSilverBW);
//recipes.remove(nuggetSilverIF);
furnace.remove(nuggetSilverBW);
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

//Silver
ingotSilverOre.remove(ingotSilverBW);
//ingotSilverOre.remove(ingotSilverIF);
recipes.remove(ingotSilverBW);
//recipes.remove(ingotSilverIF);
oreSilverOre.remove(oreSilverBW);
//oreSilverOre.remove(oreSilverIF);
//recipes.remove(blockSilverIF);
recipes.remove(blockSilverBW);
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