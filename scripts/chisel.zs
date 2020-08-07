////Imports
import mods.chisel.Carving;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;

////Variables
//Sapphire blocks
//val blockSapphireIF = <iceandfire:sapphire_block>;
val blockSapphireAW = <arcaneworld:block_sapphire>;
//Amethyst blocks
val blockAmethystAW = <arcaneworld:block_amethyst>;
val blockAmethystBW = <bewitchment:block_of_amethyst>;
val blockAmethystMy = <mysticalworld:amethyst_block>;
//Thatch
val thatchQuark = <quark:thatch>;
val thatchEarthworks = <earthworks:block_thatch>;
val thatchBetweenlands = <thebetweenlands:thatch>;
val thatchMW = <mysticalworld:thatch>;
val oreThatch = <ore:blockThatch>;
//Stone
val rune1 = <thebetweenlands:druid_stone_1>;
val rune2 = <thebetweenlands:druid_stone_2>;
val rune3 = <thebetweenlands:druid_stone_3>;
val rune4 = <thebetweenlands:druid_stone_4>;
val rune5 = <thebetweenlands:druid_stone_5>;
//Rough Betweenstone
val betweenstone = <thebetweenlands:betweenstone>;
val betweenstoneBricks = <thebetweenlands:betweenstone_bricks>;
val betweenstoneChiseled = <thebetweenlands:betweenstone_chiseled>;
val betweenstoneCracked = <thebetweenlands:cracked_betweenstone_bricks>;
val betweenstoneMossy = <thebetweenlands:mossy_betweenstone_bricks>;
//Smooth betweenstone
val betweenstoneSmooth = <thebetweenlands:smooth_betweenstone>;
val betweenstoneTile = <thebetweenlands:betweenstone_tiles>;
val betweenstoneTileCracked = <thebetweenlands:cracked_betweenstone_tiles>;
val betweenstoneGlowing = <thebetweenlands:glowing_betweenstone_tile>;
val betweenstoneTileMossy = <thebetweenlands:mossy_betweenstone_tiles>;
val betweenstoneSmoothMossy = <thebetweenlands:mossy_smooth_betweenstone>;
val betweenstonePillar = <thebetweenlands:betweenstone_pillar>;
//BL Limestone
val limestoneBL = <thebetweenlands:limestone>;
val limestoneChiseledBL = <thebetweenlands:limestone_chiseled>;
val limestoneCrackedBL = <thebetweenlands:cracked_limestone_bricks>;
val limestoneBrickBL = <thebetweenlands:limestone_bricks>;
val limestoneTileBL = <thebetweenlands:limestone_tiles>;
val limestoneMossyBL = <thebetweenlands:mossy_limestone_bricks>;
val limestonePolishedBL = <thebetweenlands:polished_limestone>;
val limestonePillarBL = <thebetweenlands:limestone_pillar>;
//Rustic Slate
val slate = <rustic:slate>;
val slateRoof = <rustic:slate_roof>;
val slatePillar = <rustic:slate_pillar>;
val slateTile = <rustic:slate_tile>;
val slateBrick = <rustic:slate_brick>;
val slateChiseled = <rustic:slate_chiseled>;
//Sooty Marble
val sootyMarble = <astralsorcery:blockblackmarble>.definition as IItemDefinition;
//livingwood and rock
val livingwood = <botania:livingwood>.definition as IItemDefinition;
val livingrock = <botania:livingrock>.definition as IItemDefinition;
//lunar stone
val lunarStone = <blue_skies:lunar_stone>;
val lunarBricks = <blue_skies:lunar_stonebrick>;
val lunarBricksMossy = <blue_skies:mossy_lunar_stonebrick>;
val lunarBricksCracked = <blue_skies:cracked_lunar_stonebrick>;
val lunarCobble = <blue_skies:lunar_cobblestone>;
val lunarCobbleMossy = <blue_skies:mossy_lunar_cobblestone>;
//turquoise stone
val turquoiseStone = <blue_skies:turquoise_stone>;
val turquoiseBricks = <blue_skies:turquoise_stonebrick>;
val turquoiseBricksMossy = <blue_skies:mossy_turquoise_stonebrick>;
val turquoiseBricksCracked = <blue_skies:cracked_turquoise_stonebrick>;
val turquoiseCobble = <blue_skies:turquoise_cobblestone>;
val turquoiseCobbleMossy = <blue_skies:mossy_turquoise_cobblestone>;
//bookshelves
val bookshelfBirchQ = <quark:custom_bookshelf:1>;
val bookshelfSpruceQ = <quark:custom_bookshelf>;
val bookshelfJungleQ = <quark:custom_bookshelf:2>;
val bookshelfAcaciaQ = <quark:custom_bookshelf:3>;
val bookshelfDarkOakQ = <quark:custom_bookshelf:4>;
val bookshelfBirchC = <chisel:bookshelf_birch>;
val bookshelfSpruceC = <chisel:bookshelf_spruce>;
val bookshelfJungleC = <chisel:bookshelf_jungle>;
val bookshelfAcaciaC = <chisel:bookshelf_acacia>;
val bookshelfDarkOakC = <chisel:bookshelf_darkoak>;
//Scabyst
val scabystBricks = <thebetweenlands:scabyst_bricks>;
val scabystChiseled1 = <thebetweenlands:scabyst_chiseled_1>;
val scabystChiseled2 = <thebetweenlands:scabyst_chiseled_2>;
val scabystChiseled3 = <thebetweenlands:scabyst_chiseled_3>;
//pitstone
val pitstone = <thebetweenlands:pitstone>;
val pitstoneBricks = <thebetweenlands:pitstone_bricks>;
val pitstoneChiseled = <thebetweenlands:pitstone_chiseled>;
//pitstone-smooth
val pitstoneSmooth = <thebetweenlands:smooth_pitstone>;
val pitstonePillar = <thebetweenlands:pitstone_pillar>;
val pitstoneTiles = <thebetweenlands:pitstone_tiles>;
//Cragrock
val cragrock = <thebetweenlands:cragrock>;
val cragrockBricks = <thebetweenlands:cragrock_bricks>;
val cragrockChiseled = <thebetweenlands:cragrock_chiseled>;
//cragrock-smooth
val cragrockSmooth = <thebetweenlands:smooth_cragrock>;
val cragrockPillar = <thebetweenlands:cragrock_pillar>;
val cragrockTiles = <thebetweenlands:cragrock_tiles>;
val cragrockInactive = <thebetweenlands:inactive_glowing_smooth_cragrock>;
val cragrockGlowing = <thebetweenlands:glowing_smooth_cragrock>;
//blockcraftery pressure plates
val plateAll = <blockcraftery:editable_pressure_plate_all>;
val plateMobs = <blockcraftery:editable_pressure_plate_mobs>;
val platePlayers = <blockcraftery:editable_pressure_plate_player>;
val plateItems = <blockcraftery:editable_pressure_plate_items>;
val plateAllR = <blockcraftery:editable_pressure_plate_all_reinforced>;
val plateMobsR = <blockcraftery:editable_pressure_plate_mobs_reinforced>;
val platePlayersR = <blockcraftery:editable_pressure_plate_player_reinforced>;
val plateItemsR = <blockcraftery:editable_pressure_plate_items_reinforced>;
//chains
val chainIronC = <cathedral:cathedral_chain_various>;
val chainIronI = <inspirations:rope:1>;
val chainIronR = <rustic:chain>;
val chainGoldC = <cathedral:cathedral_chain_various:1>;
val chainGoldR = <rustic:chain_gold>;
//crystal-sandstone
val crystalSandstone = <blue_skies:crystal_sandstone>;
val crystalSandstoneChiseled = <blue_skies:chiseled_crystal_sandstone>;
val crystalSandstoneSmooth = <blue_skies:smooth_crystal_sandstone>;
//candles
val candleMap = {
	"white" : [<bewitchment:white_candle>, <quark:candle>, <thaumcraft:candle_white>],
	"orange" : [<bewitchment:orange_candle>, <quark:candle:1>, <thaumcraft:candle_orange>],
	"magenta" : [<bewitchment:magenta_candle>, <quark:candle:2>, <thaumcraft:candle_magenta>],
	"light-blue" : [<bewitchment:light_blue_candle>, <quark:candle:3>, <thaumcraft:candle_lightblue>],
	"yellow" : [<bewitchment:yellow_candle>, <quark:candle:4>, <thaumcraft:candle_yellow>],
	"lime" : [<bewitchment:lime_candle>, <quark:candle:5>, <thaumcraft:candle_lime>],
	"pink" : [<bewitchment:pink_candle>, <quark:candle:6>, <thaumcraft:candle_pink>],
	"gray" : [<bewitchment:gray_candle>, <quark:candle:7>, <thaumcraft:candle_gray>],
	"light-gray" : [<bewitchment:light_gray_candle>, <quark:candle:8>, <thaumcraft:candle_silver>],
	"cyan" : [<bewitchment:cyan_candle>, <quark:candle:9>, <thaumcraft:candle_cyan>],
	"purple" : [<bewitchment:purple_candle>, <quark:candle:10>, <thaumcraft:candle_purple>],
	"blue" : [<bewitchment:blue_candle>, <quark:candle:11>, <thaumcraft:candle_blue>],
	"brown" : [<bewitchment:brown_candle>, <quark:candle:12>, <thaumcraft:candle_brown>],
	"green" : [<bewitchment:green_candle>, <quark:candle:13>, <thaumcraft:candle_green>],
	"red" : [<bewitchment:red_candle>, <quark:candle:14>, <thaumcraft:candle_red>],
	"black" : [<bewitchment:black_candle>, <quark:candle:15>, <thaumcraft:candle_black>]
} as IItemStack[][string];
val oreCandle = <ore:candle>;
//rubber block
val blockRubberMW = <mist:rubber_block>;
val blockRubberBL = <thebetweenlands:rubber_block>;
//mud
val mudBL = <thebetweenlands:mud>;
val mudEW = <earthworks:block_mud>;
val mudBricks = <thebetweenlands:mud_bricks>;
val mudTiles = <thebetweenlands:mud_tiles>;
val mudTilesD = <thebetweenlands:mud_tiles:1>;
val mudTilesC = <thebetweenlands:mud_tiles:2>;
val mudTilesCD = <thebetweenlands:mud_tiles:3>;
val mudCarved = <thebetweenlands:mud_bricks_carved>;
val mudCarvedS1 = <thebetweenlands:mud_bricks_carved:1>;
val mudCarvedS2 = <thebetweenlands:mud_bricks_carved:2>;
val mudCarvedS3 = <thebetweenlands:mud_bricks_carved:3>;
val mudCarvedS4 = <thebetweenlands:mud_bricks_carved:4>;
val mudCarvedE = <thebetweenlands:mud_bricks_carved:5>;
val mudCarvedES1 = <thebetweenlands:mud_bricks_carved:6>;
val mudCarvedES2 = <thebetweenlands:mud_bricks_carved:7>;
val mudCarvedES3 = <thebetweenlands:mud_bricks_carved:8>;
val mudCarvedES4 = <thebetweenlands:mud_bricks_carved:9>;
//terracotta tiles
val terracottaMap = {
	"natural" : [<cathedral:roofing_block_natural>, <quark:hardened_clay_tiles>],
	"white" : [<cathedral:roofing_block_white>, <quark:stained_clay_tiles>],
	"orange" : [<cathedral:roofing_block_orange>, <quark:stained_clay_tiles:1>],
	"magenta" : [<cathedral:roofing_block_magenta>, <quark:stained_clay_tiles:2>],
	"light_blue" : [<cathedral:roofing_block_light_blue>, <quark:stained_clay_tiles:3>],
	"yellow" : [<cathedral:roofing_block_yellow>, <quark:stained_clay_tiles:4>],
	"lime" : [<cathedral:roofing_block_lime>, <quark:stained_clay_tiles:5>],
	"pink" : [<cathedral:roofing_block_pink>, <quark:stained_clay_tiles:6>],
	"gray" : [<cathedral:roofing_block_gray>, <quark:stained_clay_tiles:7>],
	"silver" : [<cathedral:roofing_block_silver>, <quark:stained_clay_tiles:8>],
	"cyan" : [<cathedral:roofing_block_cyan>, <quark:stained_clay_tiles:9>],
	"purple" : [<cathedral:roofing_block_purple>, <quark:stained_clay_tiles:10>],
	"blue" : [<cathedral:roofing_block_blue>, <quark:stained_clay_tiles:11>],
	"brown" : [<cathedral:roofing_block_brown>, <quark:stained_clay_tiles:12>],
	"green" : [<cathedral:roofing_block_green>, <quark:stained_clay_tiles:13>],
	"red" : [<cathedral:roofing_block_red>, <quark:stained_clay_tiles:14>],
	"black" : [<cathedral:roofing_block_black>, <quark:stained_clay_tiles:15>]
} as IItemStack[][string];
val marbledCheeses = [
	<rats:marbled_cheese>,
	<rats:marbled_cheese_tile>,
	<rats:marbled_cheese_chiseled>,
	<rats:marbled_cheese_pillar>,
	<rats:marbled_cheese_brick>,
	<rats:marbled_cheese_brick_chiseled>
] as IItemStack[];

