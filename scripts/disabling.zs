////Imports

////Vars
var oreAmethyst = <ore:gemAmethyst>;
val wingsAmethyst = <wings:amethyst>;
val blockSapphireIF = <iceandfire:sapphire_block>;
val sapphireIF = <iceandfire:sapphire_gem>;
val oreSapphire = <ore:gemSappire>;

//remove wings amethyst from the oredict
oreAmethyst.remove(wingsAmethyst);

//remove I&F Sapphire from oredict, and remove recipes for the block
oreSapphire.remove(sapphireIF);
recipes.remove(sapphireIF);
recipes.remove(blockSapphireIF);