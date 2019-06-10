#loader contenttweaker

////Imports
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Color;

////Variables
var metallia = MaterialSystem.getPartBuilder().setName("metal_materia").setPartType(MaterialSystem.getPartType("item")).setOreDictName("materia").build();

var precia = MaterialSystem.getPartBuilder().setName("precious_materia").setPartType(MaterialSystem.getPartType("item")).setOreDictName("materia").build();

var ethericLiquid = MaterialSystem.getPartBuilder().setName("etheric").setPartType(MaterialSystem.getPartType("fluid")).build();

//Metals
var iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(Color.fromHex("D8D8D8")).build();
var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(Color.fromHex("FFFF8B")).build();
var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(Color.fromHex("ED8C4C")).build();
var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(Color.fromHex("7A6F87")).build();
var silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(Color.fromHex("B1C6CC")).build();
var aluminium = MaterialSystem.getMaterialBuilder().setName("Aluminium").setColor(Color.fromHex("EB9886")).build();
var nickel = MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(Color.fromHex("ABB598")).build();
var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(Color.fromHex("D5DBD8")).build();
var niobium = MaterialSystem.getMaterialBuilder().setName("Niobium").setColor(Color.fromHex("D1D3DF")).build();
var falsite = MaterialSystem.getMaterialBuilder().setName("Falsite").setColor(Color.fromHex("6338D8")).build();
var ventium = MaterialSystem.getMaterialBuilder().setName("Ventium").setColor(Color.fromHex("C31A1F")).build();
var horizonite = MaterialSystem.getMaterialBuilder().setName("Horizonite").setColor(Color.fromHex("F2712B")).build();
var titanium = MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(Color.fromHex("CECECE")).build();
var syrmorite = MaterialSystem.getMaterialBuilder().setName("Syrmorite").setColor(Color.fromHex("4A59A6")).build();
var octine = MaterialSystem.getMaterialBuilder().setName("Octine").setColor(Color.fromHex("D73800")).build();

var listMetals = [iron, gold, copper, lead, silver, aluminium, nickel, tin, niobium, falsite, ventium, horizonite, titanium, syrmorite, octine] as Material[];

//Precious materials
var coal = MaterialSystem.getMaterialBuilder().setName("Coal").setColor(Color.fromHex("1B1B1B")).build();
var redstone = MaterialSystem.getMaterialBuilder().setName("Redstone").setColor(Color.fromHex("720000")).build();
var lapis = MaterialSystem.getMaterialBuilder().setName("Lapis Lazuli").setColor(Color.fromHex("224BAF")).build();
var diamond = MaterialSystem.getMaterialBuilder().setName("Diamond").setColor(Color.fromHex("8CF4E2")).build();
var emerald = MaterialSystem.getMaterialBuilder().setName("Emerald").setColor(Color.fromHex("1BD662")).build();
var quartz = MaterialSystem.getMaterialBuilder().setName("Nether Quartz").setColor(Color.fromHex("E5DFD6")).build();
var ambrosium = MaterialSystem.getMaterialBuilder().setName("Ambrosium").setColor(Color.fromHex("D9DB30")).build();
var zanite = MaterialSystem.getMaterialBuilder().setName("Zanite").setColor(Color.fromHex("8637F1")).build();
var sapphire = MaterialSystem.getMaterialBuilder().setName("Sapphire").setColor(Color.fromHex("389ED0")).build();
var amethyst = MaterialSystem.getMaterialBuilder().setName("Amethyst").setColor(Color.fromHex("BB2AD9")).build();
var diopside = MaterialSystem.getMaterialBuilder().setName("Diopside").setColor(Color.fromHex("00CA15")).build();
var pyrope = MaterialSystem.getMaterialBuilder().setName("Pyrope").setColor(Color.fromHex("D61D34")).build();
var turquoise = MaterialSystem.getMaterialBuilder().setName("Turquoise").setColor(Color.fromHex("5AE7D1")).build();
var charoite = MaterialSystem.getMaterialBuilder().setName("Charoite").setColor(Color.fromHex("A075C8")).build();
var moonstone = MaterialSystem.getMaterialBuilder().setName("Moonstone").setColor(Color.fromHex("C3E3EE")).build();
var crystalQuartz = MaterialSystem.getMaterialBuilder().setName("Crystal Quartz").setColor(Color.fromHex("C8C8C8")).build(); //Corvus
var wiserGem = MaterialSystem.getMaterialBuilder().setName("Wiser Gem").setColor(Color.fromHex("F1D25A")).build(); //Corvus
var cinnabar = MaterialSystem.getMaterialBuilder().setName("Quicksilver").setColor(Color.fromHex("C6C6DB")).build();
var amber = MaterialSystem.getMaterialBuilder().setName("Amber").setColor(Color.fromHex("FFBA00")).build();
var valonite = MaterialSystem.getMaterialBuilder().setName("Valonite").setColor(Color.fromHex("C8B2C8")).build();
var sulfur = MaterialSystem.getMaterialBuilder().setName("Sulfur").setColor(Color.fromHex("E0E018")).build();
var garnet = MaterialSystem.getMaterialBuilder().setName("Garnet").setColor(Color.fromHex("4F0724")).build();
var nuummite = MaterialSystem.getMaterialBuilder().setName("Nuummite").setColor(Color.fromHex("51575C")).build();
var tigersEye = MaterialSystem.getMaterialBuilder().setName("Tiger's Eye").setColor(Color.fromHex("FA8301")).build();
var tourmaline = MaterialSystem.getMaterialBuilder().setName("Tourmaline").setColor(Color.fromHex("C1758C")).build();
var bloodstone = MaterialSystem.getMaterialBuilder().setName("Bloodstone").setColor(Color.fromHex("5F8780")).build();
var jasper = MaterialSystem.getMaterialBuilder().setName("Jasper").setColor(Color.fromHex("CB2816")).build();
var malachite = MaterialSystem.getMaterialBuilder().setName("Malachite").setColor(Color.fromHex("35B884")).build();
var alexandrite = MaterialSystem.getMaterialBuilder().setName("Alexandrite").setColor(Color.fromHex("7EAAAC")).build();

var listPrecious = [coal, redstone, lapis, diamond, emerald, quartz, ambrosium, zanite, sapphire, amethyst, diopside, pyrope, turquoise, charoite, moonstone, crystalQuartz, wiserGem, cinnabar, amber, valonite, sulfur, garnet, nuummite, tigersEye, tourmaline, bloodstone, jasper, malachite, alexandrite] as Material[];

//register materials
for i, metal in listMetals {
	metal.registerPart("metal_materia");
	metal.registerPart("etheric");
}

for j, precious in listPrecious {
	precious.registerPart("precious_materia");
	precious.registerPart("etheric");
}