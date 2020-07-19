////Imports
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.dropt.Dropt;
import mods.botania.Orechid;
import mods.botania.ManaInfusion;
import mods.botaniatweaks.Agglomeration;
import mods.botaniatweaks.AgglomerationMultiblock;
import mods.botaniatweaks.AgglomerationRecipe;
import mods.astralsorcery.Lightwell;
import mods.astralsorcery.LiquidInteraction;
import mods.astralsorcery.Altar;
import mods.inspirations.Cauldron as CauldronCrafting;

////Variables
//Multiblocks
val catalystInert = <contenttweaker:catalyst_inert>;
val catalystStarlit = <contenttweaker:catalyst_starlit>;
val catalystInert2 = <contenttweaker:catalyst_inert_2>;
val catalystStarlit2 = <contenttweaker:catalyst_starlit_2>;
val brickLunar = <blue_skies:lunar_stonebrick>;
val brickTurquoise = <blue_skies:turquoise_stonebrick>;
var multiblockLunar = AgglomerationMultiblock.create().checker(brickLunar, catalystStarlit).edgeReplace(catalystInert);
var multiblockTurquoise = AgglomerationMultiblock.create().checker(brickTurquoise, catalystStarlit2).edgeReplace(catalystInert2);
val runeStarlight = <contenttweaker:rune_starlight>;
val runeMana = <botania:rune:8>;
val tokenJoy = <naturesaura:token_joy>;

//Base ingredients
val powderBountiful = <naturesaura:effect_powder>.withTag({effect: "naturesaura:ore_spawn"});
val emberCrystal = <embers:crystal_ember>;
val liquidMana = <liquid:mana_fluid>;
val preciaOre = <contenttweaker:precia_ore>;
val dictPreciaOre = <ore:orePrecia>;
val metalliaOre = <contenttweaker:metallia_ore>;
val dictMetalliaOre = <ore:oreMetallia>;
val metalliaMundane = <contenttweaker:metallia_mundane>;
val metalliaAwakened = <contenttweaker:metallia_awakened>;
val preciaMundane = <contenttweaker:precia_mundane>;
val preciaAwakened = <contenttweaker:precia_awakened>;
val manaLiquid = <liquid:mana_fluid>;
var arrayOresFromOrechid = [
	"oreAluminum", "oreIron", "oreOsmium", "oreMythril", "oreInfusedFire",
	"oreTin", "oreCertusQuartz", "oreMCropsEssence", "oreChimerite", "oreRuby",
	"oreCinnabar", "oreLead", "oreSapphire", "oreCoal", "oreVinteum",
	"oreTungsten", "oreEmerald", "orePlatinum", "oreDarkIron", "oreUranium",
	"oreNickel", "oreLapis", "oreInfusedEntropy", "oreAdamantium", "oreInfusedAir",
	"oreInfusedEarth", "oreFzDarkIron", "oreAmber", "oreOlivine", "oreMithril",
	"oreSilver", "oreInfusedOrder", "oreGold", "oreGalena", "oreBlueTopaz",
	"oreDark", "oreInfusedWater", "oreZinc", "oreQuartzBlack", "oreRedstone",
	"oreSulfur", "oreCopper", "oreYellorite", "oreApatite", "oreDiamond"
] as string[];

