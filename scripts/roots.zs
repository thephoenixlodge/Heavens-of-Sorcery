////Imports
import mods.naturesaura.Altar as NatureAltar;
import mods.naturesaura.TreeRitual;
import mods.astralsorcery.Altar;
import mods.roots.Fey;
import mods.roots.Mortar;
import mods.roots.Pyre;
import mods.roots.Rituals;
import crafttweaker.item.IItemStack;

//variables
val pyre = <roots:pyre>;
val infusedRock = <naturesaura:infused_stone>;
val tokenJoy = <naturesaura:token_joy>;
val tokenSorrow = <naturesaura:token_sorrow>;
val wildroot = <roots:wildroot>;
val terraMoss = <roots:terra_moss>;
val logMaple = <blue_skies:maple_log>;
val saplingMaple = <blue_skies:maple_sapling>;
val saplingLunar = <blue_skies:lunar_sapling>;
val imbuer = <roots:imbuer>;
val stickLivingwood = <botania:manaresource:3>;
val groveStone = <roots:grove_stone>;
val infusedRockSlab = <naturesaura:infused_slab>;
val infusedHorizonite = <naturesaura:infused_iron>;
val livingwood = <botania:livingwood>;
val woodStand = <naturesaura:wood_stand>;
val feyCrafter = <roots:fey_crafter>;
val runeStone = <roots:runestone>;
val gemTurquoise = <blue_skies:turquoise_gem>;
val petals = <roots:petals>;
val ancientSapling = <dynamictreesnaturesaura:ancientseed>;
val holystoneMossy = <aether_legacy:mossy_holystone>;
val cloudBerry = <roots:cloud_berry>;
val infernalBulb = <roots:infernal_bulb>;
val stalicripe = <roots:stalicripe>;
val dewgonia = <roots:dewgonia>;
val moonglow = <roots:moonglow_leaf>;
val cloud = <aether_legacy:aercloud:*>;
val enchantedBerry = <aether_legacy:enchanted_blueberry>;
val gunpowder = <minecraft:gunpowder>;
val moltenCore = <arcaneworld:molten_core>;
val emberCrystal = <embers:crystal_ember>;
val illuminationPowder = <astralsorcery:itemusabledust>;
val chilledLilyPad = <blue_skies:chilled_lily_pad>;
val snow = <minecraft:snow>;
val ingotVentium = <blue_skies:ventium_ingot>;
val moonstone = <blue_skies:moonstone>;
val hardFoggyStone = <mist:stone_basic>;
val sugarcane = <minecraft:reeds>;
val magicCrystal = <ebwizardry:magic_crystal>;
val goldLeaf = <naturesaura:gold_leaf>;
val goldPowder = <naturesaura:gold_powder>;
val barkBirch = <roots:bark_birch>;
val runeWater = <botania:rune>;
val runeFire = <botania:rune:1>;
val runeEarth = <botania:rune:2>;
val runeAir = <botania:rune:3>;
val runeSpring = <botania:rune:4>;
val flowers = [
	<aether_legacy:purple_flower>,
	<aether_legacy:white_flower>,
	<blue_skies:hot_pink_flower>,
	<blue_skies:moonlit_flower>,
	<blue_skies:crystal_flower>,
	<blue_skies:snowbloom>,
	<blue_skies:blaze_bud>,
	<botania:flower:*>,
	<ebwizardry:crystal_flower>,
	<inspirations:flower:*>,
	<rats:ratglove_flower>,
	<thebetweenlands:cardinal_flower>,
	<thebetweenlands:bladderwort_flower>,
	<thebetweenlands:bog_bean_flower>,
	<thebetweenlands:golden_club_flower>,
	<thebetweenlands:marsh_marigold_flower>,
	<thebetweenlands:items_plant_drop:3>,
	<thebetweenlands:items_plant_drop:7>,
	<thebetweenlands:items_plant_drop:8>,
	<thebetweenlands:items_plant_drop:11>,
	<thebetweenlands:items_plant_drop:12>,
	<thebetweenlands:items_plant_drop:16>,
	<thebetweenlands:items_plant_drop:18>,
	<thebetweenlands:items_plant_drop:19>,
	<thebetweenlands:items_plant_drop:20>,
	<thebetweenlands:items_plant_drop:23>,
	<thebetweenlands:items_plant_drop:31>,
	<thebetweenlands:items_plant_drop:40>,
	<thebetweenlands:milkweed>,
	<thebetweenlands:pickerel_weed>,
	<thebetweenlands:blue_eyed_grass>,
	<thebetweenlands:blue_iris>,
	<thebetweenlands:boneset>,
	<thebetweenlands:copper_iris>,
	<thebetweenlands:marsh_hibiscus>,
	<thebetweenlands:marsh_mallow>,
	<rustic:chamomile>,
	<rustic:blood_orchid>
] as IItemStack[];
val tallFlowers = [
	<botania:doubleflower1:*>,
	<botania:doubleflower2:*>
] as IItemStack[];
val oreFlowers = <ore:flowers>;
val oreAllFlowers = <ore:allFlowers>;
val oreAllTallFlowers = <ore:allTallFlowers>;
val banefulShroom = <blue_skies:baneful_mushroom>;
val snowcapShroom = <blue_skies:snowcap_mushroom>;
val rottenFlesh = <minecraft:rotten_flesh>;
val mutatedPastureSeed = <botania:grassseeds:8>;
val baffleCap = <roots:baffle_cap_mushroom>;
val imposer = <roots:imposer>;
val gramary = <roots:gramary>;
val oreBark = <ore:rootsBark>;
val saplingBluebright = <blue_skies:bluebright_sapling>;
val manaString = <botania:manaresource:16>;