//Add group for Sapphire Blocks
//Carving.addGroup("blockSapphire");
//Carving.addVariation("blockSapphire", blockSapphireAW);
//Carving.addVariation("blockSapphire", blockSapphireIF);

//Add group for Amethyst blocks
Carving.addGroup("blockAmethyst");
Carving.addVariation("blockAmethyst", blockAmethystAW);
Carving.addVariation("blockAmethyst", blockAmethystBW);
Carving.addVariation("blockAmethyst", blockAmethystMy);
recipes.remove(blockAmethystMy);

//Add group, disable other recipes for thatch blocks and add oredict
recipes.remove(thatchEarthworks);
recipes.remove(thatchMW);
oreThatch.add(thatchQuark);
oreThatch.add(thatchEarthworks);
oreThatch.add(thatchBetweenlands);
oreThatch.add(thatchMW);
Carving.addGroup("blockThatch");
Carving.addVariation("blockThatch", thatchQuark);
Carving.addVariation("blockThatch", thatchEarthworks);
Carving.addVariation("blockThatch", thatchBetweenlands);
Carving.addVariation("blockThatch", thatchMW);

//Add BL Rune Stones to stonebrick group
Carving.addVariation("stonebrick", rune1);
Carving.addVariation("stonebrick", rune2);
Carving.addVariation("stonebrick", rune3);
Carving.addVariation("stonebrick", rune4);
Carving.addVariation("stonebrick", rune5);