//Metals
//Iron
val metalliaIron = <contenttweaker:material_part>;
val ethericIron = <liquid:iron_etheric>;
val ingotIron = <minecraft:iron_ingot>;
val clusterIron = <thaumcraft:cluster>;
//Gold
val metalliaGold = <contenttweaker:material_part:1>;
val ethericGold = <liquid:gold_etheric>;
val ingotGold = <minecraft:gold_ingot>;
//Copper
val metalliaCopper = <contenttweaker:material_part:2>;
val ethericCopper = <liquid:copper_etheric>;
val ingotCopper = <embers:ingot_copper>;
//Lead
val metalliaLead = <contenttweaker:material_part:3>;
val ethericLead = <liquid:lead_etheric>;
val ingotLead = <embers:ingot_lead>;
//Silver
val metalliaSilver = <contenttweaker:material_part:4>;
val ethericSilver = <liquid:silver_etheric>;
val ingotSilver = <embers:ingot_silver>;
//Aluminium
val metalliaAluminium = <contenttweaker:material_part:5>;
val ethericAluminium = <liquid:aluminium_etheric>;
val ingotAluminium = <embers:ingot_aluminum>;
//Nickel
val metalliaNickel = <contenttweaker:material_part:6>;
val ethericNickel = <liquid:nickel_etheric>;
val ingotNickel = <embers:ingot_nickel>;
//Tin
val metalliaTin = <contenttweaker:material_part:7>;
val ethericTin = <liquid:tin_etheric>;
val ingotTin = <embers:ingot_tin>;
//Niobium
val metalliaNiobium = <contenttweaker:material_part:8>;
val ethericNiobium = <liquid:niobium_etheric>;
val ingotNiobium = <mist:niobium_ingot>;
//Falsite
val metalliaFalsite = <contenttweaker:material_part:9>;
val ethericFalsite = <liquid:falsite_etheric>;
val ingotFalsite = <blue_skies:falsite_ingot>;
//Ventium
val metalliaVentium = <contenttweaker:material_part:10>;
val ethericVentium = <liquid:ventium_etheric>;
val ingotVentium = <blue_skies:ventium_ingot>;
//Horizonite
val metalliaHorizonite = <contenttweaker:material_part:11>;
val ethericHorizonite = <liquid:horizonite_etheric>;
val ingotHorizonite = <blue_skies:horizonite_ingot>;
//Titanium
val metalliaTitanium = <contenttweaker:material_part:12>;
val ethericTitanium = <liquid:titanium_etheric>;
val ingotTitanium = <kathairis:titaniumingot>;
//Syrmorite
val metalliaSyrmorite = <contenttweaker:material_part:13>;
val ethericSyrmorite = <liquid:syrmorite_etheric>;
val ingotSyrmorite = <thebetweenlands:items_misc:11>;
//Octine
val metalliaOctine = <contenttweaker:material_part:127>;
val ethericOctine = <liquid:octine_etheric>;
val ingotOctine = <thebetweenlands:octine_ingot>;

val metalToMetallia = {} as IItemStack[][IItemStack];
metalToMetallia[metalliaIron] = [ingotIron] as IItemStack[];
metalToMetallia[metalliaGold] = [ingotGold] as IItemStack[];
metalToMetallia[metalliaCopper] = [ingotCopper] as IItemStack[];
metalToMetallia[metalliaLead] = [ingotLead] as IItemStack[];
metalToMetallia[metalliaSilver] = [ingotSilver] as IItemStack[];
metalToMetallia[metalliaAluminium] = [ingotAluminium] as IItemStack[];
metalToMetallia[metalliaNickel] = [ingotNickel] as IItemStack[];
metalToMetallia[metalliaTin] = [ingotTin] as IItemStack[];
metalToMetallia[metalliaNiobium] = [ingotNiobium] as IItemStack[];
metalToMetallia[metalliaFalsite] = [ingotFalsite] as IItemStack[];
metalToMetallia[metalliaVentium] = [ingotVentium] as IItemStack[];
metalToMetallia[metalliaHorizonite] = [ingotHorizonite] as IItemStack[];
metalToMetallia[metalliaTitanium] = [ingotTitanium] as IItemStack[];
metalToMetallia[metalliaSyrmorite] = [ingotSyrmorite] as IItemStack[];
metalToMetallia[metalliaOctine] = [ingotOctine] as IItemStack[];

