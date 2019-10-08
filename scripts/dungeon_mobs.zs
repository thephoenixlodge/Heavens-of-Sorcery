import mods.spawntabletweaker;

////variables
var plainsMobs = [
	"ebwizardry:evil_wizard",
	"ebwizardry:lightning_wraith",
	"bewitchment:black_dog",
	"embers:ancient_golem",
	"minecraft:creeper",
	"minecraft:enderman",
	"minecraft:evocation_illager",
	"minecraft:illusion_illager",
	"minecraft:skeleton",
	"minecraft:slime",
	"minecraft:spider",
	"minecraft:vindication_illager",
	"minecraft:witch",
	"minecraft:zombie",
	"minecraft:zombie_villager",
	"quark:ashen",
	"quark:dweller",
	"quark:stoneling"
] as string[];


for mob in plainsMobs {
	spawntabletweaker.removeSpawn(mob, "MONSTER", ["minecraft:plains"]);
}

spawntabletweaker.addSpawn("embers:ancient_golem", 10, 1, 1, "MONSTER", ["minecraft:plains"]);
spawntabletweaker.addSpawn("quark:stoneling", 5, 1, 1, "MONSTER", ["minecraft:plains"]);
spawntabletweaker.addSpawn("artifacts:mimic", 1, 1, 1, "MONSTER", ["minecraft:plains"]);