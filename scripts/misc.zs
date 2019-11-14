////Imports
import mods.jei.JEI;
import mods.ArcaneWorld;
import crafttweaker.item.IItemStack;
import scripts.globals;
import mods.naturesaura.Altar as NatureAltar;

////Variables
val clayTile = <cathedral:firedtile>;
val terracottaShingle = <quark:hardened_clay_tiles>;
//val yabbaBarrel = <yabba:item_barrel>;
//val yabbaBarrelCrate = <yabba:item_barrel>.withTag({BlockEntityTag: {Model: "crate", Skin: "minecraft:quartz_block_chiseled"}});
val chest = <ore:chestWood>;
val blockQuartz = <ore:blockQuartz>;
val itemQuartz = <ore:gemQuartz>;
val slabQuartz = <minecraft:stone_slab:7>;
val bone = <ore:bone>;
val amethyst = <arcaneworld:amethyst>;
val nuggetColdIron = <bewitchment:cold_iron_nugget>;
val nuggetSilver = <ore:nuggetSilver>;
val nuggetSilverEmbers = <embers:nugget_silver>;
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