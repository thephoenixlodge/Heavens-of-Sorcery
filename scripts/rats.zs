////imports
import mods.arcanearchives.GCT;
import scripts.globals;
import mods.rats.recipes as RatRecipes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;

////variables
val gemPyrope = <blue_skies:pyrope_gem>;
val gemTurquoise = <blue_skies:turquoise_gem>;
val gemDiopside = <blue_skies:diopside_gem>;
val gemRatGem = <rats:rat_diamond>;
val gemRatlantis = <rats:gem_of_ratlantis>;
val cheese = <rats:cheese>;
val marbledRaw = <rats:marbled_cheese_raw>;
val sojournersSash = <botania:travelbelt>;
val sugar = <minecraft:sugar>;
val plate = <cuisine:placed_dish>;
val angelHeart = <contenttweaker:angel_heart>;
val heartBeet = <inspirations:edibles>;
val chestplateCharoite = <blue_skies:charoite_chestplate>;
val shield = <minecraft:shield>;
val swordCharoite = <blue_skies:everdawn_charoite_sword>|<blue_skies:everbright_charoite_sword>;
val ingotVentium = <blue_skies:ventium_ingot>;
val netherStar = <minecraft:nether_star>;
val runicArc = <blue_skies:arcs:5>;
val toque = <rats:chef_toque>;
val wok = <cuisine:wok>;
val kitchenKnife = <cuisine:kitchen_knife>;
val gApple = <minecraft:golden_apple:1>;
val tinkersHammer = <embers:tinker_hammer>;
val littleSaw = <littletiles:saw>;
val craftingPlaceholder = <botania:manaresource:11>;
val materialIndex = <vaultopic:vault_searcher>;
val dyeBlack = <ore:dyeBlack>;
val dyeWhite = <ore:dyeWhite>;
val wingsAngel = <wings:angel_wings>;
val wingsDragon = <wings:dragon_wings>;
val lapis = <minecraft:dye:4>;
val dragonBreath = <minecraft:dragon_breath>;
val featherWing = <rats:feathery_wing>;
val dragonWing = <rats:dragon_wing>;
val ringChordata = <botania:waterring>;
val barrelFish = <rats:fish_barrel>;
val enderEye = <minecraft:ender_eye>;
val enderAir = <botania:manaresource:15>;
val axePyrope = <blue_skies:everbright_pyrope_axe>|<blue_skies:everdawn_pyrope_axe>;
val sapling = <ore:treeSapling>;
val bark = <ore:rootsBark>;
val pickTurquoise = <blue_skies:everbright_turquoise_pickaxe>|<blue_skies:everdawn_turquoise_pickaxe>;
val corn = <cuisine:crops:13>;
val hayBale = <minecraft:hay_block>;
val hoeDiopside = <blue_skies:everbright_diopside_hoe>|<blue_skies:everdawn_diopside_hoe>;
val farmerHat = <rats:farmer_hat>;
val wheat = <minecraft:wheat>;
val carrot = <minecraft:carrot>;
val seeds = <minecraft:wheat_seeds>;
val egg = <minecraft:egg>;
val fishingRod = <minecraft:fishing_rod>;
val fishingHat = <rats:fisherman_hat>;
val pendantPyroclast = <botania:lavapendant>;
val snorkel = <artifacts:snorkel>;
val milk = <liquid:milk> * 1000;
val witherBone = <inspirations:materials:7>;
val spiderEye = <minecraft:spider_eye>;
val magicCrystal = <ebwizardry:magic_crystal>;
val ratPoop = <ore:ratPoop>;
val awakePrecia = <contenttweaker:precia_awakened>;
val awakeMetallia = <contenttweaker:metallia_awakened>;
val containmentField = <arcanearchives:containment_field>;
val bucket = <minecraft:bucket>;
val amphora = <arcanearchives:radiant_amphora>;
val leather = <minecraft:leather>;
val wool = <minecraft:wool:*>;
val shearsVentium = <blue_skies:ventium_shears>;
val topHat = <rats:top_hat>;
val gCarrot = <minecraft:golden_carrot>;
val gemEmerald = <minecraft:emerald>;
val TNT = <minecraft:tnt>;
val chargedChunk = <rats:charged_creeper_chunk>;
val dispenser = <minecraft:dispenser>;
val plagueEssence = <rats:plague_essence>;
val totemUndying = <minecraft:totem_of_undying>;
val gemCuttingTable = <arcanearchives:gemcutters_table>;
val gravitite = <aether_legacy:enchanted_gravitite>;
val enchantingTable = <minecraft:enchanting_table>;
val spellCloth = <botania:spellcloth>;
val santaHat = <rats:santa_hat>;
val spruceSeed = <dynamictrees:spruceseed>;
val flute = <rats:rat_flute>;
val archeologistHat = <rats:archeologist_hat>;
val ratlantisAvatar = <rats:idol_of_ratlantis>;
val bone = <ore:bone>;
val scrollIdentify = <ebwizardry:identification_scroll>;
val feralClaw = <rats:feral_rat_claw>;
val piratHat = <rats:pirat_hat>;
val piratCutlass = <rats:pirat_cutlass>;
val cheeseCannonball = <rats:cheese_cannonball>;
val arcaneTech = <rats:arcane_technology>;
val prismarineShard = <minecraft:prismarine_shard>;
val prismarineCrystal = <minecraft:prismarine_crystals>;
val psiBrain = <rats:psionic_rat_brain>;
val endCrystal = <minecraft:end_crystal>;
val ratglovePetals = <rats:ratglove_petals>;
val ratBotHead = <rats:marbled_cheese_rat_head>;
val ratSpiritFlame = <rats:ratlantean_flame>;
val ratToga = <rats:rat_toga>;
//upgrades
val upgradeBasic = <rats:rat_upgrade_basic>;
val upgradeSpeed = <rats:rat_upgrade_speed>;
val upgradePlatter = <rats:rat_upgrade_platter>;
val upgradeHealth = <rats:rat_upgrade_health>;
val upgradeArmor = <rats:rat_upgrade_armor>;
val upgradeStrength = <rats:rat_upgrade_strength>;
val upgradeWarrior = <rats:rat_upgrade_warrior>;
val upgradeGod = <rats:rat_upgrade_god>;
val upgradeChef = <rats:rat_upgrade_chef>;
val upgradeCrafting = <rats:rat_upgrade_crafting>;
val upgradeBlacklist = <rats:rat_upgrade_blacklist>;
val upgradeWhitelist = <rats:rat_upgrade_whitelist>;
val upgradeFlight = <rats:rat_upgrade_flight>;
val upgradeDragon = <rats:rat_upgrade_dragon>;
val upgradeAquatic = <rats:rat_upgrade_aquatic>;
val upgradeEnder = <rats:rat_upgrade_ender>;
val upgradeLumberjack = <rats:rat_upgrade_lumberjack>;
val upgradeMiner = <rats:rat_upgrade_miner>;
val upgradeFarmer = <rats:rat_upgrade_farmer>;
val upgradeBreeder = <rats:rat_upgrade_breeder>;
val upgradeFisherman = <rats:rat_upgrade_fisherman>;
val upgradeAsbestos = <rats:rat_upgrade_asbestos>;
val upgradeUnderwater = <rats:rat_upgrade_underwater>;
val upgradePotRes = <rats:rat_upgrade_poison>;
val upgradeDamageProt = <rats:rat_upgrade_damage_protection>;
val upgradeOreDoubling = <rats:rat_upgrade_ore_doubling>;
val upgradeEnergy1 = <rats:rat_upgrade_basic_energy>;
val upgradeEnergy2 = <rats:rat_upgrade_advanced_energy>;
val upgradeEnergy3 = <rats:rat_upgrade_elite_energy>;
val upgradeEnergy4 = <rats:rat_upgrade_extreme_energy>;
val upgradeBucket = <rats:rat_upgrade_bucket>;
val upgradeBucket2 = <rats:rat_upgrade_big_bucket>;
val upgradeMilker = <rats:rat_upgrade_milker>;
val upgradeShears = <rats:rat_upgrade_shears>;
val upgradeAristocrat = <rats:rat_upgrade_aristocrat>;
val upgradeTNT = <rats:rat_upgrade_tnt>;
val upgradeTNT2 = <rats:rat_upgrade_tnt_survivor>;
val upgradePlacer = <rats:rat_upgrade_placer>;
val upgradeVoodoo = <rats:rat_upgrade_voodoo>;
val upgradeGemcutter = <rats:rat_upgrade_gemcutter>;
val upgradeEnchanter = <rats:rat_upgrade_enchanter>;
val upgradeDisenchanter = <rats:rat_upgrade_disenchanter>;
val upgradeXmas = <rats:rat_upgrade_christmas>;
val upgradeNoFlute = <rats:rat_upgrade_no_flute>;
val upgradeArcheologist = <rats:rat_upgrade_archeologist>;
val upgradeBasic2 = <rats:rat_upgrade_basic_ratlantean>;
val upgradeFeral = <rats:rat_upgrade_feral_bite>;
val upgradeBuccaneer = <rats:rat_upgrade_buccaneer>;
val upgradeRobot = <rats:rat_upgrade_ratinator>;
val upgradePsychic = <rats:rat_upgrade_psychic>;
val upgradeNonBeliever = <rats:rat_upgrade_nonbeliever>;
val upgradeCombined = <rats:rat_upgrade_combined>;

