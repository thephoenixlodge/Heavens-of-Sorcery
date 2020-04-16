import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.BloodAltar;
import mods.chisel.Carving;
import crafttweaker.item.IItemStack;

val marbleDark = <tombstone:dark_marble>;
val marbleSooty = <astralsorcery:blockblackmarble>;
val gravesDust = <tombstone:crafting_ingredient:3>;
val graveSimple = <tombstone:decorative_grave_simple>;
val decorativeGraves = [
	graveSimple,
	<tombstone:decorative_grave_normal>,
	<tombstone:decorative_grave_cross>,
	<tombstone:decorative_tombstone>
] as IItemStack[];
val head = <minecraft:skull:*>;
val borealSeed = <botania:grassseeds:1>;
val dirt = <minecraft:dirt>;

//dark marble
recipes.remove(marbleDark);
TartaricForge.addRecipe(marbleDark * 4, [marbleSooty, marbleSooty, gravesDust, null], 65, 1);
recipes.addShapeless(marbleDark, [marbleSooty, marbleSooty, gravesDust]);

Carving.addGroup("grave");
for grave in decorativeGraves {
	recipes.remove(grave);
	Carving.addVariation("grave", grave);
}
recipes.addShaped(graveSimple, [[marbleDark, null, null], [marbleDark, borealSeed, null], [head, dirt, dirt]]);