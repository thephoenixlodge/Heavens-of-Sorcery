////Imports

////Vars
//Amethyst
val oreAmethyst = <ore:gemAmethyst>;
val amethystWings = <wings:amethyst>;
val amethystBW = <bewitchment:gem:7>;
val blockAmethystBW = <bewitchment:gem_block:7>;
val amethystOreBW = <bewitchment:gem_ore:7>;
val amethystOreWings = <wings:amethyst_ore>;
val oreOreAmethyst = <ore:oreAmethyst>;
//Sapphire
val blockSapphireIF = <iceandfire:sapphire_block>;
val sapphireIF = <iceandfire:sapphire_gem>;
val oreSapphire = <ore:gemSappire>;
val sapphireOreIF = <iceandfire:sapphire_ore>;
val oreOreSapphire = <ore:oreSapphire>;
//nuggets
val nuggetSilverOre = <ore:nuggetSilver>;
val nuggetSilverTC = <thaumcraft:nugget:3>;
val nuggetSilverBW = <bewitchment:silver_nugget>;
val nuggetSilverIF = <iceandfire:silver_nugget>;
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
val ingotSilverIF = <iceandfire:silver_ingot>;
val oreSilverOre = <ore:oreSilver>;
val oreSilverBW = <bewitchment:silver_ore>;
val oreSilverIF = <iceandfire:silver_ore>;
val blockSilverIF = <iceandfire:silver_block>;
val blockSilverBW = <bewitchment:silver_block>;

val plateIronTC = <thaumcraft:plate:1>;
val plateIronOre = <ore:plateIron>;

//remove extra amethyst from the oredict
oreAmethyst.remove(amethystWings);
oreAmethyst.remove(amethystBW);
recipes.remove(amethystBW);
recipes.remove(blockAmethystBW);
oreOreAmethyst.remove(amethystOreBW);
oreOreAmethyst.remove(amethystOreWings);

//remove I&F Sapphire from oredict, and remove recipes for the block
oreSapphire.remove(sapphireIF);
recipes.remove(sapphireIF);
recipes.remove(blockSapphireIF);
oreOreSapphire.remove(sapphireOreIF);

//Nugget oredicts
nuggetSilverOre.remove(nuggetSilverTC);
nuggetSilverOre.remove(nuggetSilverBW);
nuggetSilverOre.remove(nuggetSilverIF);
recipes.remove(nuggetSilverTC);
recipes.remove(nuggetSilverBW);
recipes.remove(nuggetSilverIF);
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
ingotSilverOre.remove(ingotSilverIF);
recipes.remove(ingotSilverBW);
recipes.remove(ingotSilverIF);
oreSilverOre.remove(oreSilverBW);
oreSilverOre.remove(oreSilverIF);
recipes.remove(blockSilverIF);
recipes.remove(blockSilverBW);
recipes.removeByRecipeName("chisel:uncraft_blocksilver");

//TC Iron plate
recipes.remove(plateIronTC);
plateIronOre.remove(plateIronTC);