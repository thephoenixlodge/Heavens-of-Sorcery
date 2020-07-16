////imports
import mods.botania.PureDaisy;
import mods.bloodmagic.TartaricForge;



////variables
val chalk = <earthworks:block_chalk>;
val dustChalk = <earthworks:item_chalk>;
val limestone = <ore:stoneLimestone>;
val cobBall = <earthworks:item_cob>;
val cob = <earthworks:block_cob>;
val mudBrick = <thebetweenlands:items_misc:10>;
val clay = <minecraft:clay_ball>;
val jarUnfired = <bewitchment:unfired_jar>;
val woodAsh = <bewitchment:wood_ash>;
val ritualChalk = <bewitchment:ritual_chalk>;
val birchSoul = <bewitchment:birch_soul>;


//Chalk
PureDaisy.addRecipe(limestone, chalk);
recipes.addShapeless(dustChalk * 4, [chalk]);

//Cob
recipes.remove(cobBall);
recipes.removeByRecipeName("earthworks:block_cob_alt_alt");
recipes.addShapeless(cobBall * 4, [cob]);
recipes.addShapeless(cobBall * 4, [clay, clay, mudBrick, mudBrick]);

//unfired Jar
recipes.remove(jarUnfired);
recipes.addShaped(jarUnfired * 2, [[cobBall], [cobBall]]);

//ritual chalk
TartaricForge.addRecipe(ritualChalk, [birchSoul, chalk, woodAsh, woodAsh], 240, 70);