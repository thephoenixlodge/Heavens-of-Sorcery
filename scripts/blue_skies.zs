////Imports
import mods.aether_legacy.Freezer;
import mods.aether_legacy.Enchanter;
import mods.roots.Fey;


////Variables
val zealLighter = <blue_skies:zeal_lighter>;
val flintStone = <mist:flint_and_stone>;
val slate = <rustic:slate>;
val lunarStone = <blue_skies:lunar_stone>;
val foggyCobble = <mist:cobblestone>;
val hardFoggyStone = <mist:stone_basic>;
val turquoiseStone = <blue_skies:turquoise_stone>;
val marble = <astralsorcery:blockmarble>;
val iceStone = <aether_legacy:icestone>;
val oreVentium = <blue_skies:ventium_ore>;
val oreHorizonite = <blue_skies:horizonite_ore>;
val oreFalsite = <blue_skies:falsite_ore>;
val duskArc = <blue_skies:arcs>;
val runicArc = <blue_skies:arcs:5>;
val etherealArc = <blue_skies:arcs:6>;
val runestone = <roots:runestone>;
val gaiaSpirit = <botania:manaresource:5>;

//Enchant for Zeal Lighter
Enchanter.registerEnchantment(flintStone, zealLighter, 200);

//Freeze slate to lunar stone
Freezer.registerFreezable(slate, lunarStone, 100);

//Freeze hard foggy stone to turquoise stone
Freezer.registerFreezable(hardFoggyStone, turquoiseStone, 100);

//Icestone
Freezer.registerFreezable(marble, iceStone, 120);

//ventium ore tooltip
oreVentium.addTooltip(format.gold("Found deep beneath the Frostbitten Forests"));
oreHorizonite.addTooltip(format.gold("Found deep beneath the Crystal Dunes"));
oreFalsite.addTooltip(format.gold("Found deep beneath the Pale Swamplands"));

//add recipe for Runic arc
Fey.addRecipe("runic_arc", runicArc, [duskArc, etherealArc, runestone, runestone, gaiaSpirit]);