val metalliaToEtheric = {} as ILiquidStack[IItemStack];
metalliaToEtheric[metalliaIron] = ethericIron;
metalliaToEtheric[metalliaGold] = ethericGold;
metalliaToEtheric[metalliaCopper] = ethericCopper;
metalliaToEtheric[metalliaLead] = ethericLead;
metalliaToEtheric[metalliaSilver] = ethericSilver;
metalliaToEtheric[metalliaAluminium] = ethericAluminium;
metalliaToEtheric[metalliaNickel] = ethericNickel;
metalliaToEtheric[metalliaTin] = ethericTin;
metalliaToEtheric[metalliaNiobium] = ethericNiobium;
metalliaToEtheric[metalliaFalsite] = ethericFalsite;
metalliaToEtheric[metalliaVentium] = ethericVentium;
metalliaToEtheric[metalliaHorizonite] = ethericHorizonite;
metalliaToEtheric[metalliaTitanium] = ethericTitanium;
metalliaToEtheric[metalliaSyrmorite] = ethericSyrmorite;
metalliaToEtheric[metalliaOctine] = ethericOctine;

//Precious mats
//coal
val preciaCoal = <contenttweaker:material_part:40>;
val ethericCoal = <liquid:coal_etheric>;
val gemCoal = <minecraft:coal>;
//redstone
val preciaRedstone = <contenttweaker:material_part:42>;
val ethericRedstone = <liquid:redstone_etheric>;
val gemRedstone = <minecraft:redstone>;
//lapis
val preciaLapis = <contenttweaker:material_part:44>;
val ethericLapis = <liquid:lapis_lazuli_etheric>;
val gemLapis = <minecraft:dye:4>;
//diamond
val preciaDiamond = <contenttweaker:material_part:46>;
val ethericDiamond = <liquid:diamond_etheric>;
val gemDiamond = <minecraft:diamond>;
//emerald
val preciaEmerald = <contenttweaker:material_part:48>;
val ethericEmerald = <liquid:emerald_etheric>;
val gemEmerald = <minecraft:emerald>;
//quartz
val preciaQuartz = <contenttweaker:material_part:50>;
val ethericQuartz = <liquid:nether_quartz_etheric>;
val gemQuartz = <minecraft:quartz>;
//ambrosiu
val preciaAmbrosium = <contenttweaker:material_part:52>;
val ethericAmbrosium = <liquid:ambrosium_etheric>;
val gemAmbrosium = <aether_legacy:ambrosium_shard>;
//zanite
val preciaZanite = <contenttweaker:material_part:54>;
val ethericZanite = <liquid:zanite_etheric>;
val gemZanite = <aether_legacy:zanite_gemstone>;
//sapphire
val preciaSapphire = <contenttweaker:material_part:56>;
val ethericSapphire = <liquid:sapphire_etheric>;
val gemSapphire = <arcaneworld:sapphire>;
//amethyst
val preciaAmethyst = <contenttweaker:material_part:58>;
val ethericAmethyst = <liquid:amethyst_etheric>;
val gemAmethyst = <arcaneworld:amethyst>;
//diopside
val preciaDiopside = <contenttweaker:material_part:60>;
val ethericDiopside = <liquid:diopside_etheric>;
val gemDiopside = <blue_skies:diopside_gem>;
//pyrope
val preciaPyrope = <contenttweaker:material_part:62>;
val ethericPyrope = <liquid:pyrope_etheric>;
val gemPyrope = <blue_skies:pyrope_gem>;
//turquois
val preciaTurquoise = <contenttweaker:material_part:64>;
val ethericTurquoise = <liquid:turquoise_etheric>;
val gemTurquoise = <blue_skies:turquoise_gem>;
//charoite
val preciaCharoite = <contenttweaker:material_part:66>;
val ethericCharoite = <liquid:charoite_etheric>;
val gemCharoite = <blue_skies:charoite>;
//moonstone
val preciaMoonstone = <contenttweaker:material_part:68>;
val ethericMoonstone = <liquid:moonstone_etheric>;
val gemMoonstone = <blue_skies:moonstone>;
//crystal quartz
/*val preciaCrystalQuartz = <contenttweaker:crystal_quartz_precious_materia>;
val ethericCrystalQuartz = <liquid:crystal_quartz_etheric>;
val gemCrystalQuartz = <corvus:crystal_quartz>;
//wiser gem
val preciaWiserGem = <contenttweaker:wiser_gem_precious_materia>;
val ethericWiserGem = <liquid:wiser_gem_etheric>;
val gemWiserGem = <corvus:wiser_gem>;*/
//cinnabar
val preciaQuicksilver = <contenttweaker:material_part:74>;
val ethericQuicksilver = <liquid:quicksilver_etheric>;
val gemQuicksilver = <thaumcraft:quicksilver>;
//amber
val preciaAmber = <contenttweaker:material_part:76>;
val ethericAmber = <liquid:amber_etheric>;
val gemAmber = <thaumcraft:amber>;
//valonite
val preciaValonite = <contenttweaker:material_part:78>;
val ethericValonite = <liquid:valonite_etheric>;
val gemValonite = <thebetweenlands:items_misc:19>;
//sulfur
val preciaSulfur = <contenttweaker:material_part:80>;
val ethericSulfur = <liquid:sulfur_etheric>;
val gemSulfur = <thebetweenlands:items_misc:18>;
//garnet
val preciaGarnet = <contenttweaker:material_part:82>;
val ethericGarnet = <liquid:garnet_etheric>;
val gemGarnet = <bewitchment:garnet>;
//Opal
val preciaOpal = <contenttweaker:material_part:128>;
val ethericOpal = <liquid:opal_etheric>;
val gemOpal = <bewitchment:opal>;

