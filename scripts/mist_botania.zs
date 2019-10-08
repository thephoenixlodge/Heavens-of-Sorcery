////Imports
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.block.IBlockState;
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.botania.Lexicon;
import mods.botania.RuneAltar;
import mods.inspirations.Cauldron as CauldronCrafting;
import mods.astralsorcery.Altar;
import mods.astralsorcery.StarlightInfusion;
import mods.astralsorcery.Utils;
import mods.astralsorcery.LightTransmutation;
import mods.aether_legacy.Freezer;
import mods.ArcaneWorld;

////Variables
var oreMistyWoods = <ore:mistyWood>;
var oreMistyPlanks = <ore:mistyPlanks>;
var oreLog = <ore:logWood>;
var orePlanks = <ore:plankWood>;
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
	<mist:cobblestone>,
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
val mysticalShrooms = <botania:mushroom:*>;
val slabStone = <minecraft:stone_slab>;
val manaPowder = <botania:manaresource:23>;
val manaPearl = <botania:manaresource:1>;
val nacrePearl = <wizardry:nacre_pearl>;
val runicAltar = <botania:runealtar>;
val marblePillar = <astralsorcery:blockmarble:2>;
val manaOrb = <wizardry:orb:1>;
val swetBall = <aether_legacy:swetty_ball>;
val aquamarine = <astralsorcery:itemcraftingcomponent>;
val jar = <cuisine:jar>;
val chiliPowder = <cuisine:material:4>;
val emberCrystal = <embers:crystal_ember>;
val magmaBlock = <minecraft:magma>;
val holyStone = <aether_legacy:holystone>;
val hardFogStone = <mist:stone_basic>;
val porousFogStone = <mist:stone_porous>;
val foggyCobble = <mist:cobblestone>;
val oreMushroom = <ore:shrooms>;
val skyrootLeaves = <aether_legacy:aether_leaves>;
val feather = <ore:feather>;
val coldAercloud = <aether_legacy:aercloud>;
val mushroomsArray = [
	<minecraft:brown_mushroom>,
	<minecraft:red_mushroom>,
	<blue_skies:snowcap_mushroom>,
	<blue_skies:baneful_mushroom>,
	<botania:mushroom:*>,
	<mist:mushrooms_food:*>,
	<rustic:deathstalk_mushroom>,
	<rustic:mooncap_mushroom>,
	<thebetweenlands:flat_head_mushroom_item>,
	<thebetweenlands:black_hat_mushroom_item>,
	<thebetweenlands:bulb_capped_mushroom_item>
] as IItemStack[];
val basalt = <ore:stoneBasalt>;
val slate = <rustic:slate>;
val slateBlue = <earthworks:block_slate>;
val slateGreen = <earthworks:block_slate_green>;
val slatePurple = <earthworks:block_slate_purple>;
val lexicaBotania = <botania:lexicon>;
val book = <minecraft:book>;
val livingwoodGlimmering = <botania:livingwood:5>;
val floralFertilizer = <botania:fertilizer>;
val niobiumPick = <mist:niobium_pickaxe>;
val rockCrystalAttuned = Utils.getCrystalORIngredient(false, true);
val ingotStarmetal = <astralsorcery:itemcraftingcomponent:1>;
val dustStarmetal = <astralsorcery:itemcraftingcomponent:2>;
val catalystInert = <contenttweaker:catalyst_inert>;
val catalystPure = <contenttweaker:catalyst_pure>;
val catalystStarlit = <contenttweaker:catalyst_starlit>;
val catalystInert2 = <contenttweaker:catalyst_inert_2>;
val catalystPure2 = <contenttweaker:catalyst_pure_2>;
val catalystStarlit2 = <contenttweaker:catalyst_starlit_2>;
val alchemyCatalyst = <botania:alchemycatalyst>;
val conjurationCatalyst = <botania:conjurationcatalyst>;
val ingotGold = <minecraft:gold_ingot>;
val ingotLead = <embers:ingot_lead>;
val ingotElementium = <botania:manaresource:7>;
val dustPixie = <botania:manaresource:8>;
val amethyst = <arcaneworld:amethyst>;
val bacterialShale = <mist:bio_shale>;
val plankSkyroot = <aether_legacy:skyroot_plank>;
val gemZanite = <aether_legacy:zanite_gemstone>;
val redstone = <minecraft:redstone>;
val piston = <minecraft:piston>;
val agglomerationPlate = <botania:terraplate>;
val charoite = <blue_skies:charoite>;
val ingotInfused = <naturesaura:infused_iron>;
val saplingGoldenOak = <aether_legacy:golden_oak_sapling>;
val blueBerry = <aether_legacy:blue_berry>;
val manaCloth = <botania:manaresource:22>;
val pumpkinPie = <minecraft:pumpkin_pie>;
val iceStone = <aether_legacy:icestone>;
val leavesGoldenOak = <aether_legacy:aether_leaves:1>;
val web = <minecraft:web>;
val slime = <ore:slimeball>;
val quicksoil = <aether_legacy:quicksoil>;
val melon = <minecraft:melon>;
val filterCoal = <mist:filter_coal>;
val filterCoalBlock = <mist:filter_coal_block>;
//Runes
val runeWater = <botania:rune>;
val runeFire = <botania:rune:1>;
val runeEarth = <botania:rune:2>;
val runeAir = <botania:rune:3>;
val runeMana = <botania:rune:8>;
val runeStarlight = <contenttweaker:rune_starlight>;
val runeSummer = <botania:rune:5>;
val runeAutumn = <botania:rune:6>;
val runeWinter = <botania:rune:7>;
val runeSpring = <botania:rune:4>;
val runeLust = <botania:rune:9>;
val runeGreed = <botania:rune:11>;
val runeGluttony = <botania:rune:10>;
val runeWrath = <botania:rune:13>;
val runePride = <botania:rune:15>;
val runeEnvy = <botania:rune:14>;
val runeSloth = <botania:rune:12>;
//tokens
val tokenJoy = <naturesaura:token_joy>;
val tokenSorrow = <naturesaura:token_sorrow>;
val tokenAnger = <naturesaura:token_anger>;
val tokenFear = <naturesaura:token_fear>;

