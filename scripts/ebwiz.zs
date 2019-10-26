import mods.naturesaura.Altar as NatureAltar;
import mods.astralsorcery.Altar;

////variables
val crystalFlower = <ebwizardry:crystal_flower>;
val crystalMagic = <ebwizardry:magic_crystal>;
val crystalFlowerBS = <blue_skies:crystal_flower>;
val workbench = <ebwizardry:arcane_workbench>;
val crystalSandstoneSmooth = <blue_skies:smooth_crystal_sandstone>;
val radiantQuartz = <arcanearchives:raw_quartz>;
val lapis = <minecraft:dye:4>;
val goldPowder = <naturesaura:gold_powder>;
val blockAmethyst = <arcaneworld:block_amethyst>;

//Magic Crystal from flowers
recipes.removeByRecipeName("ebwizardry:crystal_flower_to_crystals");
NatureAltar.addRecipe("magic_crystal", crystalFlower, crystalMagic, null, 10000, 50);
NatureAltar.addRecipe("magic_crystal_alt", crystalFlowerBS, crystalMagic, null, 10000, 50);

//arcane workbench
recipes.remove(workbench);
Altar.addConstellationAltarRecipe("internal/altar/arcane_workbench", workbench, 3000, 500, [radiantQuartz, goldPowder, radiantQuartz, goldPowder, blockAmethyst, goldPowder, radiantQuartz, goldPowder, radiantQuartz, crystalMagic, crystalMagic, crystalMagic, crystalMagic, crystalSandstoneSmooth, crystalSandstoneSmooth, lapis, lapis, lapis, lapis, crystalSandstoneSmooth, crystalSandstoneSmooth]);