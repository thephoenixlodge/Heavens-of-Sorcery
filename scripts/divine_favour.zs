////imports


////variables
val boneDagger = <divinefavor:bone_dagger>;
val slimyBone = <thebetweenlands:items_misc:14>;
val gemTurquoise = <blue_skies:turquoise_gem>;
val woodHandle = <cuisine:material:1>;


//bone dagger
recipes.remove(boneDagger);
recipes.addShaped(boneDagger, [[null, null, slimyBone], [null, gemTurquoise, null], [woodHandle, null, null]]);