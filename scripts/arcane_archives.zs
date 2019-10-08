import mods.naturesaura.TreeRitual;

////variables
val resonator = <arcanearchives:radiant_resonator>;
val ingotDawnstone = <embers:ingot_dawnstone>;
val liquidMana = <liquid:mana_fluid>;
val stickLivingwood = <botania:manaresource:3>;
val terraMoss = <roots:terra_moss>;
val saplingBluebright = <blue_skies:bluebright_sapling>;



//resonator
recipes.remove(resonator);
TreeRitual.addRecipe("resonator", saplingBluebright, resonator, 400, [ingotDawnstone, stickLivingwood, stickLivingwood, terraMoss, liquidMana * 1000]);