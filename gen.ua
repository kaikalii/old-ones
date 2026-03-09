ColorNames ← {"white" "orange" "magenta" "light_blue" "yellow" "lime" "pink" "gray" "light_gray" "cyan" "purple" "blue" "brown" "green" "red" "black"}

# Remove recipes
⍆/◇⊂{
  # Tools and armor
  {
    "wooden_axe"
    "wooden_sword"
    "wooden_pickaxe"
    "stone_sword"
    "stone_pickaxe"
  }
  ({"pickaxe"
    "axe"
    "shovel"
    "hoe"
    "sword"
    "helmet"
    "chestplate"
    "leggings"
    "boots"}
   {"diamond"}
   ♭⊞⍚$"_\__"
  )

  # Ingot smelting
  (SmeltingOre ← ⊃(
    | $"_\_from\_smelting\__\_ore"
    | $"_\_from\_smelting\_deepslate\__\_ore"
    )
   BlastingOre ← ⊃(
    | $"_\_from\_blasting\__\_ore"
    | $"_\_from\_blasting\_deepslate\__\_ore"
    )
   Smelting ← ⊃(
    | ⋅$"_\_nugget\_from\_smelting"
    | $"_\_from\_smelting\_raw\__"
    | SmeltingOre
    )
   Ore ← ⊃SmeltingOre BlastingOre
   {⊃Smelting BlastingOre "iron_ingot" "iron"
    Ore "copper_ingot" "copper"
    ⊃(Ore "gold_ingot"
      | ˙$"_\_ingot\_from\_smelting\_nether\__\_ore"
      | ˙$"_\_ingot\_from\_blasting\_nether\__\_ore"
      ) "gold"
    ˙Ore "redstone"
    Ore "lapis_lazuli" "lapis"
    ˙Ore "diamond"
    ˙Ore "emerald"
    "quartz"
    "netherite_scrap"
    "stone"}
  )

  # Others
  {"hopper"
   "enchanting_table"}
}
/◇⊂₃",\n      "⍚$$ {"namespace": "minecraft", "path": "recipe/_.json"}
{
  "story/shiny_gear"
  "nether/netherite_armor"
  "husbandry/obtain_netherite_hoe"
  "adventure/crafters_crafting_crafters"
}
/◇⊂₃",\n      "⍚$$ {"namespace": "minecraft", "path": "advancement/_.json"}

$$ {
$$   "pack": {
$$     "description": "Salvaging an old world",
$$     "max\_format": 94,
$$     "min\_format": 48
$$   },
$$   "filter": {
$$     "block": [
$$       _,
$$       _
$$     ]
$$   }
$$ }
&fwa "pack.mcmeta"

# Multiple flint and steel recipes
⇌⁅×˜÷64 ⟜⇡8
°˜⊏ °⊸⊢ □"" °⋕ +1°⊏
≡(&fwa ⊓(
    $"data/minecraft/recipe/flint\_and\_steel_.json"
  | ♭↯⊙",\"#oo:tinder\"" +1
    $$ {
    $$   "type": "minecraft:crafting\_shapeless",
    $$   "category": "equipment",
    $$   "ingredients": [
    $$     "minecraft:flint"_
    $$   ],
    $$   "result": {
    $$     "count": 1,
    $$     "id": "minecraft:flint\_and\_steel",
    $$     "components": {
    $$       "damage": _,
    $$       "item\_name": "Firestarter"
    $$     }
    $$   },
    $$   "group": "flint\_and\_steel"
    $$ }
  ))

# Remove metals from armor trims
{"sentry"
 "vex"
 "wild"
 "coast"
 "dune"
 "wayfinder"
 "raiser"
 "shaper"
 "host"
 "ward"
 "silence"
 "tide"
 "snout"
 "rib"
 "eye"
 "spire"
 "flow"
 "bolt"}
⍚(&fwa ⊃(
    $"data/minecraft/recipe/_\_armor\_trim\_smithing\_template\_smithing\_trim.json"
  | ˙$$ {
     $$   "type": "minecraft:smithing\_trim",
     $$   "addition": "#oo:trim\_materials",
     $$   "base": "#minecraft:trimmable\_armor",
     $$   "pattern": "minecraft:_",
     $$   "template": "minecraft:_\_armor\_trim\_smithing\_template"
     $$ }
  )
)

# Wool clothing recipes
ColorNames
[16383998 16351261 13061821 3847130 16701501 8439583 15961002 4673362 10329495 1481884 8991416 3949738 8606770 6192150 11546150 1908001]
⍉⊟
{"Hat" "Shirt" "Pants" "Shoes" "Caparison"}
{"helmet" "chestplate" "leggings" "boots" "horse_armor"}
{
  $         "###",
  $         "# #"

  $         "# #",
  $         "###",
  $         "###"

  $         "###",
  $         "# #",
  $         "# #"

  $         "# #",
  $         "# #"

  $         "# #",
  $         "###",
  $         "# #"
}
⍉⊟₃
⊞(⊓°□₃°□₂
  ⊃(⋅⊙⋅⋅∘
    $"wool/_\__"
  | ⊃(⊙⋅⋅⋅∘|⋅⟜⊙⊙∘)
    $$ {
    $$     "type": "minecraft:crafting\_shaped",
    $$     "category":"equipment",
    $$     "pattern": [
    $$ _
    $$     ],
    $$     "key": {
    $$         "#": "_\_wool"
    $$     },
    $$     "group": "wool\__",
    $$     "result": {
    $$         "id": "leather\__",
    $$         "components": {
    $$             "item\_name": "Wool _",
    $$             "dyed\_color": _,
    $$             "attribute\_modifiers": [
    $$                 {
    $$                     "type": "armor",
    $$                     "operation": "add\_value",
    $$                     "id": "oo:wool\_armor",
    $$                     "amount": 1,
    $$                     "slot": "any"
    $$                 }
    $$             ]
    $$         }
    $$     }
    $$ }
  )
  ⊃(□$$ "oo:_"
  | &fwa $$ data/oo/recipe/_.json
  )
)
/◇⊂₃",\n            "♭
$$ {
$$     "parent": "minecraft:recipes/root",
$$     "criteria": {
$$         "has\_wool": {
$$             "conditions": {
$$                 "items": [
$$                     {
$$                         "items": "#wool"
$$                     }
$$                 ]
$$             },
$$             "trigger": "minecraft:inventory\_changed"
$$         }
$$     },
$$     "requirements": [
$$         [
$$             "has\_wool"
$$         ]
$$     ],
$$     "rewards": {
$$         "recipes": [
$$             _
$$         ]
$$     }
$$ }
&fwa "data/oo/advancement/recipe/wool_armor.json"

# Glass loot tables
{"" "_pane"}
⊂□"" ⍚$"_\_stained\_" ColorNames
⊞⍚(&fwa⊃$"data/minecraft/loot\_table/blocks/_glass_.json"(
  ◡⊙∘
  $$ {
  $$   "type": "block",
  $$   "pools": [
  $$     {
  $$       "bonus\_rolls": 0.0,
  $$       "conditions": [
  $$         {
  $$           "condition": "inverted",
  $$           "term": {
  $$             "condition": "match\_tool",
  $$             "predicate": {
  $$               "items": "#axes"
  $$             }
  $$           }
  $$         }
  $$       ],
  $$       "entries": [
  $$         {
  $$           "type": "item",
  $$           "name": "_glass_"
  $$         }
  $$       ],
  $$       "rolls": 1.0
  $$     }
  $$   ],
  $$   "random\_sequence": "blocks/_glass_"
  $$ }
))
