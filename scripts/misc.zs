////Imports
import mods.jei.JEI;
import mods.ArcaneWorld;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.game.IGame;
import scripts.globals;
import mods.naturesaura.Altar as NatureAltar;
import mods.roots.Fey;
import mods.aether_legacy.Enchanter;
import mods.buildersbag;
import mods.botania.ManaInfusion;

////Variables
val clayTile = <cathedral:firedtile>;
val terracottaShingle = <quark:hardened_clay_tiles>;
val chest = <ore:chestWood>;
val blockQuartz = <ore:blockQuartz>;
val itemQuartz = <ore:gemQuartz>;
val slabQuartz = <minecraft:stone_slab:7>;
val bone = <ore:bone>;
val amethyst = <arcaneworld:amethyst>;
val nuggetColdIron = <bewitchment:cold_iron_nugget>;
val nuggetSilver = <ore:nuggetSilver>;
val nuggetSilverEmbers = <embers:nugget_silver>;
val charcoal = <minecraft:coal:1>;
//Artifacts
val artifactsArray = [
	<artifacts:shiny_red_balloon>,
	<artifacts:obsidian_skull>,
	<artifacts:snorkel>,
	<artifacts:shock_pendant>,
	<artifacts:flame_pendant>,
	<artifacts:thorn_pendant>,
	<artifacts:ultimate_pendant>,
	<artifacts:panic_necklace>,
	<artifacts:lucky_horseshoe>,
	<artifacts:cobalt_shield>,
	<artifacts:whoopie_cushion>,
	<artifacts:bottled_cloud>,
	<artifacts:bottled_fart>,
	<artifacts:magma_stone>,
	<artifacts:feral_claws>,
	<artifacts:power_glove>,
	<artifacts:mechanical_glove>,
	<artifacts:fire_gauntlet>,
	<artifacts:drinking_hat>,
	<artifacts:star_cloak>,
	<artifacts:pocket_piston>,
	<artifacts:night_vision_goggles>
] as IItemStack[];
val oreArtifact = <ore:artifact>;
val kathairisLog = [
	<kathairis:mysticlog>,
	<kathairis:shinylog>,
	<kathairis:soullog>,
	<kathairis:stripped_mystic_log>,
	<kathairis:stripped_shiny_log>,
	<kathairis:stripped_soul_log>,
	<kathairis:redwood_log_full>,
	<kathairis:redwood_log_size_6>,
	<kathairis:redwood_log_size_5>,
	<kathairis:redwood_log_size_4>,
	<kathairis:redwood_log_size_3>,
	<kathairis:redwood_log_size_2>,
	<kathairis:redwood_log_size_1>
] as IItemStack[];
val oreLogWood = <ore:logWood>;
val chiselDiamond = <chisel:chisel_diamond>;
val chiselI = <chisel:chisel_hitech>;
val nacrePearl = <wizardry:nacre_pearl>;
val similsax = <similsaxtranstructors:similsaxtranstructorbasic>;
val similsaxAdv = <similsaxtranstructors:similsaxtranstructoradvanced>;
val nuggetDiamond = <extrabitmanipulation:diamond_nugget>;
val ingotIron = <minecraft:iron_ingot>;
val diamond = <minecraft:diamond>;
val ingotGold = <minecraft:gold_ingot>;
val enderPearl = <minecraft:ender_pearl>;
val bookNA = <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:natures_aura"});
val book = <minecraft:book>;
val saplingBS = <blue_skies:bluebright_sapling>|<blue_skies:lunar_sapling>|<blue_skies:starlit_sapling>|<blue_skies:frostbright_sapling>|<blue_skies:dusk_sapling>|<blue_skies:maple_sapling>;
val stick = <ore:stickWood>;
val bookCuisine = <cuisine:manual>;
val flour = <cuisine:food:1>;
val lunarStick = <blue_skies:lunar_stick>;
val ingotVentium = <blue_skies:ventium_ingot>;
val ingotHorizonite = <blue_skies:horizonite_ingot>;
val runestone = <roots:runestone>;
val gemPyrope = <blue_skies:pyrope_gem>;
val rodIron = <quark:iron_rod>;
val ingotManasteel = <botania:manaresource>;
val ingotSkies = <naturesaura:sky_ingot>;
val oreHorizonite = <blue_skies:horizonite_ore>;
val sandIron = <bloodmagic:component:19>;
val sandGold = <bloodmagic:component:20>;
val oreDustIron = <ore:dustIron>;
val oreDustGold = <ore:dustGold>;
//Architexture tools
val chiselIron = <chisel:chisel_iron>;
val chiselArch = <architecturecraft:chisel>;
val hammerArch = <architecturecraft:hammer>;
//BlC plate recipe tweak
val framedBlock = <blockcraftery:editable_block>;
val framedPlate = <blockcraftery:editable_pressure_plate_all>;
val framedBlockR = <blockcraftery:editable_block_reinforced>;
val framedPlateR = <blockcraftery:editable_pressure_plate_all_reinforced>;
//chain tweaks
val chainIronC = <cathedral:cathedral_chain_various>;
val chainItem = <quark:chain>;
val chainManasteel = <cathedral:cathedral_chain_various:6>;
val nuggetManasteel = <botania:manaresource:17>;
val chainBrass = <rusticthaumaturgy:chain_brass>;
val nuggetBrass = <thaumcraft:nugget:8>;
val chainGloves = <aether_legacy:chain_gloves>;
val horseArmourIron = <minecraft:iron_horse_armor>;
val horseArmourGold = <minecraft:golden_horse_armor>;
val horseArmourDiamond = <minecraft:diamond_horse_armor>;
val crumblingCatalyst = <naturesaura:crushing_catalyst>;
val soulBead = <quark:soul_bead>;
val bottledDarkness = <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"});
val manaPowder = <botania:manaresource:23>;
val radiantDust = <arcanearchives:radiant_dust>;
val candleIron = <rustic:candle>;
val candleGold = <rustic:candle_gold>;
val candleBrass = <rusticthaumaturgy:candle_brass>;
val oreCandle = <ore:candle>;
val wax = <ore:wax>;
val ingotBrass = <thaumcraft:ingot:2>;
val itemString = <minecraft:string>;
//sculptures
val sculptureStone = <magicalsculpture:magicalsculpture:1>;
val sculptureBase = <magicalsculpture:magicalsculpture>;
val sculptureChisel = <magicalsculpture:chisel>;
val amplifier = <magicalsculpture:amplifier>;
val amplifier2 = <magicalsculpture:amplifier:1>;
val amplifier3 = <magicalsculpture:amplifier:2>;
val amplifier4 = <magicalsculpture:amplifier:3>;
val sculptureRelic = <magicalsculpture:relic:*>;
val reincarnationDust = <magicalsculpture:reverser>;
//builders bag
val bBag1 = <buildersbag:builders_bag_tier_one>;
val bBag2 = <buildersbag:builders_bag_tier_two>;
val bBag3 = <buildersbag:builders_bag_tier_three>;
val bBag4 = <buildersbag:builders_bag_tier_four>;
val bBag5 = <buildersbag:builders_bag_tier_five>;
val leather = <minecraft:leather>;
val wisdomWoodPigmented = <wizardry:wisdom_wood_pigmented_planks>;
val sapphire = <arcaneworld:sapphire>;
val otherworldsCore = <contenttweaker:otherworlds_core>;
val feyLeather = <roots:fey_leather>;
val manaWeave = <botania:manaresource:22>;
val stardust = <astralsorcery:itemcraftingcomponent:2>;
val assemblyHalo = <botania:craftinghalo>;
val goldPowder = <naturesaura:gold_powder>;
val callingSpirit = <naturesaura:calling_spirit>;
val applePip = <dynamictrees:appleseed>;
val appleSeed = <rustic:apple_seeds>;
val mistPicks = [
	<mist:niobium_pickaxe>,
	<botania:manasteelpick>,
	<botania:elementiumpick>,
	<botania:terrapick>
] as IItemStack[];
val pressurePlateWood = <ore:pressurePlateWood>;
val sawBlade = <architecturecraft:sawblade>;
val pulley = <architecturecraft:largepulley>;
val sawBench = <architecturecraft:sawbench>;
val bookRustic = <rustic:book>;
val ironberries = <rustic:ironberries>;
val nuggetIron = <minecraft:iron_nugget>;

