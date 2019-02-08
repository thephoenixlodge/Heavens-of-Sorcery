////Imports
import mods.chisel.Carving;

////Variables
val blockSapphireIF = <iceandfire:sapphire_block>;
val blockSapphireAW = <arcaneworld:block_sapphire>;

//Add group for Sapphire Blocks
Carving.addGroup("blockSapphire");
Carving.addVariation("blockSapphire", blockSapphireAW);
Carving.addVariation("blockSapphire", blockSapphireIF);