#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var fluidLatex = VanillaFactory.createFluid("latex_fluid", Color.fromHex("D9D2D2"));
fluidLatex.viscosity = 2000;
fluidLatex.register();