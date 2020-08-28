import mods.naturesaura.Altar as NatureAltar;
import mods.astralsorcery.Altar;
import mods.arcanearchives.GCT;
import mods.spawntabletweaker;
import crafttweaker.game.IGame;
import crafttweaker.world.IBiome;

////variables
val crystalFlower = <ebwizardry:crystal_flower>;
val crystalMagic = <ebwizardry:magic_crystal>;
val crystalFiery = <ebwizardry:magic_crystal:1>;
val crystalIcy = <ebwizardry:magic_crystal:2>;
val crystalStormy = <ebwizardry:magic_crystal:3>;
val crystalDark = <ebwizardry:magic_crystal:4>;
val crystalVerdant = <ebwizardry:magic_crystal:5>;
val crystalMystical = <ebwizardry:magic_crystal:6>;
val crystalRadiant = <ebwizardry:magic_crystal:7>;
val crystalFlowerBS = <blue_skies:crystal_flower>;
val workbench = <ebwizardry:arcane_workbench>;
val crystalSandstoneSmooth = <blue_skies:smooth_crystal_sandstone>;
val radiantQuartz = <arcanearchives:raw_quartz>;
val lapis = <minecraft:dye:4>;
val goldPowder = <naturesaura:gold_powder>;
val blockAmethyst = <arcaneworld:block_amethyst>;
val visAqua = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]});
val visTerra = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]});
val visAer = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]});
val visIgnis = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]});
val visPerditio = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]});
val visOrdo = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]});
val visSol = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "sol"}]});
val dustRadiant = <arcanearchives:radiant_dust>;

//mob management
val wlBiomes = [
	"blue_skies:calming_skies",
	"blue_skies:brightlands",
	"blue_skies:peeking_oceans",
	"blue_skies:pale_swamplands",
	"blue_skies:frostbit_forest",
	"blue_skies:unorthodox_valley",
	"blue_skies:shaded_woods",
	"blue_skies:crystal_dunes",
	"blue_skies:sunset_maple_forest"
] as string[];
val mobs = [
	"ebwizardry:evil_wizard",
	"ebwizardry:lightning_wraith",
	"ebwizardry:ice_wraith"
] as string[];

//Magic Crystal from flowers
recipes.removeByRecipeName("ebwizardry:crystal_flower_to_crystals");
NatureAltar.addRecipe("magic_crystal", crystalFlower, crystalMagic, null, 10000, 50);
NatureAltar.addRecipe("magic_crystal_alt", crystalFlowerBS, crystalMagic, null, 10000, 50);

//arcane workbench
recipes.remove(workbench);
Altar.addConstellationAltarRecipe("internal/altar/arcane_workbench", workbench, 3000, 500, [radiantQuartz, goldPowder, radiantQuartz, goldPowder, blockAmethyst, goldPowder, radiantQuartz, goldPowder, radiantQuartz, crystalMagic, crystalMagic, crystalMagic, crystalMagic, crystalSandstoneSmooth, crystalSandstoneSmooth, lapis, lapis, lapis, lapis, crystalSandstoneSmooth, crystalSandstoneSmooth]);

//elemental crystals
GCT.addRecipe("crystal_fiery", crystalFiery, [crystalMagic * 5, crystalFiery, dustRadiant * 2, visIgnis * 2]);
GCT.addRecipe("crystal_icy", crystalIcy, [crystalMagic * 5, crystalIcy, dustRadiant * 2, visAqua * 2]);
GCT.addRecipe("crystal_stormy", crystalStormy, [crystalMagic * 5, crystalStormy, dustRadiant * 2, visAer * 2]);
GCT.addRecipe("crystal_dark", crystalDark, [crystalMagic * 5, crystalDark, dustRadiant * 2, visPerditio * 2]);
GCT.addRecipe("crystal_verdant", crystalVerdant, [crystalMagic * 5, crystalVerdant, dustRadiant * 2, visTerra * 2]);
GCT.addRecipe("crystal_mystical", crystalMystical, [crystalMagic * 5, crystalMystical, dustRadiant * 2, visOrdo * 2]);
GCT.addRecipe("crystal_radiant", crystalRadiant, [crystalMagic * 5, crystalRadiant, dustRadiant * 2, visSol * 2]);
crystalFiery.addTooltip(format.gold("Looted from Shrines and Obelisks in the Everbright and Everdawn"));
crystalIcy.addTooltip(format.gold("Looted from Shrines and Obelisks in the Everbright and Everdawn"));
crystalStormy.addTooltip(format.gold("Looted from Shrines and Obelisks in the Everbright and Everdawn"));
crystalDark.addTooltip(format.gold("Looted from Shrines and Obelisks in the Everbright and Everdawn"));
crystalVerdant.addTooltip(format.gold("Looted from Shrines and Obelisks in the Everbright and Everdawn"));
crystalMystical.addTooltip(format.gold("Looted from Shrines and Obelisks in the Everbright and Everdawn"));
crystalRadiant.addTooltip(format.gold("Looted from Shrines and Obelisks in the Everbright and Everdawn"));



var blBiomes = [] as string[];
for biome in game.biomes {
    var biomeId = biome.id;
    var blacklisted = true;
    for skip in wlBiomes {
        if (biomeId == skip) {
            blacklisted = false;
        }
    }
    if (blacklisted) {
    	//print(biomeId);
        blBiomes += biomeId;
    }
}
for mob in mobs {
    spawntabletweaker.removeSpawn(mob, "MONSTER", blBiomes);
}