//Pyre
recipes.remove(pyre);
TreeRitual.addRecipe("pyre", saplingMaple, pyre, 400, [infusedRock, infusedRock, logMaple, logMaple, tokenJoy, wildroot, terraMoss]);

//Imbuer
recipes.remove(imbuer);
TreeRitual.addRecipe("imbuer", saplingLunar, imbuer, 400, [infusedRock, stickLivingwood, stickLivingwood, tokenSorrow]);

//grove stone
recipes.remove(groveStone);
Altar.addConstellationAltarRecipe("internal/altar/grove_stone", groveStone, 3200, 500, [null, infusedRock, null, infusedRock, terraMoss, infusedRock, infusedRock, wildroot, infusedRock, null, null, infusedRockSlab, infusedRockSlab, null, null, null, null, null, null, infusedRock, infusedRock]);

//fey crafter
recipes.remove(feyCrafter);
Altar.addConstellationAltarRecipe("internal/altar/fey_crafter", feyCrafter, 3200, 500, [infusedHorizonite, terraMoss, infusedHorizonite, null, wildroot, null, null, woodStand, null, null, null, null, null, null, null, null, null, null, null, livingwood, livingwood]);

//runestone
Fey.removeRecipe(runeStone);
Fey.addRecipe("runestone", runeStone * 2, [gemTurquoise, infusedRock, infusedRock, infusedRock, infusedRock]);

//grove supplication spelldust
Rituals.modifyRitual("ritual_grove_supplication", [runeSpring, holystoneMossy, ancientSapling, wildroot, petals]);

//cloud berry
Pyre.removeRecipe(cloudBerry);
Pyre.addRecipe("cloud_berry", cloudBerry, [runeAir, terraMoss, terraMoss, cloud, enchantedBerry]);

//infernal bulb
Pyre.removeRecipe(infernalBulb);
Pyre.addRecipe("infernal_bulb", infernalBulb, [runeFire, wildroot, gunpowder, moltenCore, illuminationPowder]);

//dewgonia
Pyre.removeRecipe(dewgonia);
Pyre.addRecipe("dewgonia", dewgonia, [runeWater, terraMoss, sugarcane, chilledLilyPad, snow]);

//stalicripe
Pyre.removeRecipe(stalicripe);
Pyre.addRecipe("stalicripe", stalicripe, [runeEarth, wildroot, ingotVentium, hardFoggyStone, moonstone]);

//moonglow
Pyre.removeRecipe(moonglow);
Pyre.addRecipe("moonglow_leaf", moonglow, [goldLeaf, moonstone, magicCrystal, barkBirch, barkBirch]);

//baffle cap
Pyre.removeRecipe(baffleCap);
Pyre.addRecipe("baffle_cap_mushroom", baffleCap * 3, [terraMoss, rottenFlesh, mutatedPastureSeed, banefulShroom, snowcapShroom]);

//flower oredicts for petals
for flower in flowers {
	oreFlowers.add(flower);
	oreAllFlowers.add(flower);
}
for tallFlower in tallFlowers {
	oreAllTallFlowers.add(tallFlower);
}

//imposer
recipes.remove(imposer);
TreeRitual.addRecipe("imposer", saplingLunar, imposer, 400, [imbuer, infusedRock, infusedRock, stickLivingwood, stickLivingwood, goldPowder]);

//gramary
recipes.remove(gramary);
TreeRitual.addRecipe("gramary", saplingBluebright, gramary, 400, [oreBark, oreBark, oreBark, wildroot, terraMoss, terraMoss, manaString, manaString]);