//Betweenstone groups
Carving.addGroup("betweenstone");
Carving.addVariation("betweenstone", betweenstone);
Carving.addVariation("betweenstone", betweenstoneBricks);
Carving.addVariation("betweenstone", betweenstoneChiseled);
Carving.addVariation("betweenstone", betweenstoneCracked);
Carving.addVariation("betweenstone", betweenstoneMossy);
Carving.addGroup("betweenstone-smooth");
Carving.addVariation("betweenstone-smooth", betweenstoneSmooth);
Carving.addVariation("betweenstone-smooth", betweenstoneTile);
Carving.addVariation("betweenstone-smooth", betweenstoneTileCracked);
Carving.addVariation("betweenstone-smooth", betweenstoneGlowing);
Carving.addVariation("betweenstone-smooth", betweenstoneTileMossy);
Carving.addVariation("betweenstone-smooth", betweenstoneSmoothMossy);
Carving.addVariation("betweenstone-smooth", betweenstonePillar);

//BL Limestone
Carving.addVariation("limestone", limestoneBL);
Carving.addVariation("limestone", limestoneChiseledBL);
Carving.addVariation("limestone", limestoneCrackedBL);
Carving.addVariation("limestone", limestoneBrickBL);
Carving.addVariation("limestone", limestoneTileBL);
Carving.addVariation("limestone", limestoneMossyBL);
Carving.addVariation("limestone", limestonePolishedBL);
Carving.addVariation("limestone", limestonePillarBL);

