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

//remove extra amethyst from the oredict
oreAmethyst.remove(amethystWings);
oreAmethyst.remove(amethystBW);
recipes.remove(amethystBW);
recipes.remove(blockAmethystBW);
oreOreAmethyst.remove(amethystoreBW);
oreOreAmethyst.remove(amethystoreWings);

//remove I&F Sapphire from oredict, and remove recipes for the block
oreSapphire.remove(sapphireIF);
recipes.remove(sapphireIF);
recipes.remove(blockSapphireIF);
oreOreSapphire.remove(sapphireOreIF);