val doNotAddRepairRecipe = [
	<mist:flint_and_stone>,
	<aether_legacy:skyroot_pickaxe>,
	<aether_legacy:skyroot_axe>,
	<aether_legacy:skyroot_shovel>,
	<aether_legacy:skyroot_sword>,
	<aether_legacy:holystone_pickaxe>,
	<aether_legacy:holystone_axe>,
	<aether_legacy:holystone_shovel>,
	<aether_legacy:holystone_sword>,
	<aether_legacy:zanite_pickaxe>,
	<aether_legacy:zanite_axe>,
	<aether_legacy:zanite_shovel>,
	<aether_legacy:zanite_sword>,
	<aether_legacy:gravitite_pickaxe>,
	<aether_legacy:gravitite_axe>,
	<aether_legacy:gravitite_shovel>,
	<aether_legacy:gravitite_sword>,
	<aether_legacy:zanite_helmet>,
	<aether_legacy:zanite_chestplate>,
	<aether_legacy:zanite_leggings>,
	<aether_legacy:zanite_boots>,
	<aether_legacy:gravitite_helmet>,
	<aether_legacy:gravitite_chestplate>,
	<aether_legacy:gravitite_leggings>,
	<aether_legacy:gravitite_boots>,
	<minecraft:bow>,
	<minecraft:fishing_rod>,
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_hoe>,
	<minecraft:stone_pickaxe>,
	<minecraft:stone_axe>,
	<minecraft:stone_shovel>,
	<minecraft:stone_hoe>,
	<minecraft:iron_pickaxe>,
	<minecraft:iron_axe>,
	<minecraft:iron_shovel>,
	<minecraft:iron_hoe>,
	<minecraft:diamond_pickaxe>,
	<minecraft:diamond_axe>,
	<minecraft:diamond_shovel>,
	<minecraft:diamond_hoe>,
	<minecraft:leather_helmet>,
	<minecraft:leather_chestplate>,
	<minecraft:leather_leggings>,
	<minecraft:leather_boots>,
	<minecraft:iron_helmet>,
	<minecraft:iron_chestplate>,
	<minecraft:iron_leggings>,
	<minecraft:iron_boots>,
	<minecraft:golden_helmet>,
	<minecraft:golden_chestplate>,
	<minecraft:golden_leggings>,
	<minecraft:golden_boots>,
	<minecraft:chainmail_helmet>,
	<minecraft:chainmail_chestplate>,
	<minecraft:chainmail_leggings>,
	<minecraft:chainmail_boots>,
	<minecraft:diamond_helmet>,
	<minecraft:diamond_chestplate>,
	<minecraft:diamond_leggings>,
	<minecraft:diamond_boots>,
	<ebwizardry:magic_wand>,
	<ebwizardry:apprentice_wand>,
	<ebwizardry:advanced_wand>,
	<ebwizardry:master_wand>,
	<ebwizardry:novice_fire_wand>,
	<ebwizardry:apprentice_fire_wand>,
	<ebwizardry:advanced_fire_wand>,
	<ebwizardry:master_fire_wand>,
	<ebwizardry:novice_ice_wand>,
	<ebwizardry:apprentice_ice_wand>,
	<ebwizardry:advanced_ice_wand>,
	<ebwizardry:master_ice_wand>,
	<ebwizardry:novice_lightning_wand>,
	<ebwizardry:apprentice_lightning_wand>,
	<ebwizardry:advanced_lightning_wand>,
	<ebwizardry:master_lightning_wand>,
	<ebwizardry:novice_necromancy_wand>,
	<ebwizardry:apprentice_necromancy_wand>,
	<ebwizardry:advanced_necromancy_wand>,
	<ebwizardry:master_necromancy_wand>,
	<ebwizardry:novice_earth_wand>,
	<ebwizardry:apprentice_earth_wand>,
	<ebwizardry:advanced_earth_wand>,
	<ebwizardry:master_earth_wand>,
	<ebwizardry:novice_sorcery_wand>,
	<ebwizardry:apprentice_sorcery_wand>,
	<ebwizardry:advanced_sorcery_wand>,
	<ebwizardry:master_sorcery_wand>,
	<ebwizardry:novice_healing_wand>,
	<ebwizardry:apprentice_healing_wand>,
	<ebwizardry:advanced_healing_wand>,
	<ebwizardry:master_healing_wand>,
	<thebetweenlands:life_crystal>,
	<arcane_essentials:master_lightning_sword>,
	<arcane_essentials:master_sorcery_sword>,
	<arcane_essentials:master_nature_sword>,
	<arcane_essentials:master_fire_sword>,
	<arcane_essentials:master_ice_sword>,
	<arcane_essentials:master_healing_sword>,
	<arcane_essentials:master_necromancy_sword>,
	<astralsorcery:iteminfusedglass>,
	<botania:manamirror:*>,
	<thaumcraft:scribing_tools>,
	<arcaneworld:biome_crystal>,
	<thaumcraft:primordial_pearl>,
	<botania:manabottle>,
	<astralsorcery:itemcrystalsword>,
	<astralsorcery:itemcrystalpickaxe>,
	<astralsorcery:itemcrystalshovel>,
	<astralsorcery:itemcrystalaxe>,
	<astralsorcery:itemchargedcrystalaxe>,
	<astralsorcery:itemchargedcrystalsword>,
	<astralsorcery:itemchargedcrystalpickaxe>,
	<astralsorcery:itemchargedcrystalshovel>
] as IItemStack[];

