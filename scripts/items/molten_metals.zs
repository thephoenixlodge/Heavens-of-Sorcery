#loader contenttweaker

////Imports
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Color;


var moltenMetal = MaterialSystem.getPartBuilder().setName("molten").setPartType(MaterialSystem.getPartType("fluid")).build();

//metals to be molten
var thaumium = MaterialSystem.getMaterialBuilder().setName("Thaumium").setColor(Color.fromHex("50427B")).build();
var brass = MaterialSystem.getMaterialBuilder().setName("Alchemical Brass").setColor(Color.fromHex("D2983A")).build();
var voidmetal = MaterialSystem.getMaterialBuilder().setName("Void Metal").setColor(Color.fromHex("1D0C30")).build();
var coldIron = MaterialSystem.getMaterialBuilder().setName("Cold Iron").setColor(Color.fromHex("6E7273")).build();

var list = [thaumium, brass, voidmetal, coldIron] as Material[];

for material in list {
	material.registerPart("molten");
}