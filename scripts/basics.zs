//Imports
import mods.rustic.EvaporatingBasin;
import mods.inspirations.Cauldron as CauldronCrafting;
import mods.ArcaneWorld;

////Variables
//Basics
val crushingTub = <rustic:crushing_tub>;
val plankWood = <ore:plankWood>;
val slabWood = <ore:slabWood>;
val bucketWeedwood = <thebetweenlands:bl_bucket>;
val seedIronberry = <rustic:ironwoodseed>;
val ironBerryJuice = <liquid:ironberryjuice>;
val dustTinyIron = <rustic:dust_tiny_iron>;
val wandIronwood = <contenttweaker:ironwood_wand_one>;
val plankIronwood = <rustic:planks:1>;
val stick = <ore:stickWood>;
val furnace = <minecraft:furnace>;
val clayBlock = <minecraft:clay>;
val cobbleTaiga = <botania:biomestonea:14>;
val stoneTaiga = <botania:biomestonea:6>;
val boneshard = <contenttweaker:boneshard>;
val bonemeal = <minecraft:dye:15>;
val water = <liquid:water>;
val manaLiquid = <liquid:mana_fluid>;
val nacreLiquid = <liquid:nacre_fluid>;
val pastureSeedInfused = <botania:grassseeds:7>;
val orbGlass = <wizardry:orb>;
val orbMana100 = <wizardry:orb:1>;
val cauldron = <minecraft:cauldron>;
val ingotIron = <minecraft:iron_ingot>;
val nuggetIron = <minecraft:iron_nugget>;
val clay = <minecraft:clay_ball>;
val dirt = <minecraft:dirt>;
val seedChili = <rustic:chili_pepper_seeds>;
val wildBerryJuice = <liquid:wildberryjuice>;
val seedWheat = <minecraft:wheat_seeds>;
val seedApple = <rustic:apple_seeds>;
val chiliPowder = <cuisine:material:4>;
val mill = <cuisine:mill>;
val cuisineHandle = <cuisine:material:1>;
val lava = <liquid:lava>;
val cobble = <minecraft:cobblestone>;
val oreCobble = <ore:cobblestone>;
val flint = <minecraft:flint>;
val quartzSliver = <thaumcraft:nugget:9>;
val quartzNether = <minecraft:quartz>;
val diorite = <minecraft:stone:3>;
val oreDiorite = <ore:stoneDiorite>;
val andesite = <minecraft:stone:5>;
val granite = <minecraft:stone:1>;
//val colonyBuildingTool = <minecolonies:sceptergold>;
//val colonyScanTool = <minecolonies:sceptersteel>;
val growthPowder = <rootsclassic:growthsalve>;
val redstone = <minecraft:redstone>;
val pestle = <rootsclassic:pestle>;
val meecreepBox = <meecreeps:creepcube>;
val plankWisdomWood = <wizardry:wisdom_wood_planks>;
val diamond = <minecraft:diamond>;
val chest = <ore:chest>;
val ingotGold = <minecraft:gold_ingot>;
val nuggetGold = <minecraft:gold_nugget>;
val seedSugarcane = <inspirations:sugar_cane_seeds>;
val amethyst = <arcaneworld:amethyst>;
val sapphire = <arcaneworld:sapphire>;
val rawBeef = <minecraft:beef>;
val rawPork = <minecraft:porkchop>;
val rawChicken = <minecraft:chicken>;
val rawMutton = <minecraft:mutton>;
val egg = <ore:egg>;
val bone = <ore:bone>;
val soulSand = <minecraft:soul_sand>;
val sand = <minecraft:sand>;
val ritualTable = <arcaneworld:ritual_table>;
val blockSapphire = <arcaneworld:block_sapphire>;
val paper = <minecraft:paper>;
val basalt = <ore:stoneBasalt>;
val gravel = <minecraft:gravel>;
val angelicStatue = <aov:angelicstatue>;
val haloCrude = <wizardry:halo_fake>;
val andesitePolished = <minecraft:stone:6>;
val angelHeart = <contenttweaker:angel_heart>;
val feather = <ore:feather>;
val portalCore = <contenttweaker:otherworlds_core>;
val mistyPortalUpper = <mist:portal_base:3>;
val mistyPortalLower = <mist:portal_base:2>;
val aetherPortal = <aether:aether_teleporter>;
val bottleEmpty = <minecraft:glass_bottle>;
val cape = <wizardry:cape>;
val leather = <minecraft:leather>;
val slimeball = <minecraft:slime_ball>;
val magmaCream = <minecraft:magma_cream>;


