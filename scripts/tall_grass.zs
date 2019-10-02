import mods.dropt.Dropt;

Dropt.list("list_name")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:tallgrass:*"])
      .replaceStrategy("REPLACE_ALL")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(15))
          .items([<minecraft:wheat_seeds>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(85))
      )
  );