////imports
import mods.botania.PureDaisy;
import mods.botania.ManaInfusion;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.BloodAltar;
import mods.astralsorcery.LightTransmutation;
import mods.MobStages;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;
import moretweaker.bewitchment.WitchesOven;
import crafttweaker.item.IItemStack;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationMultiblock;
import mods.botaniatweaks.AgglomerationRecipe;


////variables
val chalk = <earthworks:block_chalk>;
val dustChalk = <earthworks:item_chalk>;
val limestone = <ore:stoneLimestone>;
val limestoneBL = <thebetweenlands:limestone>;
val cobBall = <earthworks:item_cob>;
val cob = <earthworks:block_cob>;
val mudBrick = <thebetweenlands:items_misc:10>;
val clay = <minecraft:clay_ball>;
val jarUnfired = <bewitchment:unfired_jar>;
val woodAsh = <bewitchment:wood_ash>;
val ritualChalk = <bewitchment:ritual_chalk>;
val birchSoul = <bewitchment:birch_soul>;
val spruceHeart = <bewitchment:spruce_heart>;
val cloudyOil = <bewitchment:cloudy_oil>;
val acaciaResin =  <bewitchment:acacia_resin>;
val seedDry = <botania:grassseeds:3>;
val seedBoreal = <botania:grassseeds:1>;
val seedGolden = <botania:grassseeds:4>;
val seedScorched = <botania:grassseeds:6>;
val treeSeedJuniper = <bewitchment:juniper_berries>;
val treeSeedElder = <bewitchment:elderberries>;
val treeSeedDragonBlood = <bewitchment:dragonsbloodseed>;
val treeSeedCypress = <bewitchment:cypressseed>;
val furnaceMW = <mist:furnace>;
val scornedBrick = <bewitchment:scorned_bricks>;
val slateT1 = <bloodmagic:slate>;
val ironGrate = <quark:grate>;
val witchesOven = <bewitchment:witches_oven>;
val athame = <bewitchment:athame>;
val silverKnife = <mysticalworld:silver_knife>;
val silverAspectus = <embers:aspectus_silver>;
val witchesCauldron = <bewitchment:witches_cauldron>;
val cauldron = <minecraft:cauldron>;
val meats = {
	<mist:meat_food> : <mist:meat_cook>,
	<mist:meat_food:1> : <mist:meat_cook:1>,
	<mist:meat_food:2> : <mist:meat_cook:2>,
	<mist:meat_food:3> : <mist:meat_cook:3>,
	<mist:meat_food:4> : <mist:meat_cook:4>,
	<mist:meat_food:5> : <mist:meat_cook:5>,
	<mist:meat_food:6> : <mist:meat_cook:6>,
	<mist:meat_food:7> : <mist:meat_cook:7>,
	<mist:meat_food:8> : <mist:meat_cook:8>,
	<mist:meat_food:9> : <mist:meat_cook:9>,
	<mist:meat_food:10> : <mist:meat_cook:10>,
	<mist:meat_food:11> : <mist:meat_cook:11>,
	<mist:meat_food:12> : <mist:meat_cook:12>,
	<mist:meat_food:13> : <mist:meat_cook:13>,
	<blue_skies:raw_azulfo_beef> : <blue_skies:azulfo_steak>,
	<blue_skies:raw_venison> : <blue_skies:venison_steak>,
	<mysticalworld:venison> : <mysticalworld:cooked_venison>,
	<thebetweenlands:frog_legs_raw> : <thebetweenlands:frog_legs_cooked>,
	<quark:frog_leg> : <quark:cooked_frog_leg>,
	<kathairis:bisonmeat> : <kathairis:cookedbisonmeat>,
	<thebetweenlands:snail_flesh_raw> : <thebetweenlands:snail_flesh_cooked>,
	<quark:crab_leg> : <quark:cooked_crab_leg>
} as IItemStack[IItemStack];
val tallow = <bewitchment:tallow>;
val seedMandrake = <bewitchment:mandrake_seeds>;
val wildroot = <roots:wildroot>;
val seedSage = <bewitchment:white_sage_seeds>;
val seedSpiritHerb = <roots:spirit_herb_seed>;
val pereskiaBulb = <roots:pereskia_bulb>;
val seedHellebore = <bewitchment:hellebore_seeds>;
val poisonIvy = <thebetweenlands:poison_ivy>;
val seedBelladonna = <bewitchment:belladonna_seeds>;
val milkweed = <thebetweenlands:items_plant_drop:31>;
val seedWormwood = <bewitchment:wormwood_seeds>;
val posionousPotato = <minecraft:poisonous_potato>;
val seedAconitum = <bewitchment:aconitum_seeds>;
val stoneTurquoise = <blue_skies:turquoise_stone>;
val stoneLunar = <blue_skies:lunar_stone>;
val oreOpal = <bewitchment:opal_ore>;
val oreGarnet = <bewitchment:garnet_ore>;
val bucketStarlight = <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000});
val bucketBlood = <forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000});
val bucket = <minecraft:bucket>;
var multiblockOpal = AgglomerationMultiblock.create().all(stoneLunar).edgeReplace(oreOpal).cornerReplace(oreOpal);
var multiblockGarnet = AgglomerationMultiblock.create().all(stoneTurquoise).edgeReplace(oreGarnet).cornerReplace(oreGarnet);

