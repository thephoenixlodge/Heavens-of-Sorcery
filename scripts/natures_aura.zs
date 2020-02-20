////Imports
import mods.naturesaura.Altar as NatureAltar;
import mods.naturesaura.TreeRitual;
import mods.naturesaura.AnimalSpawner;
import mods.astralsorcery.Grindstone;
import mods.astralsorcery.Altar;
import mods.cuisine.Mill;
import mods.ArcaneWorld;
import mods.inspirations.Cauldron as CauldronCrafting;
import mods.roots.Fey;
import mods.roots.Pyre;
import scripts.globals;

////Variables
val goldShroom = <mist:mushrooms_food:23>;
val brilliantFibre = <naturesaura:gold_fiber>;
val leaves = <ore:treeLeaves>;
val goldLeaves = <aether_legacy:aether_leaves:1>;
val nuggetGold = <ore:nuggetGold>;
val tallGrassBS = <blue_skies:turquoise_tallgrass>/*|<blue_skies:lunar_tallgrass>|<blue_skies:cherry_tallgrass>*/;
val shardMoonstone = <blue_skies:moonstone_shard>;
val infusedStone = <naturesaura:infused_stone>;
val turqoiseStone = <blue_skies:turquoise_stone>;
val lunarStone = <blue_skies:lunar_stone>;
val goldLeaf = <naturesaura:gold_leaf>;
val goldDust = <naturesaura:gold_powder>;
val powderOre = <naturesaura:effect_powder>.withTag({effect: "naturesaura:ore_spawn"});
val powderGrowth = <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"});
val powderFertility = <naturesaura:effect_powder>.withTag({effect: "naturesaura:animal"});
val powderNoStorage = <naturesaura:effect_powder>.withTag({effect: "naturesaura:cache_recharge"});
val preciaMundane = <contenttweaker:precia_mundane>;
val metalliaMundane = <contenttweaker:metallia_mundane>;
val saplingBluebright = <blue_skies:bluebright_sapling>;
val saplingStarlit = <blue_skies:starlit_sapling>;
val saplingMaple = <blue_skies:maple_sapling>;
val saplingDusk = <blue_skies:dusk_sapling>;
val tokenJoy = <naturesaura:token_joy>;
val tokenSorrow = <naturesaura:token_sorrow>;
val tokenFear = <naturesaura:token_fear>;
val tokenAnger = <naturesaura:token_anger>;
val tokenEuphoria = <naturesaura:token_euphoria>;
val mysticalFlower = <botania:flower:*>;
val illuminationPowder = <astralsorcery:itemusabledust>;
val bottledSunlight = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"});
val bottledGhosts = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"});
val bottledDarkness = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"});
val ingotHorizonite = <blue_skies:horizonite_ingot>;
val blockHorizonite = <blue_skies:horizonite_block>;
val cherry = <blue_skies:cherry>;
val woodStand = <naturesaura:wood_stand>;
val logStarlit = <blue_skies:starlit_log>;
val sapphire = <arcaneworld:sapphire>;
val amethyst = <arcaneworld:amethyst>;
val milk = <liquid:milk>;
val blockCheese = <rats:block_of_cheese>;
val cheese = <rats:cheese>;
val corn = <cuisine:crops:13>;
val ingotSkies = <naturesaura:sky_ingot>;
val ingotInfused = <naturesaura:infused_iron>;
val blockInfused = <naturesaura:infused_iron_block>;
val rootRedstone = <botania:manaresource:6>;
val wildroot = <roots:wildroot>;
val holyStone = <aether_legacy:holystone>;
val naturalAltar = <naturesaura:nature_altar>;
val runeStone = <roots:runestone>;
val logWildwood = <roots:wildwood_log>;
val offeringTable = <naturesaura:offering_table>;
val infusedRock = <naturesaura:infused_stone>;
val gemTurquoise = <blue_skies:turquoise_gem>;
val gemPyrope = <blue_skies:pyrope_gem>;
val gemDiopside = <blue_skies:diopside_gem>;
val zealLighter = <blue_skies:zeal_lighter>;
val enderEye = <minecraft:ender_eye>;
val swordHorizonite = <blue_skies:horizonite_sword>;
val rawCarabeef = <blue_skies:raw_azulfo_beef>;
val crystalGlass = <blue_skies:crystal_glass>;
val ghastTear = <minecraft:ghast_tear>;
val shieldZanite = <lost_aether:zanite_shield>;
val soulBead = <quark:soul_bead>;
val gravesDust = <tombstone:crafting_ingredient:3>;
val cloudBerry = <roots:cloud_berry>;
val spiritCalling = <naturesaura:calling_spirit>;
val spiritBirthing = <naturesaura:birth_spirit>;
val lilyPad = <minecraft:waterlily>;
val lilyPadChilled = <blue_skies:chilled_lily_pad>;
val catalystTransmutation = <naturesaura:conversion_catalyst>;
val catalystCrumbling = <naturesaura:crushing_catalyst>;
val catalystAlchemy = <botania:alchemycatalyst>;
val goldBrick = <naturesaura:gold_brick>;
val candleBlack = <quark:candle:15>;
val birthingAltar = <naturesaura:animal_spawner>;
val bed = <minecraft:bed:*>;
val hayBale = <minecraft:hay_block>;
val heartBeet = <inspirations:edibles>;
val egg = <minecraft:egg>;
val auraCache = <naturesaura:aura_cache>;
val saplingAncient = <naturesaura:ancient_sapling>;
val crystalFlower = <ebwizardry:crystal_flower>;
val pereskia = <roots:pereskia>;
val terraMoss = <roots:terra_moss>;
val enviroEye = <naturesaura:eye>;
val enviroOcular = <naturesaura:eye_improved>;
val ingotVentium = <blue_skies:ventium_ingot>;
val spiderEye = <minecraft:spider_eye>;
val stalicripe = <roots:stalicripe>;
val piston = <minecraft:piston>;
val pestle = <roots:pestle>;
val mortar = <roots:mortar>;
val oblivionRose = <naturesaura:end_flower>;
val rose = <inspirations:flower>;
val endstone = <minecraft:end_stone>;
val dragonsBreath = <minecraft:dragon_breath>;
val firestarter = <naturesaura:furnace_heater>;
val moltenCore = <arcaneworld:molten_core>;

