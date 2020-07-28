////imports


////variables
val boneDagger = <divinefavor:bone_dagger>;
val slimyBone = <thebetweenlands:items_misc:14>;
val gemMiddleBlue = <thebetweenlands:aqua_middle_gem>;
val woodHandle = <cuisine:material:1>;


//bone dagger
recipes.remove(boneDagger);
recipes.addShaped(boneDagger, [[null, null, slimyBone], [null, gemMiddleBlue, null], [woodHandle, null, null]]);