var mapUpgradeRecipes = {} as IIngredient[][IItemStack];
mapUpgradeRecipes[upgradeBasic] = [gemTurquoise * 4, cheese * 4];
mapUpgradeRecipes[upgradeBasic2] = [gemDiopside * 4, marbledRaw * 4];
mapUpgradeRecipes[upgradeSpeed] = [upgradeBasic, sojournersSash, sugar * 4];
mapUpgradeRecipes[upgradePlatter] = [upgradeBasic, plate, cheese * 4];
mapUpgradeRecipes[upgradeHealth] = [upgradeBasic, angelHeart, heartBeet * 2];
mapUpgradeRecipes[upgradeArmor] = [upgradeBasic, chestplateCharoite, shield];
mapUpgradeRecipes[upgradeStrength] = [upgradeBasic, swordCharoite * 2, ingotVentium * 4];
mapUpgradeRecipes[upgradeWarrior] = [upgradeHealth, upgradeArmor, upgradeStrength, gemTurquoise * 15];
mapUpgradeRecipes[upgradeGod] = [upgradeWarrior * 4, netherStar, runicArc];
mapUpgradeRecipes[upgradeChef] = [upgradeBasic, toque, wok, kitchenKnife, gApple];
mapUpgradeRecipes[upgradeCrafting] = [upgradeBasic, littleSaw, tinkersHammer, materialIndex, craftingPlaceholder];
mapUpgradeRecipes[upgradeBlacklist] = [upgradeBasic, materialIndex, dyeBlack * 4];
mapUpgradeRecipes[upgradeWhitelist] = [upgradeBasic, materialIndex, dyeWhite * 4];
mapUpgradeRecipes[upgradeFlight] = [upgradeBasic, wingsAngel, cheese * 4, lapis * 4];
mapUpgradeRecipes[upgradeDragon] = [upgradeFlight, upgradeWarrior, upgradeAsbestos, wingsDragon, dragonBreath * 2];
mapUpgradeRecipes[upgradeAquatic] = [upgradeUnderwater, ringChordata, barrelFish * 4];
mapUpgradeRecipes[upgradeEnder] = [upgradeBasic, enderAir, enderEye * 6];
mapUpgradeRecipes[upgradeLumberjack] = [upgradeBasic, axePyrope, sapling * 4, bark * 4, cheese * 4];
mapUpgradeRecipes[upgradeMiner] = [upgradeBasic, pickTurquoise, gemTurquoise * 4, cheese * 4];
mapUpgradeRecipes[upgradeFarmer] = [upgradeBasic, hoeDiopside, corn * 4, hayBale * 2, farmerHat, cheese * 4];
mapUpgradeRecipes[upgradeBreeder] = [upgradeBasic, wheat * 20, seeds * 20, carrot * 20, farmerHat, egg * 4, cheese * 4];
mapUpgradeRecipes[upgradeFisherman] = [upgradeBasic, fishingRod * 2, fishingHat, barrelFish * 4, cheese * 4];
mapUpgradeRecipes[upgradeAsbestos] = [upgradeBasic, pendantPyroclast, cheese * 4];
mapUpgradeRecipes[upgradeUnderwater] = [upgradeBasic, snorkel, cheese * 4];
mapUpgradeRecipes[upgradePotRes] = [upgradeBasic, milk, witherBone * 2, spiderEye * 4, magicCrystal * 2];
mapUpgradeRecipes[upgradeDamageProt] = [upgradeAsbestos, upgradePotRes, upgradeUnderwater, wingsAngel, gApple * 2, cheese * 15];
mapUpgradeRecipes[upgradeOreDoubling] = [upgradeBasic, ratPoop * 4, awakePrecia, awakeMetallia, cheese * 4];
mapUpgradeRecipes[upgradeBucket] = [upgradeBasic, bucket, containmentField];
mapUpgradeRecipes[upgradeBucket2] = [upgradeBucket, bucket * 4, containmentField * 4, amphora];
mapUpgradeRecipes[upgradeMilker] = [upgradeBucket, milk, leather * 4, cheese * 8];
mapUpgradeRecipes[upgradeShears] = [upgradeBasic, shearsVentium, wool * 4, cheese * 8];
mapUpgradeRecipes[upgradeAristocrat] = [upgradeBasic, topHat, gemEmerald * 9, gCarrot * 4];
mapUpgradeRecipes[upgradeTNT] = [upgradeBasic, TNT * 6, cheese * 10];
mapUpgradeRecipes[upgradeTNT2] = [upgradeTNT * 4, upgradeBuccaneer, chargedChunk * 4];
mapUpgradeRecipes[upgradePlacer] = [upgradeBasic, dispenser * 2, cheese * 10];
mapUpgradeRecipes[upgradeVoodoo] = [upgradeHealth, topHat, plagueEssence * 4, totemUndying * 3];
mapUpgradeRecipes[upgradeGemcutter] = [upgradeBasic, gemCuttingTable, cheese * 10];
mapUpgradeRecipes[upgradeEnchanter] = [upgradeBasic, enchantingTable, gravitite * 4, cheese * 10];
mapUpgradeRecipes[upgradeDisenchanter] = [upgradeBasic, spellCloth, gravitite * 4, cheese * 10];
mapUpgradeRecipes[upgradeXmas] = [upgradeBasic, santaHat * 3, spruceSeed * 3, cheese * 6];
mapUpgradeRecipes[upgradeNoFlute] = [upgradeBasic, flute * 2, wool * 8, cheese * 6];
mapUpgradeRecipes[upgradeArcheologist] = [upgradeBasic, archeologistHat, ratlantisAvatar, bone * 4, scrollIdentify, marbledRaw * 4];
mapUpgradeRecipes[upgradeFeral] = [upgradeBasic2, feralClaw * 6, spiderEye * 2, marbledRaw * 4];
mapUpgradeRecipes[upgradeBuccaneer] = [upgradeBasic2, piratHat, piratCutlass, cheeseCannonball * 6];
mapUpgradeRecipes[upgradeRobot] = [upgradeBasic2, arcaneTech * 4, ingotVentium * 30, marbledRaw * 4];
mapUpgradeRecipes[upgradePsychic] = [upgradeBasic2, psiBrain, endCrystal * 2, prismarineShard * 2, prismarineCrystal * 2, enderAir];
mapUpgradeRecipes[upgradeNonBeliever] = [upgradeGod * 4, ratlantisAvatar, arcaneTech * 2, psiBrain * 2, marbledRaw * 4];
mapUpgradeRecipes[upgradeCombined] = [upgradeBasic2, feralClaw * 2, gemRatlantis * 4, marbledRaw * 4];
mapUpgradeRecipes[gemRatlantis] = [gemDiopside * 8, ratglovePetals];
mapUpgradeRecipes[ratlantisAvatar] = [gemRatlantis, psiBrain, arcaneTech, ratBotHead, ratSpiritFlame, feralClaw, ratToga, piratHat];


//rat gems
RatRecipes.removeGemcutterRatRecipe(gemRatGem);
RatRecipes.addGemcutterRatRecipe(gemTurquoise, gemRatGem * 4);
globals.setNewName(gemRatGem, "Rat Gem");

//ratlantis gem
RatRecipes.removeArcheologistRatRecipe(gemRatlantis);
RatRecipes.addArcheologistRatRecipe(gemDiopside, gemRatlantis);

for output, ingredients in mapUpgradeRecipes {
	recipes.remove(output);
	GCT.addRecipe(output.definition.name, output, ingredients);
}
GCT.addRecipe("upgrade_basic_alt", upgradeBasic, [gemRatGem * 4, cheese * 4]);

//disabling unused upgrades/items
recipes.remove(upgradeEnergy1);
recipes.remove(upgradeEnergy2);
recipes.remove(upgradeEnergy3);
recipes.remove(upgradeEnergy4);
recipes.remove(featherWing);
recipes.remove(dragonWing);