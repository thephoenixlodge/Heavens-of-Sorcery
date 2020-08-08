////imports
import mods.embers.Melter;
import mods.embers.Stamper;
import mods.embers.Alchemy;


////variables
val emberShard = <embers:shard_ember>;
//stamps
val stampBar = <embers:stamp_bar>;
val stampNugget = <soot:stamp_nugget>;
val stampPlate = <embers:stamp_plate>;
val stampGear = <embers:stamp_gear>;
//thaumium
val ingotThaumium = <thaumcraft:ingot>;
val nuggetThaumium = <thaumcraft:nugget:6>;
val blockThaumium = <thaumcraft:metal_thaumium>;
val plateThaumium = <thaumcraft:plate:2>;
val gearThaumium = <mystgears:gear_thaumium>;
val moltenThaumium = <liquid:thaumium_molten>;
val aspectusThaumium = <contenttweaker:thaumium_aspectus>;
//brass
val ingotBrass = <thaumcraft:ingot:2>;
val nuggetBrass = <thaumcraft:nugget:8>;
val blockBrass = <thaumcraft:metal_brass>;
val plateBrass = <thaumcraft:plate>;
val gearBrass = <thaumicperiphery:gear_brass>;
val moltenBrass = <liquid:alchemical_brass_molten>;
//voidmetal
val ingotVoid = <thaumcraft:ingot:1>;
val nuggetVoid = <thaumcraft:nugget:7>;
val blockVoid = <thaumcraft:metal_void>;
val plateVoid = <thaumcraft:plate:3>;
val gearVoid = <mystgears:gear_void>;
val moltenVoid = <liquid:void_metal_molten>;
//coldiron
val ingotColdIron = <bewitchment:cold_iron_ingot>;
val nuggetColdIron = <bewitchment:cold_iron_nugget>;
val blockColdIron = <ore:blockColdIron>;
val plateColdIron = <bewitchment:cold_iron_plate>;
val moltenColdIron = <liquid:cold_iron_molten>;

//thaumium
Melter.add(moltenThaumium * 144, ingotThaumium);
Melter.add(moltenThaumium * 16, nuggetThaumium);
Melter.add(moltenThaumium * 1296, blockThaumium);
Melter.add(moltenThaumium * 144, plateThaumium);
Stamper.add(ingotThaumium, moltenThaumium * 144, stampBar);
Stamper.add(nuggetThaumium, moltenThaumium * 16, stampNugget);
Stamper.add(plateThaumium, moltenThaumium * 144, stampPlate);
Stamper.add(gearThaumium, moltenThaumium * 288, stampGear);
Stamper.add(aspectusThaumium, moltenThaumium * 144, stampPlate, emberShard);
Alchemy.addAspect("thaumium", aspectusThaumium);

//brass
Melter.add(moltenBrass * 144, ingotBrass);
Melter.add(moltenBrass * 16, nuggetBrass);
Melter.add(moltenBrass * 1296, blockBrass);
Melter.add(moltenBrass * 144, plateBrass);
Stamper.add(ingotBrass, moltenBrass * 144, stampBar);
Stamper.add(nuggetBrass, moltenBrass * 16, stampNugget);
Stamper.add(plateBrass, moltenBrass * 144, stampPlate);
Stamper.add(gearBrass, moltenBrass * 288, stampGear);

//void metal
Melter.add(moltenVoid * 144, ingotVoid);
Melter.add(moltenVoid * 16, nuggetVoid);
Melter.add(moltenVoid * 1296, blockVoid);
Melter.add(moltenVoid * 144, plateVoid);
Stamper.add(ingotVoid, moltenVoid * 144, stampBar);
Stamper.add(nuggetVoid, moltenVoid * 16, stampNugget);
Stamper.add(plateVoid, moltenVoid * 144, stampPlate);
Stamper.add(gearVoid, moltenVoid * 288, stampGear);

//cold iron
Melter.add(moltenColdIron * 144, ingotColdIron);
Melter.add(moltenColdIron * 16, nuggetColdIron);
Melter.add(moltenColdIron * 1296, blockColdIron);
Melter.add(moltenColdIron * 144, plateColdIron);
Stamper.add(ingotColdIron, moltenColdIron * 144, stampBar);
Stamper.add(nuggetColdIron, moltenColdIron * 16, stampNugget);
Stamper.add(plateColdIron, moltenColdIron * 144, stampPlate);