//Oredict all Misty World logs
for wood in mistyWoods {
	for i in mistyLogMeta {
		oreMistyWoods.add(wood.makeStack(i));
		oreLog.add(wood.makeStack(i));
	}
	oreMistyPlanks.add(wood.makeStack(13));
	orePlanks.add(wood.makeStack(13));
}

//Oredict for all variants of Foggy Stone
for stone in fogStones {
	oreFogStone.add(stone);
}

//Tweak Livingwood and Livingrock recipes
PureDaisy.removeRecipe(livingrock);
PureDaisy.addRecipe(oreFogStone, livingrock);
livingrock.addTooltip(format.gold("Made from Foggy Stone from the Misty World"));
PureDaisy.removeRecipe(livingwood);
PureDaisy.addRecipe(oreMistyWoods, livingwood);
livingwood.addTooltip(format.gold("Made from Woods native to the Misty World"));
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
Lexicon.addTextPage("Tossing in some resources into a &1Mana Pool&0 will cause them to get infused with &4Mana&0, turning them into more powerful forms.<br>A few examples are &1Niobium Ingots&0 or &1Nacre Pearls&0.<br>&4Mana&0 reading for this block functions like the &1Mana Spreader&0. A &1Redstone Comparator&0 can also output a signal based on the contents.", "botania.entry.pool", 5);

//Tweak Manapearl recipe
ManaInfusion.removeRecipe(manaPearl);
ManaInfusion.addInfusion(manaPearl, nacrePearl, 6000);

//Runic Altar recipe
recipes.remove(runicAltar);
Altar.addDiscoveryAltarRecipe("custom_runic_altar", runicAltar, 700, 250, [null, null, null, livingrock, livingrock, livingrock, marblePillar, manaPearl, marblePillar]);