//Tweak gold fibre recipe to require misty world
recipes.remove(brilliantFibre);
recipes.addShaped("gold_fiber", brilliantFibre, [[goldLeaves, nuggetGold, tallGrassBS], [nuggetGold, shardMoonstone, nuggetGold], [tallGrassBS, nuggetGold, goldLeaves]]);

//Tweak Infused stone recipe
NatureAltar.removeRecipe(infusedStone);
NatureAltar.addRecipe("infused_stone", turqoiseStone, infusedStone, null, 7500, 40);
NatureAltar.addRecipe("infused_stone_alt", lunarStone, infusedStone, null, 7500, 40);

//Move gold powder to mill and grindstone
recipes.remove(goldDust);
Grindstone.addRecipe(goldLeaf, goldDust * 2, 0.1F);
Mill.add(goldLeaf, null, goldDust * 2, null);
NaturalAltar.addRecipe("gold_powder", goldLeaf, goldDust, null, 1000, 20);

//bountiful ore powder
TreeRitual.removeRecipe(powderOre);
TreeRitual.addRecipe("ore_spawn_powder", saplingBluebright, powderOre * 12, 400, [goldDust, goldDust, preciaMundane, metalliaMundane]);

//steady growth powder
TreeRitual.removeRecipe(powderGrowth);
TreeRitual.addRecipe("plant_boost_powder", saplingBluebright, powderGrowth * 12, 400, [goldDust, goldDust, ingotSkies, corn]);

//fertility powder
TreeRitual.removeRecipe(powderFertility);
TreeRitual.addRecipe("animal_powder", saplingStarlit, powderFertility * 8, 400, [goldDust, goldDust, ingotSkies, egg]);

//no storage powder
TreeRitual.removeRecipe(powderNoStorage);
TreeRitual.addRecipe("cache_recharge_powder", saplingStarlit, powderNoStorage * 32, 400, [goldDust, goldDust, ingotSkies, auraCache]);

//Joy token
TreeRitual.removeRecipe(tokenJoy);
TreeRitual.addRecipe("token_joy", saplingBluebright, tokenJoy * 2, 200, [bottledSunlight, goldLeaf, mysticalFlower, gemTurquoise, illuminationPowder, ingotHorizonite]);
//Anger
TreeRitual.removeRecipe(tokenAnger);
TreeRitual.addRecipe("token_anger", saplingMaple, tokenAnger * 2, 200, [bottledGhosts, goldLeaf, swordHorizonite, enderEye, zealLighter, gemPyrope]);
//Fear
TreeRitual.removeRecipe(tokenFear);
TreeRitual.addRecipe("token_fear", saplingDusk, tokenFear * 2, 200, [bottledGhosts, goldLeaf, shieldZanite, soulBead, gravesDust, gemDiopside]);
//Sorrow
TreeRitual.removeRecipe(tokenSorrow);
TreeRitual.addRecipe("token_sorrow", saplingStarlit, tokenSorrow * 2, 200, [bottledSunlight, goldLeaf, rawCarabeef, crystalGlass, ghastTear, shardMoonstone]);

//Wooden stand recipe
recipes.remove(woodStand);
ArcaneWorld.createRitualCreateItem("aura_wooden_stand", "Imbue Ritual Stand", woodStand, logStarlit, goldLeaf, sapphire);

//Birthing recipe for rats
AnimalSpawner.addRecipe("rat", "rats:rat", 80000, 60, [spiritBirthing, cheese]);

