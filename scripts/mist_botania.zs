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
import mods.roots.Fey;

////Variables
var oreMistyWoods = <ore:mistyWood>;
var oreMistyPlanks = <ore:mistyPlanks>;
var oreLog = <ore:logWood>;
var orePlanks = <ore:plankWood>;
var mistyWoods = {
	"acacia" : <mist:acacia_block>.definition,
	"aspen" : <mist:aspen_block>.definition,
	"a_tree" : <mist:a_tree_block>.definition,
	"birch" : <mist:birch_block>.definition,
	"oak" : <mist:oak_block>.definition,
	"pine" : <mist:pine_block>.definition,
	"poplar" : <mist:poplar_block>.definition,
	"snow" : <mist:snow_block>.definition,
	"spruce" : <mist:spruce_block>.definition,
	"s_tree" : <mist:s_tree_block>.definition,
	"t_tree" : <mist:t_tree_block>.definition,
	"willow" : <mist:willow_block>.definition,
	"r_tree" : <mist:r_tree_block>.definition
} as IItemDefinition[string];
var mistyLogMeta = [0,4,7,8,11] as int[];
var mistyPlankMeta = 13;
var mistyTimbers = {
	"acacia" : <mist:acacia_step>,
	"aspen" : <mist:aspen_step>,
	"a_tree" : <mist:a_tree_step>,
	"birch" : <mist:birch_step>,
	"oak" : <mist:oak_step>,
	"pine" : <mist:pine_step>,
	"poplar" : <mist:poplar_step>,
	"snow" : <mist:snow_step>,
	"spruce" : <mist:spruce_step>,
	"s_tree" : <mist:s_tree_step>,
	"t_tree" : <mist:t_tree_step>,
	"willow" : <mist:willow_step>,
	"r_tree" : <mist:r_tree_step>
} as IItemStack[string];
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
val respirator = <mist:respirator_single_open>;
val respiratorClosed = <mist:respirator_single>;
val respiratorRubber = <mist:respirator_rubber_open>;
val respiratorRubberClosed = <mist:respirator_rubber>;
val rubber = <thebetweenlands:items_misc:23>;
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
val oreSkyrootLeaves = <ore:skyroot_leaves>;
val skyrootLeavesArray = [
	<aether_legacy:aether_leaves>,
	<aether_legacy:aether_leaves:8>
] as IItemStack[];
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
val blockCharcoal = <ore:blockCharcoal>;
val coal = <minecraft:coal>;
val blockCoal = <minecraft:coal_block>;
val elvenGateway = <botania:alfheimportal>;
val pylonMana = <botania:pylon>;
val pylonNature = <botania:pylon:1>;
val pylonGaia = <botania:pylon:2>;
val nuggetTerrasteel = <botania:manaresource:18>;
val stalicripe = <roots:stalicripe>;
val pixieDust = <botania:manaresource:8>;
val manaDiamond = <botania:manaresource:2>;
val goldLeaf = <naturesaura:gold_leaf>;
val endStone = <minecraft:end_stone>;
val enderPearl = <minecraft:ender_pearl>;
val bottledDarkness = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"});
val enderAir = <botania:manaresource:15>;
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
//tree seed cycling
val treeSeeds = {
	<dynamictrees:appleseed> : <dynamictrees:oakseed>,
	<dynamictrees:oakseed> : <dynamictrees:spruceseed>,
	<dynamictrees:spruceseed> : <dynamictrees:birchseed>,
	<dynamictrees:birchseed> : <dynamictrees:jungleseed>,
	<dynamictrees:jungleseed> : <dynamictrees:acaciaseed>,
	<dynamictrees:acaciaseed> : <dynamictrees:darkoakseed>,
	<dynamictrees:darkoakseed> : <dynamictrees:appleseed>
} as IItemStack[IItemStack];
val saplings = <minecraft:sapling>.definition;
val manaGear = <mystgears:gear_manasteel>;
val latexPot = <mist:latex_pot>;
val flowerPot = <minecraft:flower_pot>;
val plateIron = <embers:plate_iron>;
val rubberHelmet = <mist:rubber_helmet>;
val rubberChestplate = <mist:rubber_chestplate>;
val rubberLeggings = <mist:rubber_leggings>;
val rubberBoots = <mist:rubber_boots>;
val glassContainer = <mist:glass_container>;
val glassBottle = <minecraft:glass_bottle>;

