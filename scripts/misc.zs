////Imports
import mods.jei.JEI;
import mods.ArcaneWorld;
import crafttweaker.item.IItemStack;

////Variables
val clayTile = <cathedral:firedtile>;
val terracottaShingle = <quark:hardened_clay_tiles>;
val yabbaBarrel = <yabba:item_barrel>;
val yabbaBarrelCrate = <yabba:item_barrel>.withTag({BlockEntityTag: {Model: "crate", Skin: "minecraft:quartz_block_chiseled"}});
val chest = <ore:chestWood>;
val blockQuartz = <ore:blockQuartz>;
val itemQuartz = <ore:gemQuartz>;
val slabQuartz = <minecraft:stone_slab:7>;
val bone = <ore:bone>;
val amethyst = <arcaneworld:amethyst>;
val remedyTalisman = <bewitchment:remedy_talisman>;
val nuggetColdIron = <bewitchment:cold_iron_nugget>;
val nuggetSilver = <ore:nuggetSilver>;
val silverScales = <bewitchment:silver_scales>;
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

//tweak clay tile related recipes
recipes.remove(terracottaShingle);
recipes.addShaped(terracottaShingle * 4, [[clayTile, clayTile], [clayTile, clayTile]]);

//Change YABBA Barrel recipe to default to the Crate model
recipes.remove(yabbaBarrel);
recipes.addShaped(yabbaBarrelCrate, [[blockQuartz, slabQuartz, blockQuartz], [itemQuartz, chest, itemQuartz], [blockQuartz, slabQuartz, blockQuartz]]);
//JEI.hide(yabbaBarrel);
JEI.addItem(yabbaBarrelCrate);

//Artifacts recycling
for artifact in artifactsArray {
	oreArtifact.add(artifact);
}
ArcaneWorld.createRitualSummon("summon_mimic", "Conjure Mimic", "artifacts:mimic", oreArtifact, oreArtifact, amethyst, bone);

//Fix Remedy Talisman amethyst
recipes.remove(remedyTalisman);
recipes.addShaped(remedyTalisman, [[nuggetSilver, nuggetColdIron, nuggetSilver], [nuggetColdIron, amethyst, nuggetColdIron], [nuggetSilver, nuggetColdIron, nuggetSilver]]);

//Readd bw silver scales to nugget recipe
furnace.addRecipe(nuggetSilverEmbers, silverScales);