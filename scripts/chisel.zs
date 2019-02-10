////Imports
import mods.chisel.Carving;

////Variables
//Sapphire blocks
val blockSapphireIF = <iceandfire:sapphire_block>;
val blockSapphireAW = <arcaneworld:block_sapphire>;
//Thatch
val thatchQuark = <quark:thatch>;
val thatchEarthworks = <earthworks:block_thatch>;
val thatchZoo = <zoocraftdiscoveries:roof_thatching>;
val thatchZoo2 = <zoocraftdiscoveries:roof_thatching:1>;
val thatchZoo3 = <zoocraftdiscoveries:roof_thatching:2>;
val thatchZoo4 = <zoocraftdiscoveries:roof_thatching:3>;
val thatchBetweenlands = <thebetweenlands:thatch>;
val oreThatch = <ore:blockThatch>;

//Add group for Sapphire Blocks
Carving.addGroup("blockSapphire");
Carving.addVariation("blockSapphire", blockSapphireAW);
Carving.addVariation("blockSapphire", blockSapphireIF);

//Add group, disable other recipes for thatch blocks and add oredict
recipes.remove(thatchEarthworks);
recipes.remove(thatchZoo);
recipes.remove(thatchZoo2);
recipes.remove(thatchZoo3);
recipes.remove(thatchZoo4);
oreThatch.add(thatchQuark);
oreThatch.add(thatchEarthworks);
oreThatch.add(thatchZoo);
oreThatch.add(thatchZoo2);
oreThatch.add(thatchZoo3);
oreThatch.add(thatchZoo4);
oreThatch.add(thatchBetweenlands);
Carving.addGroup("blockThatch");
Carving.addVariation("blockThatch", thatchQuark);
Carving.addVariation("blockThatch", thatchEarthworks);
Carving.addVariation("blockThatch", thatchZoo);
Carving.addVariation("blockThatch", thatchZoo2);
Carving.addVariation("blockThatch", thatchZoo3);
Carving.addVariation("blockThatch", thatchZoo4);
Carving.addVariation("blockThatch", thatchBetweenlands);