//Oredict all Misty World logs
for type, wood in mistyWoods {
	for i in mistyLogMeta {
		oreMistyWoods.add(wood.makeStack(i));
		oreLog.add(wood.makeStack(i));
	}
	oreMistyPlanks.add(wood.makeStack(mistyPlankMeta));
	orePlanks.add(wood.makeStack(mistyPlankMeta));
}
for woodType, timber in mistyTimbers {
	var logRecipeID = "mist:" ~ woodType ~ "_step_from_log";
	var plankRecipeID = "mist:" ~ woodType ~ "_step_from_planks";
	recipes.removeByRecipeName(logRecipeID);
	recipes.removeByRecipeName(plankRecipeID);
	for i in mistyLogMeta {
		recipes.addShapeless(timber * 4, [mistyWoods[woodType].makeStack(i)]);
	}
	recipes.addShapeless(timber * 4, [mistyWoods[woodType].makeStack(13)]);
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

//Tweak respirator recipes
recipes.remove(respirator);
recipes.addShaped(respirator, [[itemString, null, itemString], [leather, null, leather], [ingotNiobium, sapphire, ingotNiobium]]);
recipes.remove(respiratorClosed);
recipes.addShapeless(respiratorClosed, [respirator, leather]);
recipes.remove(respiratorRubber);
recipes.addShaped(respiratorRubber, [[itemString, null, itemString], [rubber, null, rubber], [ingotNiobium, sapphire, ingotNiobium]]);
recipes.remove(respiratorRubberClosed);
recipes.addShapeless(respiratorRubberClosed, [respiratorRubber, rubber]);

//tweak protective suit recipe to BL rubber item
recipes.remove(rubberHelmet);
recipes.remove(rubberChestplate);
recipes.remove(rubberLeggings);
recipes.remove(rubberBoots);
recipes.addShaped(rubberHelmet, [[rubber, rubber, rubber], [rubber, null, rubber]]);
recipes.addShaped(rubberChestplate, [[rubber, null, rubber], [rubber, rubber, rubber], [rubber, rubber, rubber]]);
recipes.addShaped(rubberLeggings, [[rubber, rubber, rubber], [rubber, null, rubber], [rubber, null, rubber]]);
recipes.addShaped(rubberBoots, [[rubber, null, rubber], [rubber, null, rubber]]);

//Tweak Petal Apothecary recipe
recipes.remove(petalApothecary);
recipes.addShaped(petalApothecary, [[slabStone, mysticalShrooms, slabStone], [null, oreFogStone, null], [oreFogStone, oreFogStone, oreFogStone]]);

//Shrooms oredict
for shroom in mushroomsArray {
	oreMushroom.add(shroom);
}

//Oredict Aether and Dynamic Trees Skyroot Leaves variants
for leaves in skyrootLeavesArray {
	oreSkyrootLeaves.add(leaves);
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
RuneAltar.addRecipe(runeAir, [manaPowder, ingotManasteel, feather, oreSkyrootLeaves, coldAercloud], 5200);
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
Altar.addConstellationAltarRecipe("internal/altar/agglomeration_plate", agglomerationPlate, 3200, 500, [null, null, null, charoite, charoite, charoite, goldLeaf, blockManasteel, goldLeaf, null, null, runeEarth, runeAir, null, null, null, null, runeFire, runeWater, runeMana, runeStarlight]);

//filter coal block. why wasn't this already a thing?
recipes.removeByRecipeName("mist:filter_coal_mix");
recipes.addShaped(filterCoalBlock, [[filterCoal, filterCoal, filterCoal], [filterCoal, filterCoal, filterCoal], [filterCoal, filterCoal, filterCoal]]);
recipes.addShapeless(filterCoal * 9, [filterCoalBlock]);

//elven gateway core
recipes.remove(elvenGateway);
Fey.addRecipe("elven_gateway", elvenGateway, [livingwood, livingwood, nuggetTerrasteel, nuggetTerrasteel, nuggetTerrasteel]);

//pylons
recipes.remove(pylonMana);
Altar.addDiscoveryAltarRecipe("internal/altar/mana_pylon", pylonMana, 400, 100, [null, ingotGold, null, ingotManasteel, manaDiamond, ingotManasteel, null, ingotGold, null]);
recipes.remove(pylonNature);
Fey.addRecipe("nature_pylon", pylonNature, [pylonMana, nuggetTerrasteel, nuggetTerrasteel, nuggetTerrasteel, stalicripe]);
recipes.remove(pylonGaia);
Fey.addRecipe("gaia_pylon", pylonGaia, [pylonMana, ingotElementium, ingotElementium, pixieDust, pixieDust]);

//coal from filter coal
ManaInfusion.addInfusion(coal, filterCoal, 3000);
ManaInfusion.addInfusion(blockCoal, filterCoalBlock, 27000);

//ender air recipe
Fey.addRecipe("ender_air", enderAir, [endStone, endStone, endStone, enderPearl, bottledDarkness]);

//change sapling transmute cycle to tree seeds
for i in 0 .. 5 {
	ManaInfusion.removeRecipe(saplings.makeStack(i));
} 
for seed1, seed2 in treeSeeds {
	ManaInfusion.addAlchemy(seed2, seed1, 1000);
}

//disable infusion recipe for manasteel gear
ManaInfusion.removeRecipe(manaGear);

//tweak latex pot recipe
recipes.remove(latexPot);
recipes.addShapeless(latexPot, [flowerPot, itemString, itemString, plateIron]);

//glass container recipe to BL rubber
recipes.remove(glassContainer);
recipes.addShaped(glassContainer, [[rubber], [glassBottle]]);