//Rustic Slate
Carving.addGroup("slate-rustic");
Carving.addVariation("slate-rustic", slate);
Carving.addVariation("slate-rustic", slateRoof);
Carving.addVariation("slate-rustic", slatePillar);
Carving.addVariation("slate-rustic", slateTile);
Carving.addVariation("slate-rustic", slateBrick);
Carving.addVariation("slate-rustic", slateChiseled);

//Sooty Marble
Carving.addGroup("sootyMarble");
for i in 0 to 7 {
	Carving.addVariation("sootyMarble", sootyMarble.makeStack(i));
}

//Livingwood planks
Carving.addGroup("livingwood-planks");
for j in 1 to 5 {
	Carving.addVariation("livingwood-planks", livingwood.makeStack(j));
}

//Livingrock
Carving.addGroup("livingrock");
for k in 0 to 5 {
	Carving.addVariation("livingrock", livingrock.makeStack(k));
}

//Lunar stone and cobble
Carving.addGroup("lunar-stone");
Carving.addVariation("lunar-stone", lunarStone);
Carving.addVariation("lunar-stone", lunarBricks);
Carving.addVariation("lunar-stone", lunarBricksMossy);
Carving.addVariation("lunar-stone", lunarBricksCracked);
Carving.addGroup("lunar-cobble");
Carving.addVariation("lunar-cobble", lunarCobble);
Carving.addVariation("lunar-cobble", lunarCobbleMossy);