//tweak clay tile related recipes
recipes.remove(terracottaShingle);
recipes.addShaped(terracottaShingle * 4, [[clayTile, clayTile], [clayTile, clayTile]]);

//Artifacts recycling
for artifact in artifactsArray {
	oreArtifact.add(artifact);
}
ArcaneWorld.createRitualSummon("summon_mimic", "Conjure Mimic", "artifacts:mimic", oreArtifact, oreArtifact, amethyst, bone);

//add kathairis logs to logWood oredict
for log in kathairisLog {
	oreLogWood.add(log);
}

//tweak iChisel recipe
recipes.remove(chiselI);
recipes.addShapeless(chiselI, [chiselDiamond, nacrePearl]);

//tweak similsax recipes
recipes.remove(similsax);
recipes.addShaped(similsax, [[ingotIron, null, ingotIron], [ingotIron, nuggetDiamond, ingotIron], [null, stick, null]]);
recipes.remove(similsaxAdv);
recipes.addShapeless(similsaxAdv, [similsax, enderPearl]);

//add recipe for redone NA book
recipes.addShapeless(bookNA, [book, saplingBS]);

//architecture tools
recipes.remove(chiselArch);
recipes.addShapeless(chiselIron, [chiselArch]);
recipes.addShapeless(chiselArch, [chiselIron]);
recipes.remove(hammerArch);
recipes.addShaped(hammerArch, [[ingotIron, ingotIron, null], [null, stick, ingotIron], [null, stick, null]]);

