////Imports
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.Lexicon;
import mods.inspirations.Cauldron as CauldronCrafting;

////Variables
var oreMistyWoods = <ore:mistyWood>;
var mistyWoods = [
	<mist:acacia_block>.definition,
	<mist:aspen_block>.definition,
	<mist:a_tree_block>.definition,
	<mist:birch_block>.definition,
	<mist:oak_block>.definition,
	<mist:pine_block>.definition,
	<mist:poplar_block>.definition,
	<mist:snow_block>.definition,
	<mist:spruce_block>.definition,
	<mist:s_tree_block>.definition,
	<mist:t_tree_block>.definition,
	<mist:willow_block>.definition
] as IItemDefinition[];
var mistyLogMeta = [0,4,7,8,11] as int[];
var oreFogStone = <ore:fogStone>;
var fogStones = [
	<mist:stone>,
	<mist:stone_porous>,
	<mist:stone_basic>
] as IItemStack[];
val livingrock = <botania:livingrock>;
val livingwood = <botania:livingwood>;
val ingotNiobium = <mist:niobium_ingot>;
val blockNiobium = <mist:niobium_block>;
val ingotManasteel = <botania:manaresource>;
val blockManasteel = <botania:storage>;
val respirator = <mist:respirator_single>;
val leather = <minecraft:leather>;
val itemString = <minecraft:string>;
val sapphire = <arcaneworld:sapphire>;
val mysticalShroom = <botania:mushroom>.definition;
val mysticalFlower = <botania:flower>.definition;
val nacreLiquid = <liquid:nacre_fluid>;
val petalApothecary = <botania:altar>;
val mysticalPetal = <botania:petal:*>;
val slabStone = <minecraft:stone_slab>;

//Oredict all Misty World logs
for log in mistyWoods {
	for i in mistyLogMeta {
		oreMistyWoods.add(log.makeStack(i));
	}
}

//Oredict for all variants of Foggy Stone
for stone in fogStones {
	oreFogStone.add(stone);
}

//Tweak Livingwood and Livingrock recipes
PureDaisy.removeRecipe(livingrock);
PureDaisy.addRecipe(oreFogStone, livingrock);
PureDaisy.removeRecipe(livingwood);
PureDaisy.addRecipe(oreMistyWoods, livingwood);
Lexicon.removePage("botania.entry.pureDaisy", 0);
Lexicon.removePage("botania.entry.pureDaisy", 1);
Lexicon.removePage("botania.entry.pureDaisy", 2);
Lexicon.addTextPage("The &1Pure Daisy&0 is not only the most basic, but also the most important flower a botanist can have.<br>This flower will purify any adjacent &1Wood from the Misty Dimension&0 and &1Foggy Stone&0 blocks, into their purified counterparts, &1Livingwood&0 and &1Livingrock&0, which can be used for crafting.", "botania.entry.pureDaisy", 0);

//Tweak Manasteel recipes
ManaInfusion.removeRecipe(ingotManasteel);
ManaInfusion.addInfusion(ingotManasteel, ingotNiobium, 3000);
ManaInfusion.removeRecipe(blockManasteel);
ManaInfusion.addInfusion(blockManasteel, blockNiobium, 27000);
Lexicon.removePage("botania.entry.pool", 5);
Lexicon.addTextPage("Tossing in some resources into a &1Mana Pool&0 will cause them to get infused with &4Mana&0, turning them into more powerful forms.<br>A few examples are &1Niobium Ingots&0 or &1Ender Pearls&0.<br>&4Mana&0 reading for this block functions like the &1Mana Spreader&0. A &1Redstone Comparator&0 can also output a signal based on the contents.", "botania.entry.pool", 5);

//Tweak respirator recipe
recipes.remove(respirator);
recipes.addShaped(respirator, [[itemString, null, itemString], [leather, null, leather], [ingotNiobium, sapphire, ingotNiobium]]);

//Add Cauldron recipe to turn mystical shrooms into flowers
for j in 0 to 15 {
	CauldronCrafting.addFluidRecipe(mysticalFlower.makeStack(j), mysticalShroom.makeStack(j), nacreLiquid, 2);
}

//Tweak Petal Apothecary recipe
recipes.remove(petalApothecary);
recipes.addShaped(petalApothecary, [[slabStone, mysticalPetal, slabStone], [null, oreFogStone, null], [oreFogStone, oreFogStone, oreFogStone]]);