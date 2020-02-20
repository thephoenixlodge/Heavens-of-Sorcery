import mods.dropt.Dropt;

  Dropt.list("turquoise_grass_shears")

  .add(Dropt.rule()
      .matchBlocks(["blue_skies:turquoise_tallgrass"])
      .matchHarvester(Dropt.harvester()
          .type("ANY")
          .mainHand("WHITELIST", [<minecraft:shears:*>, <blue_skies:ventium_shears:*>, <botania:manasteelshears:*>, <botania:elementiumshears:*>, <thebetweenlands:syrmorite_shears:*>])
      )
      .replaceStrategy("REPLACE_ALL")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(5))
          .items([<blue_skies:turquoise_tallgrass>])
      )
  );

  Dropt.list("cherry_grass_shears")

  .add(Dropt.rule()
      .matchBlocks(["blue_skies:cherry_tallgrass"])
      .matchHarvester(Dropt.harvester()
          .type("ANY")
          .mainHand("WHITELIST", [<minecraft:shears:*>, <blue_skies:ventium_shears:*>, <botania:manasteelshears:*>, <botania:elementiumshears:*>, <thebetweenlands:syrmorite_shears:*>])
      )
      .replaceStrategy("REPLACE_ALL")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(5))
          .items([<blue_skies:cherry_tallgrass>])
      )
  );

  Dropt.list("lunar_grass_shears")

  .add(Dropt.rule()
      .matchBlocks(["blue_skies:lunar_tallgrass"])
      .matchHarvester(Dropt.harvester()
          .type("ANY")
          .mainHand("WHITELIST", [<minecraft:shears:*>, <blue_skies:ventium_shears:*>, <botania:manasteelshears:*>, <botania:elementiumshears:*>, <thebetweenlands:syrmorite_shears:*>])
      )
      .replaceStrategy("REPLACE_ALL")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(5))
          .items([<blue_skies:lunar_tallgrass>])
      )
  );