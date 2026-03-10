ColorNames ← {"white" "orange" "magenta" "light_blue" "yellow" "lime" "pink" "gray" "light_gray" "cyan" "purple" "blue" "brown" "green" "red" "black"}
UncraftableTools ← {
  "wooden_sword"
  "wooden_pickaxe"
  "wooden_axe"
  "stone_sword"
  "stone_pickaxe"
}
# Remove recipes
⍆/◇⊂{
  # Tools and armor
  UncraftableTools
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
    ˙Ore "coal"
    ˙Ore "redstone"
    Ore "lapis_lazuli" "lapis"
    ˙Ore "diamond"
    ˙Ore "emerald"
    "quartz"
    "quartz_from_blasting"
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

# Ingot smeling
~Smelt {Metal InpMat InpRecip Output Heat Time Exp} (
  &fwa⊃(
    $"data/minecraft/recipe/_\__\_from\___.json" ⊃(Metal|Output|Heat|InpRecip)
  | ⊃(Heat|Time|Exp|InpMat|Metal|Output)
    $$ {
    $$   "type": "_",
    $$   "category": "misc",
    $$   "cookingtime": _,
    $$   "experience": _,
    $$   "ingredient": "_",
    $$   "result": {
    $$     "id": "_\__"
    $$   }
    $$ }
  )
)
Impl ← (
  ⊙⊙(⁅˜÷24000)
  ⊃(Smelt ⊃(∘|$"raw\__\_block"|$"\_raw\__"|"ingot"|⋅⊙∘|0.9)
  | Smelt ⊃(∘|$"#oo:smelt\_to\__\_nugget"|""|"nugget"|⋅∘|⋅⋅(⁅÷9)|0.1))
)
Smelting ← Impl⊙("smelting" 4)
Blasting ← Impl⊙("blasting" 8)
⊃Smelting Blasting"copper"
⊃Smelting Blasting"gold"
Blasting"iron"

# Loot chests
⊸≠@\n&fras "chest_loot_tables.txt"
⊜(&fwa⊃$"data/oo/advancement/loot/_"(
  ↘¯5
  $$ {
  $$     "parent": "oo:loot/all",
  $$     "criteria": {
  $$         "open": {
  $$             "trigger": "player\_generates\_container\_loot",
  $$             "conditions": {
  $$                 "loot\_table": "_"
  $$             }
  $$         }
  $$     },
  $$     "rewards": {
  $$         "function": "oo:replace/generated\_loot"
  $$     }
  $$ }
))

# Enchanting recipes
&fmd⟜&fde "data/oo/recipe/enchant"
&fmd⟜&fde "data/oo/recipe/enchant_dummy"
Numeral  ← ⊏⊙{"I""II""III""IV""V"}-1
EnchName ← ⍜⊜□(⍜▽⍚⍜⊢⌵ >2⊸≡◇⧻) ⊃¬(+×/-"_ ")⊸=@_
~MarkEnchant {Tool Ench Level Mat} ⊃(
  &fwa⊃(
    $"data/oo/recipe/enchant/_\__\__.json" ⊃(Tool|Ench|Level)
  | ⊃(Tool|Mat|Tool|EnchName Ench|Numeral Level)
    $$ {
    $$     "type": "smithing\_transform",
    $$     "base": "_",
    $$     "addition": "_",
    $$     "result": {
    $$         "id": "_",
    $$         "components": {
    $$             "lore": [
    $$                 "+_ _"
    $$             ],
    $$             "custom\_data": {
    $$                 "enchant": true
    $$             }
    $$         }
    $$     }
    $$ }
  )
| &fwa⊃(
    $"data/oo/recipe/enchant\_dummy/_\__\__.json" ⊃(Tool|Ench|Level)
  | ⊃(Ench|Tool|Mat|˜⊏⊂{"armadillo_scute"}□⤙⨂{"#oo:scute"} □Mat|EnchName Ench|EnchName Ench|Numeral Level)
    $$ {
    $$     "type": "crafting\_shaped",
    $$     "group": "_\_upgrade",
    $$     "category": "equipment",
    $$     "key": {
    $$         "T": "_",
    $$         "M": "_",
    $$         "X": "#oo:nothing",
    $$         "S": "smithing\_table"
    $$     },
    $$     "pattern": [
    $$         "XS ",
    $$         "   ",
    $$         " TM"
    $$     ],
    $$     "result": {
    $$         "id": "_",
    $$         "components": {
    $$             "item\_name": {
    $$                 "text": "_",
    $$                 "color": "#ffa0c0"
    $$             },
    $$             "lore": [
    $$                 "+_ _",
    $$                 {"text":"Make in Smithing Table","color":"white","italic":false}
    $$             ],
    $$             "enchantment\_glint\_override": true
    $$         }
    $$     }
    $$ }
  ))

ToolKinds            ← {"pickaxe""axe""shovel""hoe"}
WeaponKinds          ← {"sword""axe""spear"}
DedicatedWeaponKinds ← {"sword""spear"}
ArmorKinds           ← {"helmet""chestplate""leggins""boots"}
ToolPrefixes         ← {"wooden""stone""copper""golden""iron"}
ToolMats             ← {"stick" "stick" "copper_ingot" "iron_ingot" "gold_ingot"}
ArmorPrefixes        ← {"leather""copper""golden""iron"}
ArmorMats            ← {"leather""copper_ingot""gold_ingot""iron_ingot"}
Tools                ← ▽¬⊸∊UncraftableTools ♭⊞⍚$"_\__"ToolPrefixes ToolKinds
Weapons              ← ▽¬⊸∊UncraftableTools ♭⊞⍚$"_\__"ToolPrefixes WeaponKinds
DedicatedWeapons     ← ▽¬⊸∊UncraftableTools ♭⊞⍚$"_\__"ToolPrefixes DedicatedWeaponKinds
Armor                ← ⊂□"turtle_helmet" ♭⊞⍚$"_\__" ArmorPrefixes ArmorKinds
Helmets              ← ⊂□"turtle_helmet" ⍚$"_\_helmet" ArmorPrefixes
Chestplates          ← ⍚$"_\_chestplate" ArmorPrefixes
Boots                ← ⍚$"_\_boots" ArmorPrefixes

⍚⌟₃MarkEnchant Armor "fire_protection" 2 "magma_cream"
⍚⌟₃MarkEnchant Armor "projectile_protection" 1 "#oo:scute"
⍚⌟₃MarkEnchant Boots "depth_strider" 1 "ink_sac"
⍚⌟₃MarkEnchant Boots "feather_falling" 1 "feather"
⍚⌟₃MarkEnchant Chestplates "thorns" 1 "cactus"
⍚⌟₃MarkEnchant DedicatedWeapons "knockback" 1 "feather"
⍚⌟₃MarkEnchant DedicatedWeapons "looting" 1 "rabbit_foot"
⍚⌟₃MarkEnchant Helmets "respiration" 1 "nautilus_shell"
⍚⌟₃MarkEnchant Helmets "respiration" 2 "heart_of_the_sea"
⍚⌟₃MarkEnchant Helmets "aqua_affinity" 1 "prismarine_crystals"
⍚⌟₃MarkEnchant Tools "efficiency" 1 "sugar"
⍚⌟₃MarkEnchant Tools "fortune" 1 "rabbit_foot"
⍚⌟₃MarkEnchant Tools "silk_touch" 1 "amethyst_shard"
⍚⌟₃MarkEnchant Weapons "bane_of_arthropods" 1 "fermented_spider_eye"
⍚⌟₃MarkEnchant Weapons "sharpness" 1 "flint"
⍚⌟₃MarkEnchant Weapons "sharpness" 2 "pointed_dripstone"
⍚⌟₃MarkEnchant Weapons "smite" 1 "glowstone_dust"
MarkEnchant "fishing_rod" "luck_of_the_sea" 1 "rabbit_foot"
MarkEnchant "spear" "lunge" 1 "sugar"

♭₂⊞/⊂₃ ⊂ ToolKinds WeaponKinds ≡⊟ToolPrefixes ToolMats
♭₂⊞/⊂₃ ArmorKinds ≡⊟ArmorPrefixes ArmorMats
≡(MarkEnchant⊓$"_\__"("unbreaking"1∘) °□₃) ⊂

# Enchantment reification
&fmd⟜&fde "data/oo/function/enchant/with"
&fmd⟜&fde "data/oo/item_modifier/enchant"
Slots ← ⊂□"player.cursor" ⍚$"container._" ⇡₀53
~SetEnchant {Ench Level} ⊃(
  ⊙{"player.cursor""container.*"}
  ⍚⌞(⊃(⋅∘|EnchName Ench|Numeral Level|Ench|Level)
     $$ execute if items entity @s _ *[lore=["+_ _"]] run function oo:enchant/with/_\__
  )
  /◇⊂₃ @\n
| ⊃Ench Level
  &fwa⊃(
    $"data/oo/item\_modifier/enchant/_\__.json"
  | json map {"function""enchantments"}{"set_enchantments"map∩¤}
  )
| &fwa⊃(
    $"data/oo/function/enchant/with/_\__.mcfunction" ⊃Ench Level
  | ⊙Slots
    ⍚⌞(⊃(⋅∘|EnchName Ench|Numeral Level|⋅∘|Ench|Level)
       $$ execute if items entity @s _ *[lore=["+_ _"]] run item modify entity @s _ oo:enchant/_\__
    )
    ⊂{"# This file is generated"}
    /◇⊂₃ @\n
  )
)
[
  {"aqua_affinity" 1}
  {"bane_of_arthropods" 1}
  {"efficiency" 1}
  {"depth_strider" 1}
  {"feather_falling" 1}
  {"fire_protection" 2}
  {"fortune" 1}
  {"knockback" 1}
  {"looting" 1}
  {"luck_of_the_sea" 1}
  {"lunge" 1}
  {"projectile_protection" 1}
  {"respiration" 1}
  {"respiration" 2}
  {"sharpness" 1}
  {"sharpness" 2}
  {"silk_touch" 1}
  {"smite" 1}
]
⍚°{°SetEnchant}
⊂{"# This file is generated"}
˜⊂{""}
Slots
˜⊂⍚˙$$ execute if items entity @s _ *[custom\_data={enchant:true}] run return run item modify entity @s _ {function:"set\_components",components:{"!custom\_data":{},"!lore":{}}}
/◇⊂₃ @\n
&fwa "data/oo/function/enchant/player.mcfunction"