//turquoise stone and cobble
Carving.addGroup("turquoise-stone");
Carving.addVariation("turquoise-stone", turquoiseStone);
Carving.addVariation("turquoise-stone", turquoiseBricks);
Carving.addVariation("turquoise-stone", turquoiseBricksMossy);
Carving.addVariation("turquoise-stone", turquoiseBricksCracked);
Carving.addGroup("turquoise-cobble");
Carving.addVariation("turquoise-cobble", turquoiseCobble);
Carving.addVariation("turquoise-cobble", turquoiseCobbleMossy);

//bookshelves
recipes.remove(bookshelfBirchC);
recipes.remove(bookshelfSpruceC);
recipes.remove(bookshelfJungleC);
recipes.remove(bookshelfAcaciaC);
recipes.remove(bookshelfDarkOakC);
Carving.addVariation("bookshelf-birch", bookshelfBirchQ);
Carving.addVariation("bookshelf-spruce", bookshelfSpruceQ);
Carving.addVariation("bookshelf-jungle", bookshelfJungleQ);
Carving.addVariation("bookshelf-acacia", bookshelfAcaciaQ);
Carving.addVariation("bookshelf-darkoak", bookshelfDarkOakQ);

//Scabyst
Carving.addGroup("scabyst-brick");
Carving.addVariation("scabyst-brick", scabystBricks);
Carving.addVariation("scabyst-brick", scabystChiseled1);
Carving.addVariation("scabyst-brick", scabystChiseled2);
Carving.addVariation("scabyst-brick", scabystChiseled3);

//pitstone
Carving.addGroup("pitstone");
Carving.addVariation("pitstone", pitstone);
Carving.addVariation("pitstone", pitstoneBricks);
Carving.addVariation("pitstone", pitstoneChiseled);
//pitstone-smooth
Carving.addGroup("pitstone-smooth");
Carving.addVariation("pitstone-smooth", pitstoneSmooth);
Carving.addVariation("pitstone-smooth", pitstonePillar);
Carving.addVariation("pitstone-smooth", pitstoneTiles);

