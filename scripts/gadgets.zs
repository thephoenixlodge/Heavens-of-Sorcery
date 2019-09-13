////Imports
import mods.ArcaneWorld;
import scripts.globals;

////Vars
val gadgetBuilding = <buildinggadgets:buildingtool>;
val gadgetExchanging = <buildinggadgets:exchangertool>;
val gadgetCopyPaste = <buildinggadgets:copypastetool>;
val gadgetDestruction = <buildinggadgets:destructiontool>;
val templateManager = <buildinggadgets:templatemanager>;
val book = <minecraft:book>;
val wandDiamond = <betterbuilderswands:wanddiamond>;
val advSimilsax = <similsaxtranstructors:similsaxtranstructoradvanced>;
val wandFormation = <astralsorcery:itemarchitectwand>;
val shovelDiamond = <minecraft:diamond_shovel>;
val amethyst = <arcaneworld:amethyst>;
val sapphire = <arcaneworld:sapphire>;
val slime = <ore:slimeball>;
val moltenCore = <arcaneworld:molten_core>;
val wisdomWoodPigmented = <wizardry:wisdom_wood_pigmented_planks>;
val blockGold = <minecraft:gold_block>;
val bookshelf = <ore:bookshelf>;
val nacrePearl = <wizardry:nacre_pearl>;

//Building Gadget
recipes.remove(gadgetBuilding);
ArcaneWorld.createRitualCreateItem("gadget_building", "Tome of Building", gadgetBuilding, book, sapphire, wandFormation, wandDiamond, advSimilsax);
globals.setNewName(gadgetBuilding, "Tome of Building");

//Exchanging Gadget
recipes.remove(gadgetExchanging);
ArcaneWorld.createRitualCreateItem("gadget_exchanging", "Tome of Exchanging", gadgetExchanging, book, sapphire, amethyst, shovelDiamond);
globals.setNewName(gadgetExchanging, "Tome of Exchanging");

//Copy-Paste Gadget
recipes.remove(gadgetCopyPaste);
ArcaneWorld.createRitualCreateItem("gadget_copy", "Tome of Transferrance", gadgetCopyPaste, book, sapphire, amethyst, slime);
globals.setNewName(gadgetCopyPaste, "Tome of Transferrence");

//Destruction Gadget
recipes.remove(gadgetDestruction);
ArcaneWorld.createRitualCreateItem("gadget_destroy", "Tome of Destruction", gadgetDestruction, book, amethyst, amethyst, moltenCore);
globals.setNewName(gadgetDestruction, "Tome of Destruction");

//Template Manager
recipes.remove(templateManager);
ArcaneWorld.createRitualCreateItem("gadget_templates", "Infuse Template Manager", templateManager, bookshelf, blockGold, wisdomWoodPigmented, sapphire, nacrePearl);