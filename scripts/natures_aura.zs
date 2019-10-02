////Imports
import mods.naturesaura.Altar as NatureAltar;
import mods.naturesaura.TreeRitual;
import mods.naturesaura.AnimalSpawner;
import mods.astralsorcery.Grindstone;
import mods.cuisine.Mill;
import mods.ArcaneWorld;
import mods.inspirations.Cauldron as CauldronCrafting;
import scripts.globals;

////Variables
val goldShroom = <mist:mushrooms_food:23>;
val brilliantFibre = <naturesaura:gold_fiber>;
val leaves = <ore:treeLeaves>;
val goldLeaves = <aether_legacy:aether_leaves:1>;
val nuggetGold = <ore:nuggetGold>;
val tallGrassBS = <blue_skies:turquoise_tallgrass>|<blue_skies:lunar_tallgrass>|<blue_skies:cherry_tallgrass>;
val shardMoonstone = <blue_skies:moonstone_shard>;
val infusedStone = <naturesaura:infused_stone>;
val turqoiseStone = <blue_skies:turquoise_stone>;
val lunarStone = <blue_skies:lunar_stone>;
val goldLeaf = <naturesaura:gold_leaf>;
val goldDust = <naturesaura:gold_powder>;
val powderOre = <naturesaura:effect_powder>.withTag({effect: "naturesaura:ore_spawn"});
val powderGrowth = <naturesaura:effect_powder>.withTag({effect: "naturesaura:plant_boost"});
val preciaMundane = <contenttweaker:precia_mundane>;
val metalliaMundane = <contenttweaker:metallia_mundane>;
val saplingBluebright = <blue_skies:bluebright_sapling>;
val tokenJoy = <naturesaura:token_joy>;
val mysticalFlower = <botania:flower:*>;
val illuminationPowder = <astralsorcery:itemusabledust>;
val bottledSunlight = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"});
val ingotHorizonite = <blue_skies:horizonite_ingot>;
val blockHorizonite = <blue_skies:horizonite_block>;
val cherry = <blue_skies:cherry>;
val woodStand = <naturesaura:wood_stand>;
val logStarlit = <blue_skies:starlit_log>;
val sapphire = <arcaneworld:sapphire>;
val milk = <liquid:milk>;
val blockCheese = <rats:block_of_cheese>;
val cheese = <rats:cheese>;
val corn = <cuisine:crops:13>;
val ingotSkies = <naturesaura:sky_ingot>;
val ingotInfused = <naturesaura:infused_iron>;
val blockInfused = <naturesaura:infused_iron_block>;

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

//bountiful ore powder
TreeRitual.removeRecipe(powderOre);
TreeRitual.addRecipe("ore_spawn_powder", saplingBluebright, powderOre * 12, 400, [goldDust, goldDust, preciaMundane, metalliaMundane]);

//steady growth powder
TreeRitual.removeRecipe(powderGrowth);
TreeRitual.addRecipe("plant_boost_powder", saplingBluebright, powderGrowth * 12, 400, [goldDust, goldDust, ingotSkies, corn]);

//Joy token
TreeRitual.removeRecipe(tokenJoy);
TreeRitual.addRecipe("token_joy", saplingBluebright, tokenJoy * 2, 200, [bottledSunlight, goldLeaf, mysticalFlower, cherry, illuminationPowder, ingotHorizonite]);

//Wooden stand recipe
recipes.remove(woodStand);
ArcaneWorld.createRitualCreateItem("aura_wooden_stand", "Imbue Ritual Stand", woodStand, logStarlit, goldLeaf, sapphire);

//Birthing recipe for rats
AnimalSpawner.addRecipe("rat", "rats:rat", 80000, 60, [cheese]);

//Tweak Infused Iron to be Infused Horizonite instead
globals.setNewName(ingotInfused, "Infused Horizonite Ingot");
globals.setNewName(blockInfused, "Infused Horizonite Block");
NatureAltar.removeRecipe(ingotInfused);
NatureAltar.addRecipe("infused_iron", ingotHorizonite, ingotInfused, null, 15000, 80);
NatureAltar.removeRecipe(blockInfused);
NatureAltar.addRecipe("infused_iron_block", blockHorizonite, blockInfused, null, 15000, 80);