//Tweak respirator recipe
recipes.remove(respirator);
recipes.addShaped(respirator, [[itemString, null, itemString], [leather, null, leather], [ingotNiobium, sapphire, ingotNiobium]]);

//Tweak Petal Apothecary recipe
recipes.remove(petalApothecary);
recipes.addShaped(petalApothecary, [[slabStone, mysticalShrooms, slabStone], [null, oreFogStone, null], [oreFogStone, oreFogStone, oreFogStone]]);

//Shrooms oredict
for shroom in mushroomsArray {
	oreMushroom.add(shroom);
}

//Runes
//Water
RuneAltar.removeRecipe(runeWater);
RuneAltar.addRecipe(runeWater, [manaPowder, ingotManasteel, jar, swetBall, aquamarine], 5200);
//Fire
RuneAltar.removeRecipe(runeFire);
RuneAltar.addRecipe(runeFire, [manaPowder, ingotManasteel, chiliPowder, emberCrystal, magmaBlock], 5200);
//Earth
RuneAltar.removeRecipe(runeEarth);
RuneAltar.addRecipe(runeEarth, [manaPowder, ingotManasteel, holyStone, oreFogStone, oreMushroom], 5200);
//Air
RuneAltar.removeRecipe(runeAir);
RuneAltar.addRecipe(runeAir, [manaPowder, ingotManasteel, feather, skyrootLeaves, coldAercloud], 5200);
//Mana
RuneAltar.removeRecipe(runeMana);
RuneAltar.addRecipe(runeMana, [manaPowder, ingotManasteel, ingotManasteel, ingotManasteel, manaOrb, manaOrb, manaPearl, manaPearl], 8000);
//Summer
RuneAltar.removeRecipe(runeSummer);
RuneAltar.addRecipe(runeSummer, [runeEarth, runeAir, quicksoil, quicksoil, slime, melon], 8000);
//Autumn
RuneAltar.removeRecipe(runeAutumn);
RuneAltar.addRecipe(runeAutumn, [runeFire, runeAir, leavesGoldenOak, leavesGoldenOak, leavesGoldenOak, web], 8000);
//Winter
RuneAltar.removeRecipe(runeWinter);
RuneAltar.addRecipe(runeWinter, [runeWater, runeEarth, iceStone, iceStone, pumpkinPie, manaCloth], 8000);
//Spring
RuneAltar.removeRecipe(runeSpring);
RuneAltar.addRecipe(runeSpring, [runeWater, runeFire, saplingGoldenOak, saplingGoldenOak, saplingGoldenOak, blueBerry], 8000);
//Lust
RuneAltar.removeRecipe(runeLust);
RuneAltar.addRecipe(runeLust, [tokenJoy, tokenJoy, runeAir, runeSummer], 12000);
//Gluttony
RuneAltar.removeRecipe(runeGluttony);
RuneAltar.addRecipe(runeGluttony, [tokenJoy, tokenFear, runeFire, runeWinter], 12000);
//Greed
RuneAltar.removeRecipe(runeGreed);
RuneAltar.addRecipe(runeGreed, [tokenFear, tokenAnger, runeWater, runeSpring], 12000);
//Wrath
RuneAltar.removeRecipe(runeWrath);
RuneAltar.addRecipe(runeWrath, [tokenAnger, tokenAnger, runeEarth, runeWinter], 12000);
//Envy
RuneAltar.removeRecipe(runeEnvy);
RuneAltar.addRecipe(runeEnvy, [tokenAnger, tokenSorrow, runeWater, runeWinter], 12000);
//Sloth
RuneAltar.removeRecipe(runeSloth);
RuneAltar.addRecipe(runeSloth, [tokenSorrow, tokenFear, runeAir, runeAutumn], 12000);
//Pride
RuneAltar.removeRecipe(runePride);
RuneAltar.addRecipe(runePride, [tokenJoy, tokenSorrow, runeFire, runeSummer], 12000);