//Change Crushing tub recipe for starting
recipes.remove(crushingTub);
recipes.addShaped(crushingTub, [[plankWood, null, plankWood], [slabWood, slabWood, slabWood]]);

//Weedwood bucket
recipes.remove(bucketWeedwood);
recipes.addShaped(bucketWeedwood, [[plankWood, null, plankWood], [null, slabWood, null]]);

//Tweak iron output from drying basin
EvaporatingBasin.removeRecipe(dustTinyIron);
EvaporatingBasin.addRecipe(dustTinyIron * 2, ironBerryJuice * 500);

//Ironwood wand recipe
recipes.addShaped(wandIronwood, [[null, null, stick], [null, stick, null], [plankIronwood, null, null]]);

//alt furnace recipe
recipes.addShaped(furnace, [[cobbleTaiga, cobbleTaiga, cobbleTaiga], [clayBlock, null, clayBlock], [cobbleTaiga, cobbleTaiga, cobbleTaiga]]);

//boneshard usage
recipes.addShapeless(bonemeal, [boneshard]);
recipes.addShapeless(bonemeal * 6, [boneshard, boneshard, boneshard, boneshard]);
recipes.addShapeless(bonemeal * 16, [boneshard, boneshard, boneshard, boneshard, boneshard, boneshard, boneshard, boneshard, boneshard]);

//Tweak cauldron recipe to be cheaper
recipes.remove(cauldron);
recipes.addShaped(cauldron, [[nuggetIron, null, nuggetIron], [nuggetIron, null, nuggetIron], [ingotIron, nuggetIron, ingotIron]]);

//Water to mana conversion
CauldronCrafting.addFluidTransform(manaLiquid, pastureSeedInfused, water);

//Filling mana orb in cauldron
CauldronCrafting.addFluidRecipe(orbMana100, orbGlass, manaLiquid, 0);

//Clay to dirt
CauldronCrafting.addFluidRecipe(dirt, clay, manaLiquid, 1);
CauldronCrafting.addFluidRecipe(dirt * 4, clayBlock, manaLiquid, 4);

//Seeds
CauldronCrafting.addFluidRecipe(seedWheat, seedIronberry, manaLiquid, 1);
CauldronCrafting.addFluidRecipe(seedChili, seedWheat, wildBerryJuice, 1);
CauldronCrafting.addFluidRecipe(seedApple, seedIronberry, wildBerryJuice, 1);

//Extra mill recipe
recipes.addShaped(mill, [[null, null, cuisineHandle], [stoneTaiga, stoneTaiga, stoneTaiga], [stoneTaiga, stoneTaiga, stoneTaiga]]);

//Chili to lava
CauldronCrafting.addFluidTransform(lava, chiliPowder * 2, manaLiquid, 4, true);

//Taiga cobble production
CauldronCrafting.addFluidRecipe(cobbleTaiga, cobble, manaLiquid, 0);

//Flint
CauldronCrafting.addFluidRecipe(flint, nuggetIron, manaLiquid, 1);

//Slime
CauldronCrafting.addFluidRecipe(magmaCream, slimeball, manaLiquid, 1);

//Quartz sliver reconstruct
recipes.addShapeless(quartzNether, [quartzSliver, quartzSliver, quartzSliver, quartzSliver, quartzSliver, quartzSliver, quartzSliver, quartzSliver, quartzSliver]);