//tweak framed pressure plate recipe
recipes.remove(framedPlate);
recipes.addShaped(framedPlate, [[framedBlock, framedBlock]]);
recipes.remove(framedPlateR);
recipes.addShaped(framedPlateR, [[framedBlockR, framedBlockR]]);

//chains
recipes.addShaped(chainIronC * 28, [[chainItem], [chainItem], [chainItem]]);
recipes.remove(chainBrass);
recipes.addShaped(chainBrass * 4, [[nuggetBrass], [nuggetBrass], [nuggetBrass]]);
recipes.addShaped(chainManasteel * 4, [[nuggetManasteel], [nuggetManasteel], [nuggetManasteel]]);

//chainmail gloves
recipes.addShaped(chainGloves, [[chainItem, null, chainItem]]);

//cuisine book
recipes.remove(bookCuisine);
recipes.addShapeless(bookCuisine, [book, flour]);

//horse armour recycling
NatureAltar.addRecipe("iron_horse_armour", horseArmourIron, ingotIron * 6, crumblingCatalyst, 15000, 80);
NatureAltar.addRecipe("gold_horse_armour", horseArmourGold, ingotGold * 6, crumblingCatalyst, 15000, 80);
NatureAltar.addRecipe("diamond_horse_armour", horseArmourDiamond, diamond * 6, crumblingCatalyst, 15000, 80);

//sculpture stuff
recipes.remove(sculptureChisel);
recipes.addShaped(sculptureChisel, [[null, ingotIron], [lunarStick, null]]);
recipes.remove(sculptureBase);
recipes.addShaped(sculptureBase, [[runestone, runestone, runestone], [runestone, ingotVentium, runestone], [runestone, runestone, runestone]]);
recipes.remove(sculptureStone);
recipes.addShaped(sculptureStone * 4, [[runestone, runestone, runestone], [runestone, ingotHorizonite, runestone], [runestone, runestone, runestone]]);