//Add recipe for getting slate from Rustic and Earthworks
PureDaisy.addRecipe(basalt, slate);
ManaInfusion.addAlchemy(slate, slateBlue, 50);
ManaInfusion.addAlchemy(slateBlue, slateGreen, 50);
ManaInfusion.addAlchemy(slateGreen, slatePurple, 50);
ManaInfusion.addAlchemy(slatePurple, slate, 50);

//tweak lexica recipe to use shroom instead of sapling
recipes.remove(lexicaBotania);
recipes.addShapeless(lexicaBotania, [mysticalShrooms, book]);

//Glimmering Livingwood
recipes.remove(livingwoodGlimmering);
StarlightInfusion.addInfusion(livingwood, livingwoodGlimmering, false, 0.8, 120);

//remove recipe for Floral Fertilizer (add new one to later point in progression?)
recipes.remove(floralFertilizer);

//increase max durability for niobium pick
niobiumPick.maxDamage = 600;

//Rune of Starlight recipe
RuneAltar.addRecipe(runeStarlight * 2, [runeMana, runeMana, ingotStarmetal, ingotStarmetal, dustStarmetal, dustStarmetal], 12000);

//Freezer recipe for foggy stone hardening
Freezer.registerFreezable(porousFogStone, hardFogStone, 80);

//Catalyst recipes
PureDaisy.addRecipe(catalystInert, catalystPure);
LightTransmutation.addTransmutation(catalystPure, catalystStarlit, 400);
PureDaisy.addRecipe(catalystInert2, catalystPure2);
LightTransmutation.addTransmutation(catalystPure2, catalystStarlit2, 400);

//Alchemy Catalyst
recipes.remove(alchemyCatalyst);
Altar.addAttunementAltarRecipe("internal/altar/alchemy_catalyst", alchemyCatalyst, 1200, 300, [ingotGold, amethyst, ingotLead, sapphire, manaPearl, sapphire, ingotLead, amethyst, ingotGold, livingrock, livingrock, livingrock, livingrock]);

//Conjuration Catalyst
recipes.remove(conjurationCatalyst);
Altar.addConstellationAltarRecipe("internal/altar/conjuration_catalyst", conjurationCatalyst, 3000, 500, [ingotElementium, dustPixie, ingotElementium, tokenJoy, alchemyCatalyst, tokenJoy, ingotElementium, dustPixie, ingotElementium, null, null, null, null, livingrock, livingrock, livingrock, livingrock, livingrock, livingrock, livingrock, livingrock]);

//piston
recipes.remove(piston);
recipes.addShaped(piston, [[plankSkyroot, plankSkyroot, plankSkyroot], [holyStone, gemZanite, holyStone], [holyStone, redstone, holyStone]]);
recipes.addShaped(piston, [[oreMistyPlanks, oreMistyPlanks, oreMistyPlanks], [oreFogStone, ingotNiobium, oreFogStone], [oreFogStone, redstone, oreFogStone]]);
recipes.addShaped(piston * 3, [[livingwood, livingwood, livingwood], [livingrock, ingotManasteel, livingrock], [livingrock, redstone, livingrock]]);

//tweak foggy stone hardnesses
var hardFogStoneBlock = hardFogStone as IBlock;
hardFogStoneBlock.definition.hardness = 45;

//terrestrial agglomeration plate
recipes.remove(agglomerationPlate);
Altar.addConstellationAltarRecipe("internal/altar/agglomeration_plate", agglomerationPlate, 3200, 500, [null, null, null, charoite, charoite, charoite, ingotInfused, blockManasteel, ingotInfused, null, null, runeEarth, runeAir, null, null, null, null, runeFire, runeWater, runeMana, runeStarlight]);

//filter coal block. why wasn't this already a thing?
recipes.addShapeless(filterCoalBlock, [filterCoal, filterCoal, filterCoal, filterCoal, filterCoal, filterCoal, filterCoal, filterCoal, filterCoal]);