//Diorite
recipes.remove(diorite);
recipes.addShaped(diorite, [[quartzSliver, oreCobble],[oreCobble, quartzSliver]]);

//Granite
recipes.remove(granite);
recipes.addShapeless(granite, [oreDiorite, quartzSliver]);

//Minecolonies tools recipe conflicts
/*recipes.remove(colonyScanTool);
recipes.addShaped(colonyScanTool, [[null, null, diorite], [null, stick, null], [stick, null, null]]);
recipes.remove(colonyBuildingTool);
recipes.addShaped(colonyBuildingTool, [[null, null, andesite], [null, stick, null], [stick, null, null]]);*/

//Growth Powder
recipes.remove(growthPowder);
recipes.addShapeless(growthPowder * 3, [pestle.reuse(), seedWheat, redstone, pastureSeedInfused]);

//Meecreep box
recipes.remove(meecreepBox);
recipes.addShaped(meecreepBox, [[diamond, sapphire, diamond], [plankWisdomWood, chest, plankWisdomWood], [plankWisdomWood, ingotGold, plankWisdomWood]]);

//gold nuggets
CauldronCrafting.addFluidRecipe(nuggetGold, quartzSliver, manaLiquid, 1);

//Sugarcane seeds
CauldronCrafting.addFluidRecipe(seedSugarcane, seedWheat, water, 2);

//Sapphire
CauldronCrafting.addFluidRecipe(sapphire, amethyst, manaLiquid, 2);

//Duplicate Nacre recipe in Cauldron
CauldronCrafting.addFluidTransform(nacreLiquid, nuggetGold, manaLiquid);

//Tweak Cape recipe
recipes.remove(cape);
recipes.addShaped(cape, [[null, leather, null], [leather, nuggetGold, leather], [leather, sapphire, leather]]);

//Meatspin
CauldronCrafting.addFluidRecipe(rawMutton, rawChicken, nacreLiquid, 4);
CauldronCrafting.addFluidRecipe(rawChicken, rawPork, nacreLiquid, 4);
CauldronCrafting.addFluidRecipe(rawPork, rawBeef, nacreLiquid, 4);
CauldronCrafting.addFluidRecipe(rawBeef, rawMutton, nacreLiquid, 4);
ArcaneWorld.remove("arcaneworld:summon_chicken");
ArcaneWorld.createRitualSummon("summon_chicken2", "Conjure Chicken", "chicken", rawChicken, sapphire, bone);


//Alt Skeleton Summon
ArcaneWorld.remove("arcaneworld:summon_skeleton");
ArcaneWorld.createRitualSummon("summon_skeleton2", "Conjure Skeleton", "skeleton", boneshard, amethyst, boneshard, boneshard, boneshard);

//Sand
CauldronCrafting.addFluidRecipe(sand, soulSand, manaLiquid, 1);

//Gravel
CauldronCrafting.addFluidRecipe(gravel, basalt, manaLiquid, 1);

//Ritual Table
recipes.remove(ritualTable);
recipes.addShaped(ritualTable, [[null, paper, null], [ingotGold, amethyst, ingotGold], [blockSapphire, plankWisdomWood, blockSapphire]]);

//Angelic Statue
recipes.remove(angelicStatue);
ArcaneWorld.createRitualCreateItem("angel_statue", "Choir of Angels", angelicStatue, andesitePolished, angelHeart, haloCrude, feather);

//Misty World Portal stones
ArcaneWorld.createRitualCreateItem("mist_portal_upper", "Imbue Upper Portal Stone", mistyPortalUpper, stoneTaiga, portalCore, nuggetGold, amethyst, bottleEmpty);
ArcaneWorld.createRitualCreateItem("mist_portal_lower", "Imbue Lower Portal Stone", mistyPortalLower, stoneTaiga, portalCore, nuggetGold, amethyst, growthPowder);

//Aether Portal
ArcaneWorld.createRitualCreateItem("aether_portal", "Imbue Aether Portal", aetherPortal, andesitePolished, portalCore, portalCore, sapphire, ingotIron);