val mobStrings = [
	"bewitchment:hellhound",
	"bewitchment:bafometyr",
	"bewitchment:cleaver",
	"bewitchment:cambion"
] as string[];

//Chalk
limestone.add(limestoneBL);
PureDaisy.addRecipe(limestone, chalk);
recipes.addShapeless(dustChalk * 4, [chalk]);

//Cob
recipes.remove(cobBall);
recipes.removeByRecipeName("earthworks:block_cob_alt_alt");
recipes.addShapeless(cobBall * 4, [cob]);
recipes.addShapeless(cobBall * 4, [clay, clay, mudBrick, mudBrick]);

//unfired Jar
recipes.remove(jarUnfired);
recipes.addShaped(jarUnfired * 2, [[cobBall], [cobBall]]);

//ritual chalk
TartaricForge.addRecipe(ritualChalk, [birchSoul, chalk, woodAsh, woodAsh], 240, 70);

//tree seeds
AlchemyArray.addRecipe(treeSeedJuniper, seedDry, cloudyOil, "bloodmagic:textures/models/AlchemyArrays/WaterSigil.png");
AlchemyArray.addRecipe(treeSeedElder, seedGolden, birchSoul, "bloodmagic:textures/models/AlchemyArrays/WaterSigil.png");
AlchemyArray.addRecipe(treeSeedDragonBlood, seedScorched, acaciaResin, "bloodmagic:textures/models/AlchemyArrays/WaterSigil.png");
AlchemyArray.addRecipe(treeSeedCypress, seedBoreal, spruceHeart, "bloodmagic:textures/models/AlchemyArrays/WaterSigil.png");

//witches oven
recipes.remove(witchesOven);
TartaricForge.addRecipe(witchesOven, [furnaceMW, scornedBrick, slateT1, ironGrate], 20, 10);

//athame
recipes.remove(athame);
ManaInfusion.addInfusion(athame, silverKnife, 30000);

//witches cauldron
recipes.remove(witchesCauldron);
AlchemyArray.addRecipe(witchesCauldron, cauldron, silverAspectus, "bloodmagic:textures/models/AlchemyArrays/AirSigil.png");

//harder nether
for mob in mobStrings {
	MobStages.addStage("harder_nether", mob);
}

//make spectral dust not drop without athame
val tableGhost = LootTweaker.getTable("bewitchment:entities/ghost");
val poolGhost = tableGhost.getPool("ghost");
poolGhost.removeEntry("bewitchment:spectral_dust");

//meats for tallow
for raw, cooked in meats {
	WitchesOven.addRecipe(raw, cooked, tallow, 0.5F, false);
}

//Seeds
BloodAltar.addRecipe(seedMandrake, wildroot, 1, 800, 20, 20);
BloodAltar.addRecipe(seedHellebore, pereskiaBulb, 1, 800, 20, 20);
BloodAltar.addRecipe(seedBelladonna, poisonIvy, 1, 800, 20, 20);
BloodAltar.addRecipe(seedWormwood, milkweed, 1, 800, 20, 20);
BloodAltar.addRecipe(seedAconitum, posionousPotato, 1, 800, 20, 20);
BloodAltar.addRecipe(seedSage, seedSpiritHerb, 1, 800, 20, 20);

//Opal and Garnet
var opalRecipe = AgglomerationRecipe.create().output(bucket).inputs([bucketStarlight]).manaCost(50000).multiblock(multiblockOpal);
Agglomeration.addRecipe(opalRecipe);
var garnetRecipe = AgglomerationRecipe.create().output(bucket).inputs([bucketBlood]).manaCost(50000).multiblock(multiblockGarnet);
Agglomeration.addRecipe(garnetRecipe);