val preciousToPrecia = {} as IItemStack[][IItemStack];
preciousToPrecia[preciaCoal] = [gemCoal];
preciousToPrecia[preciaRedstone] = [gemRedstone];
preciousToPrecia[preciaLapis] = [gemLapis];
preciousToPrecia[preciaDiamond] = [gemDiamond];
preciousToPrecia[preciaEmerald] = [gemEmerald];
preciousToPrecia[preciaQuartz] = [gemQuartz];
preciousToPrecia[preciaAmbrosium] = [gemAmbrosium];
preciousToPrecia[preciaZanite] = [gemZanite];
preciousToPrecia[preciaSapphire] = [gemSapphire];
preciousToPrecia[preciaAmethyst] = [gemAmethyst];
preciousToPrecia[preciaDiopside] = [gemDiopside];
preciousToPrecia[preciaPyrope] = [gemPyrope];
preciousToPrecia[preciaTurquoise] = [gemTurquoise];
preciousToPrecia[preciaCharoite] = [gemCharoite];
preciousToPrecia[preciaMoonstone] = [gemMoonstone];
preciousToPrecia[preciaQuicksilver] = [gemQuicksilver];
preciousToPrecia[preciaAmber] = [gemAmber];
preciousToPrecia[preciaValonite] = [gemValonite];
preciousToPrecia[preciaSulfur] = [gemSulfur];
preciousToPrecia[preciaGarnet] = [gemGarnet];
preciousToPrecia[preciaOpal] = [gemOpal];

val preciaToEtheric = {} as ILiquidStack[IItemStack];
preciaToEtheric[preciaCoal] = ethericCoal;
preciaToEtheric[preciaRedstone] = ethericRedstone;
preciaToEtheric[preciaLapis] = ethericLapis;
preciaToEtheric[preciaDiamond] = ethericDiamond;
preciaToEtheric[preciaEmerald] = ethericEmerald;
preciaToEtheric[preciaQuartz] = ethericQuartz;
preciaToEtheric[preciaAmbrosium] = ethericAmbrosium;
preciaToEtheric[preciaZanite] = ethericZanite;
preciaToEtheric[preciaSapphire] = ethericSapphire;
preciaToEtheric[preciaAmethyst] = ethericAmethyst;
preciaToEtheric[preciaDiopside] = ethericDiopside;
preciaToEtheric[preciaPyrope] = ethericPyrope;
preciaToEtheric[preciaTurquoise] = ethericTurquoise;
preciaToEtheric[preciaCharoite] = ethericCharoite;
preciaToEtheric[preciaMoonstone] = ethericMoonstone;
preciaToEtheric[preciaQuicksilver] = ethericQuicksilver;
preciaToEtheric[preciaAmber] = ethericAmber;
preciaToEtheric[preciaValonite] = ethericValonite;
preciaToEtheric[preciaSulfur] = ethericSulfur;
preciaToEtheric[preciaGarnet] = ethericGarnet;
preciaToEtheric[preciaOpal] = ethericOpal;