//Tweak Infused Iron to be Infused Horizonite instead
globals.setNewName(ingotInfused, "Infused Horizonite Ingot");
globals.setNewName(blockInfused, "Infused Horizonite Block");
NatureAltar.removeRecipe(ingotInfused);
NatureAltar.addRecipe("infused_iron", ingotHorizonite, ingotInfused, null, 15000, 80);
NatureAltar.removeRecipe(blockInfused);
NatureAltar.addRecipe("infused_iron_block", blockHorizonite, blockInfused, null, 15000, 80);

//wildroot
NatureAltar.addRecipe("wildroot", rootRedstone, wildroot, null, 15000, 80);

//Natural altar
TreeRitual.removeRecipe(naturalAltar);
TreeRitual.addRecipe("nature_altar", saplingBluebright, naturalAltar, 800, [tokenJoy, goldLeaf, gemDiopside, holyStone, holyStone, holyStone]);

//offering table
recipes.remove(offeringTable);
Altar.addConstellationAltarRecipe("internal/altar/offering", offeringTable, 3200, 500, [cloudBerry, ingotInfused, tokenFear, infusedRock, logWildwood, infusedRock, null, logWildwood, null, runeStone, runeStone, null, null, null, null, infusedRock, infusedRock, null, null, logWildwood, logWildwood]);

//spirit of calling
recipes.remove(spiritCalling);
Fey.addRecipe("calling_spirit", spiritCalling, [ingotInfused, ingotInfused, bottledSunlight, bottledGhosts, gemPyrope]);

//lilypad
NatureAltar.addRecipe("lilypad", lilyPadChilled, lilyPad, catalystTransmutation, 15000, 80);
lilyPadChilled.addTooltip(format.gold("Found in the swamps of the Everbright"));

//Frog summon
AnimalSpawner.addRecipe("frog", "mysticalworld:entity_frog", 80000, 60, [spiritBirthing, lilyPad]);

//Transmutation catalyst
TreeRitual.removeRecipe(catalystTransmutation);
TreeRitual.addRecipe("conversion_catalyst", saplingStarlit, catalystTransmutation, 800, [goldLeaf, catalystAlchemy, ingotSkies, infusedRock, illuminationPowder, goldBrick]);

//crumbling catalyst
TreeRitual.removeRecipe(catalystCrumbling);
TreeRitual.addRecipe("crushing_catalyst", saplingStarlit, catalystCrumbling, 400, [goldBrick, infusedRock, pestle, mortar, tokenAnger, stalicripe]);

//Dark Druid summon
AnimalSpawner.addRecipe("dark_druid", "thebetweenlands:dark_druid", 120000, 40, [spiritBirthing, candleBlack, bottledDarkness]);

//Birthing altar
recipes.remove(birthingAltar);
Altar.addTraitAltarRecipe("internal/altar/birthing_altar", birthingAltar, 5000, 800, [null, hayBale, null, tokenEuphoria, heartBeet, tokenEuphoria, null, bed, null, ingotSkies, ingotSkies, ingotSkies, ingotSkies, amethyst, amethyst, sapphire, sapphire, sapphire, sapphire, amethyst, amethyst, null, null, null, null], "astralsorcery.constellation.bootes");

//ancient spaling
TreeRitual.removeRecipe(saplingAncient);
TreeRitual.addRecipe("ancient_sapling", saplingBluebright, saplingAncient, 200, [saplingDusk, crystalFlower, crystalFlower, terraMoss, pereskia, goldLeaf]);

//enviromental eye
TreeRitual.removeRecipe(enviroEye);
TreeRitual.addRecipe("eye", saplingBluebright, enviroEye, 400, [spiderEye, ingotVentium, goldLeaf, goldLeaf]);

//enviromental ocular
TreeRitual.removeRecipe(enviroOcular);
TreeRitual.addRecipe("eye_improved", saplingBluebright, enviroOcular, 600, [enviroEye, ingotSkies, ingotSkies, oblivionRose, goldLeaf, goldLeaf]);

//oblivion rose
Pyre.addRecipe("oblivion_rose", oblivionRose, [rose, dragonsBreath, goldDust, endstone, endstone], 3);

//firestarter
TreeRitual.removeRecipe(firestarter);
TreeRitual.addRecipe("furnace_heater", saplingMaple, firestarter, 400, [infusedRock, infusedRock, ingotInfused, ingotInfused, moltenCore, zealLighter, tokenFear, ingotVentium]);

//add tooltips to bottled aura
bottledSunlight.addTooltip(format.gold("Use Bottle and Cork in the Overworld, Dungeon Raid, Aether, Misty World, Everbright, Everdawn or Kathairis to collect"));
bottledGhosts.addTooltip(format.gold("Use Bottle and Cork in the Nether or Betweenlands to collect"));
bottledDarkness.addTooltip(format.gold("Use Bottle and Cork in Limbo or other Dimensional Doors' Pocket Dimensions to collect"));