//sculpture amplifiers
recipes.remove(amplifier);
recipes.remove(amplifier2);
recipes.remove(amplifier3);
recipes.remove(amplifier4);
recipes.addShaped(amplifier, [[rodIron, runestone, rodIron], [runestone, enderPearl, runestone], [rodIron, runestone, rodIron]]);
recipes.addShaped(amplifier2, [[rodIron, runestone, rodIron], [runestone, gemPyrope, runestone], [rodIron, runestone, rodIron]]);
recipes.addShaped(amplifier3, [[null, ingotManasteel, null], [ingotManasteel, amplifier2, ingotManasteel], [null, ingotManasteel, null]]);
recipes.addShaped(amplifier4, [[amplifier, ingotSkies, amplifier], [ingotSkies, amplifier3, ingotSkies], [amplifier, ingotSkies, amplifier]]);

//reincarnation powder
recipes.remove(reincarnationDust);
Fey.addRecipe("reincpowder", reincarnationDust * 3, [radiantDust, soulBead, bottledDarkness, manaPowder, manaPowder]);

//BS ore location hints
oreHorizonite.addTooltip(format.gold("Found deep beneath the Crystal Dunes"));

furnace.remove(charcoal);
furnace.addRecipe(charcoal, oreLogWood, 0.15);

/*for repairable in repairables {
	Enchanter.registerEnchantment(repairable, 600);
}*/

for item in game.items {
	if (item.name != "tile.air") {
    	if (item.makeStack().isDamageable == true) {
      		var blacklisted = false;
      		for itemToIgnore in doNotAddRepairRecipe {
        		if (item.name == itemToIgnore.definition.name) {
          			blacklisted = true;
        		}
      		}
      		if (!blacklisted) {
        		var durability = item.makeStack().maxDamage;
        		Enchanter.registerEnchantment(item.makeStack(), durability * 2);
      		}
    	}
  	}
}

//remove iron and gold sands from dust oredict
oreDustIron.remove(sandIron);
oreDustGold.remove(sandGold);

game.setLocalization("en_us", "enchantment.ebwizardry:magic_protection", "Spell Protection");

//candles
recipes.remove(candleBrass);
recipes.addShaped(candleIron * 8, [[oreCandle], [ingotIron]]);
recipes.addShaped(candleGold * 8, [[oreCandle], [ingotGold]]);
recipes.addShaped(candleBrass * 8, [[oreCandle], [ingotBrass]]);
recipes.addShaped(candleBrass * 4, [[itemString], [wax], [ingotBrass]]);

//builders bags
bBag1.addTooltip(format.blue("Shift-Right-Click to Open"));
recipes.remove(bBag2);
bBag2.addTooltip(format.blue("Shift-Right-Click to Open"));
recipes.remove(bBag3);
bBag3.addTooltip(format.blue("Shift-Right-Click to Open"));
recipes.remove(bBag4);
bBag4.addTooltip(format.blue("Shift-Right-Click to Open"));
recipes.remove(bBag5);
bBag5.addTooltip(format.blue("Shift-Click to Open"));
buildersbag.addBagUpgradeRecipeShaped("b_bag_t2", bBag2, [[null, nacrePearl, null], [leather, bBag1, leather], [wisdomWoodPigmented, leather, wisdomWoodPigmented]]);
buildersbag.addBagUpgradeRecipeShaped("b_bag_t3", bBag3, [[null, otherworldsCore, null], [leather, bBag2, leather], [sapphire, leather, sapphire]]);
buildersbag.addBagUpgradeRecipeShaped("b_bag_t4", bBag4, [[null, assemblyHalo, null], [manaWeave, bBag3, manaWeave], [stardust, manaWeave, stardust]]);
buildersbag.addBagUpgradeRecipeShaped("b_bag_t5", bBag5, [[null, callingSpirit, null], [feyLeather, bBag4, feyLeather], [goldPowder, feyLeather, goldPowder]]);

//misty mining tooltip
for pick in mistPicks {
	pick.addTooltip(format.blue("Mistborn"));
}

//apple upgrades
ManaInfusion.addInfusion(appleSeed, applePip, 10000);

//allow all wooden pressure plates in sawbench recipe
recipes.remove(sawBench);
recipes.addShaped(sawBench, [[ingotIron, sawBlade, ingotIron], [stick, pulley, stick], [stick, pressurePlateWood, stick]]);

//tweak rustic almanac recipe
recipes.remove(bookRustic);
recipes.addShapeless(bookRustic, [book, ironberries, nuggetIron]);