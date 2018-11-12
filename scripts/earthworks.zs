import crafttweaker.item.IItemStack;
import mods.chisel.Carving;

val arraySlateBlue = [
	<earthworks:block_slate>,
	<earthworks:block_slate_slab>,
	<earthworks:block_slate_shingle>,
	<earthworks:block_slate_tile>
] as IItemStack[];
val arraySlateGreen = [
	<earthworks:block_slate_green>,
	<earthworks:block_slate_slab_green>,
	<earthworks:block_slate_shingle_verte>,
	<earthworks:block_slate_tile_verte>
] as IItemStack[];
val arraySlatePurple = [
	<earthworks:block_slate_purple>,
	<earthworks:block_slate_slab_purple>,
	<earthworks:block_slate_shingle_purple>,
	<earthworks:block_slate_tile_purple>
] as IItemStack[];
val mapVerticalPlanks = {
	"planks-oak" : <quark:vertical_planks>,
	"planks-spruce" : <quark:vertical_planks:1>,
	"planks-birch" : <quark:vertical_planks:2>,
	"planks-jungle" : <quark:vertical_planks:3>,
	"planks-acacia" : <quark:vertical_planks:4>,
	"planks-dark-oak" : <quark:vertical_planks:5>
} as IItemStack[string];
val arrayFramedWattleDaub = [
	<earthworks:daub_cob_arrow0>,
	<earthworks:daub_cob_arrow1>,
	<earthworks:daub_cob_arrow2>,
	<earthworks:daub_cob_arrow3>,
	<earthworks:daub_cob_barndoor0>,
	<earthworks:daub_cob_barndoor1>,
	<earthworks:daub_cob_barndoor2>,
	<earthworks:daub_cob_barndoor3>,
	<earthworks:daub_cob_barndoor4>,
	<earthworks:daub_cob_barndoor5>,
	<earthworks:daub_cob_barndoor6>,
	<earthworks:daub_cob_barndoor7>,
	<earthworks:daub_cob_bottom_l>,
	<earthworks:daub_cob_bottom>,
	<earthworks:daub_cob_bottom_r>,
	<earthworks:daub_cob_left>,
	<earthworks:daub_cob_parallel_hor>,
	<earthworks:daub_cob_parallel_vert>,
	<earthworks:daub_cob_right>,
	<earthworks:daub_cob_slash_back>,
	<earthworks:daub_cob_slash>,
	<earthworks:daub_cob_square>,
	<earthworks:daub_cob_square_x>,
	<earthworks:daub_cob_top_l>,
	<earthworks:daub_cob_top>,
	<earthworks:daub_cob_top_r>,
	<earthworks:daub_cob_triangle0>,
	<earthworks:daub_cob_triangle1>,
	<earthworks:daub_cob_triangle2>,
	<earthworks:daub_cob_triangle3>,
	<earthworks:daub_cob_xbottom>,
	<earthworks:daub_cob_xdoor0>,
	<earthworks:daub_cob_xdoor2>,
	<earthworks:daub_cob_xdoor3>,
	<earthworks:daub_cob_xleft>,
	<earthworks:daub_cob_x>,
	<earthworks:daub_cob_xright>,
	<earthworks:daub_cob_xtop>
] as IItemStack[];
val arrayFramedLathPlaster = [
	<earthworks:plaster_arrow0>,
	<earthworks:plaster_arrow1>,
	<earthworks:plaster_arrow2>,
	<earthworks:plaster_arrow3>,
	<earthworks:plaster_barndoor0>,
	<earthworks:plaster_barndoor1>,
	<earthworks:plaster_barndoor2>,
	<earthworks:plaster_barndoor3>,
	<earthworks:plaster_barndoor4>,
	<earthworks:plaster_barndoor5>,
	<earthworks:plaster_barndoor6>,
	<earthworks:plaster_barndoor7>,
	<earthworks:plaster_bottom_l>,
	<earthworks:plaster_bottom>,
	<earthworks:plaster_bottom_r>,
	<earthworks:plaster_left>,
	<earthworks:plaster_parallel_hor>,
	<earthworks:plaster_parallel_vert>,
	<earthworks:plaster_right>,
	<earthworks:plaster_slash_back>,
	<earthworks:plaster_slash>,
	<earthworks:plaster_square>,
	<earthworks:plaster_square_x>,
	<earthworks:plaster_top_l>,
	<earthworks:plaster_top>,
	<earthworks:plaster_top_r>,
	<earthworks:plaster_triangle0>,
	<earthworks:plaster_triangle1>,
	<earthworks:plaster_triangle2>,
	<earthworks:plaster_triangle3>,
	<earthworks:plaster_xbottom>,
	<earthworks:plaster_xdoor0>,
	<earthworks:plaster_xdoor1>,
	<earthworks:plaster_xdoor2>,
	<earthworks:plaster_xdoor3>,
	<earthworks:plaster_xleft>,
	<earthworks:plaster_x>,
	<earthworks:plaster_xright>,
	<earthworks:plaster_xtop>,
] as IItemStack[];
val itemTimberFrame = <earthworks:item_timber>;
val blockWattleDaub = <earthworks:block_wattle>;
val blockLathPlaster = <earthworks:block_plaster>;


//Framed Wattle and Daub
Carving.addGroup("framedWattleDaub");
for framedWD in arrayFramedWattleDaub {
	recipes.remove(framedWD);
	Carving.addVariation("framedWattleDaub", framedWD);
}
recipes.addShaped(arrayFramedWattleDaub[0], [[itemTimberFrame, blockWattleDaub, itemTimberFrame], [blockWattleDaub, blockWattleDaub, blockWattleDaub], [itemTimberFrame, blockWattleDaub, itemTimberFrame]]);

//Framed Lath and Plaster
Carving.addGroup("framedLathPlaster");
for framedLP in arrayFramedLathPlaster {
	recipes.remove(framedLP);
	Carving.addVariation("framedLathPlaster", framedLP);
}
recipes.addShaped(arrayFramedLathPlaster[0], [[itemTimberFrame, blockLathPlaster, itemTimberFrame], [blockLathPlaster, blockLathPlaster, blockLathPlaster], [itemTimberFrame, blockLathPlaster, itemTimberFrame]]);


//Blue slate
Carving.addGroup("slateBlue");
for slateB in arraySlateBlue {
	Carving.addVariation("slateBlue", slateB);
}

//Blue slate
Carving.addGroup("slateGreen");
for slateG in arraySlateGreen {
	Carving.addVariation("slateGreen", slateG);
}

//Purple slate
Carving.addGroup("slatePurple");
for slateP in arraySlatePurple {
	Carving.addVariation("slatePurple", slateP);
}

//Vertical planks
for plankGroup, vertiPlank in mapVerticalPlanks {
	recipes.remove(vertiPlank);
	Carving.addVariation(plankGroup, vertiPlank);
}