//cragrock
Carving.addGroup("cragrock");
Carving.addVariation("cragrock", cragrock);
Carving.addVariation("cragrock", cragrockBricks);
Carving.addVariation("cragrock", cragrockChiseled);
//cragrock-smooth
Carving.addGroup("cragrock-smooth");
Carving.addVariation("cragrock-smooth", cragrockSmooth);
Carving.addVariation("cragrock-smooth", cragrockPillar);
Carving.addVariation("cragrock-smooth", cragrockTiles);
Carving.addVariation("cragrock-smooth", cragrockInactive);
Carving.addVariation("cragrock-smooth", cragrockGlowing);

//BlockCraftery Pressure Plates
Carving.addGroup("pressure-plate");
Carving.addVariation("pressure-plate", plateAll);
Carving.addVariation("pressure-plate", plateMobs);
Carving.addVariation("pressure-plate", platePlayers);
Carving.addVariation("pressure-plate", plateItems);
Carving.addGroup("pressure-plate-r");
Carving.addVariation("pressure-plate-r", plateAllR);
Carving.addVariation("pressure-plate-r", plateMobsR);
Carving.addVariation("pressure-plate-r", platePlayersR);
Carving.addVariation("pressure-plate-r", plateItemsR);

//chain
Carving.addGroup("iron-chain");
Carving.addVariation("iron-chain", chainIronC);
Carving.addVariation("iron-chain", chainIronI);
Carving.addVariation("iron-chain", chainIronR);
recipes.remove(chainIronI);
recipes.remove(chainIronR);
Carving.addGroup("gold-chain");
Carving.addVariation("gold-chain", chainGoldC);
Carving.addVariation("gold-chain", chainGoldR);
recipes.remove(chainGoldR);

//crystal sandstone
Carving.addGroup("crystal-sandstone");
Carving.addVariation("crystal-sandstone", crystalSandstone);
Carving.addVariation("crystal-sandstone", crystalSandstoneChiseled);
Carving.addVariation("crystal-sandstone", crystalSandstoneSmooth);

for colour, candles in candleMap {
	var group = "candle-" ~ colour;
	Carving.addGroup(group);
	for candle in candles {
		Carving.addVariation(group, candle);
		oreCandle.add(candle);
	}
}

//rubber blocks
recipes.remove(blockRubberMW);
Carving.addGroup("rubber-block");
Carving.addVariation("rubber-block", blockRubberBL);
Carving.addVariation("rubber-block", blockRubberMW);

//Mud
Carving.addGroup("mud");
Carving.addVariation("mud", mudBL);
Carving.addVariation("mud", mudEW);
Carving.addGroup("mud-brick");
Carving.addVariation("mud-brick", mudBricks);
Carving.addVariation("mud-brick", mudTiles);
Carving.addVariation("mud-brick", mudTilesD);
Carving.addVariation("mud-brick", mudTilesC);
Carving.addVariation("mud-brick", mudTilesCD);
Carving.addGroup("mud-carved");
Carving.addVariation("mud-carved", mudCarved);
Carving.addVariation("mud-carved", mudCarvedS1);
Carving.addVariation("mud-carved", mudCarvedS2);
Carving.addVariation("mud-carved", mudCarvedS3);
Carving.addVariation("mud-carved", mudCarvedS4);
Carving.addVariation("mud-carved", mudCarvedE);
Carving.addVariation("mud-carved", mudCarvedES1);
Carving.addVariation("mud-carved", mudCarvedES2);
Carving.addVariation("mud-carved", mudCarvedES3);
Carving.addVariation("mud-carved", mudCarvedES4);

//terracotta tiles
for colour, tiles in terracottaMap {
	recipes.removeByRecipeName("cathedral:roof_block_" ~ colour);
	var group = "terracotta-tiles-" ~ colour;
	Carving.addGroup(group);
	for tile in tiles {
		Carving.addVariation(group, tile);
	}
}
recipes.removeByRecipeName("quark:stained_clay_tiles");
for i in 1 to 16 {
	var n = i * 2;
	recipes.removeByRecipeName("quark:stained_clay_tiles_" ~ n);
}

//marbled cheese
Carving.addGroup("cheese-marbled");
for cheese in marbledCheeses {
	Carving.addVariation("cheese-marbled", cheese);
}