//Tweak Orechid to only produce Materia ores
for ore in arrayOresFromOrechid {
	Orechid.removeOre(ore);
}
dictPreciaOre.add(preciaOre);
dictMetalliaOre.add(metalliaOre);
Orechid.addOre(dictPreciaOre, 35);
Orechid.addOre(dictMetalliaOre, 65);
Dropt.list("materia_ore").add(Dropt.rule().matchBlocks(["contenttweaker:precia_ore"]).addDrop(Dropt.drop().items([preciaMundane]))).add(Dropt.rule().matchBlocks(["contenttweaker:metallia_ore"]).addDrop(Dropt.drop().items([metalliaMundane])));
//catalyst recipe
Altar.addConstellationAltarRecipe("shaped/internal/inertCatalystLunar", catalystInert * 2, 3200, 200, [null, runeStarlight, null, ingotFalsite, tokenJoy, ingotFalsite, null, runeMana, null, brickLunar, brickLunar, brickLunar, brickLunar, brickLunar, brickLunar, null, null, null, null, brickLunar, brickLunar]);
Altar.addConstellationAltarRecipe("shaped/internal/inertCatalystTurquoise", catalystInert2 * 2, 3200, 200, [null, runeStarlight, null, ingotFalsite, tokenJoy, ingotFalsite, null, runeMana, null, brickTurquoise, brickTurquoise, brickTurquoise, brickTurquoise, brickTurquoise, brickTurquoise, null, null, null, null, brickTurquoise, brickTurquoise]);
//materia awakening
preciaMundane.addTooltip(format.gold("Harvested from Precia Ore"));
metalliaMundane.addTooltip(format.gold("Harvested from Metallia Ore"));
ManaInfusion.addInfusion(preciaAwakened, preciaMundane, 2000);
ManaInfusion.addInfusion(metalliaAwakened, metalliaMundane, 1500);

//Metals to metallia
for metallia, metal in metalToMetallia {
	var ingotRecipe = AgglomerationRecipe.create().output(metallia).inputs([powderBountiful, metal[0], emberCrystal, metalliaAwakened]).manaCost(40000).multiblock(multiblockLunar);
	Agglomeration.addRecipe(ingotRecipe);
	//var clusterRecipe = AgglomerationRecipe.create().output(metallia * 2).inputs([powderBountiful, metal[1], emberCrystal]).manaCost(60000).multiblock(multiblockLunar);
	//Agglomeration.addRecipe(clusterRecipe);
	CauldronCrafting.addFluidRecipe(metal[0] * 3, metallia, manaLiquid, 4);
	Lightwell.addLiquefaction(metallia, metalliaToEtheric[metallia], 0.8F, 8, 0);
	LiquidInteraction.addInteraction(liquidMana * 500, 0.4, metalliaToEtheric[metallia] * 200, 0.8, 100, metal[0]);
	metalliaToEtheric[metallia].addTooltip(format.gold("Interacts with Liquid Mana in Containment Chalices"));
}

//Precious mats to precia
for precia, gem in preciousToPrecia {
	var gemRecipe = AgglomerationRecipe.create().output(precia).inputs([powderBountiful, gem[0], emberCrystal, preciaAwakened]).manaCost(50000).multiblock(multiblockTurquoise);
	Agglomeration.addRecipe(gemRecipe);
	CauldronCrafting.addFluidRecipe(gem[0] * 3, precia, manaLiquid, 4);
	Lightwell.addLiquefaction(precia, preciaToEtheric[precia], 0.8F, 8, 0);
	LiquidInteraction.addInteraction(liquidMana * 500, 0.4, preciaToEtheric[precia] * 200, 0.8, 100, gem[0]);
	preciaToEtheric[precia].addTooltip(format.gold("interacts with Liquid Mana in Containment Chalices"));
}