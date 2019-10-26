////Imports
import mods.chisel.Carving;
import crafttweaker.item.IItemDefinition;

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