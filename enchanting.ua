~ "utils" ~ Slots

UncraftableTools ← {
  "wooden_sword"
  "wooden_pickaxe"
  "wooden_axe"
  "stone_sword"
  "stone_pickaxe"
}

# Enchanting recipes
&fmd⟜&fde "data/oo/recipe/enchant"
Numeral  ← ⊏⊙{"I""II""III""IV""V"}-1
EnchName ← ⍜⊜□(⍜▽⍚⍜⊢⌵ >2⊸≡◇⧻) ⊃¬(+×/-"_ ")⊸=@_

ToolKinds            ← {"pickaxe""axe""shovel""hoe"}
WeaponKinds          ← {"sword""axe""spear"}
DedicatedWeaponKinds ← {"sword""spear"}
ArmorKinds           ← {"helmet""chestplate""leggings""boots"}
ToolPrefixes         ← {"golden""wooden""stone""copper""iron"}
ArmorPrefixes        ← {"leather""golden""copper""chainmail""iron"}
Tools                ← ▽¬⊸∊UncraftableTools ♭⊞⍚$"_\__"ToolPrefixes ToolKinds
Weapons              ← ▽¬⊸∊UncraftableTools ♭⊞⍚$"_\__"ToolPrefixes WeaponKinds
DedicatedWeapons     ← ▽¬⊸∊UncraftableTools ♭⊞⍚$"_\__"ToolPrefixes DedicatedWeaponKinds
Armor                ← ⊂□"turtle_helmet" ♭⊞⍚$"_\__" ArmorPrefixes ArmorKinds

/◇⊂{Armor Tools DedicatedWeapons}
⍚(&fwa⊃(
    $"data/oo/recipe/enchant/_.json"
  | ˙$$ {
     $$     "type": "smithing\_transform",
     $$     "base": "_",
     $$     "addition": "experience\_bottle",
     $$     "result": {
     $$         "id": "_",
     $$         "components": {
     $$             "lore": [
     $$                 "Increased Potential"
     $$             ]
     $$         }
     $$     }
     $$ }
  ))

# Increase potential
Slots
⍚˙$$ execute if items entity @s _ *[lore=["Increased Potential"]] run return run item modify entity @s _ oo:increase\_potential
⊂{"# This file is generated"
  "advancement grant @s only oo:story/enchant"
  ""}
/◇⊂₃ @\n
&fwa "data/oo/function/enchant/player_increase.mcfunction"

# Equipment damage tracking

# Armor
ArmorDur ← [
  [55 80 75 65]
  [77 112 105 91]
  [121 176 165 143]
  [165 240 225 195]
  [165 240 225 195]
]
{"head""chest""legs""feet"} ⍉⊞⍚$"_\__" ArmorPrefixes ArmorKinds ⍉ArmorDur
⍚(
  &fwa $"data/oo/function/enchant/set\_remaining\__.mcfunction"⟜(
    ⍚⌞(
      ⊃⊙∘⊙⋅∘
      $$ execute if items entity @s armor._ _ run return run scoreboard players set #_\_remaining oo _
    )
    ⊂{"# This file is generated"}
    /◇⊂₃ @\n
  )
)
# Tools & Weapons
[32 59 131 191 250 64 384 465 250 500]
⊂ ⍚$"#oo:tools/_"ToolPrefixes {"fishing_rod" "bow" "crossbow" "trident" "mace"}
{"mainhand""offhand"}
⍚⌟₂(
  &fwa $"data/oo/function/enchant/set\_remaining\__.mcfunction"⟜(
    ⍚⌞(
      ∩⌞⊙∘
      $$ execute if items entity @s weapon._ _ run return run scoreboard players set #_\_remaining oo _
    )
    ⊂{"# This file is generated"}
    /◇⊂₃ @\n
  )
)

# Fortune

{"coal" "copper" "iron" "gold" "diamond" "redstone" "lapis" "emerald"}
♭⊞⍚$"__\_ore" {"" "deepslate_"}
˜⊂ {"nether_gold_ore" "nether_quartz_ore"}

⊃(⍚˙$$ scoreboard objectives add oo._ mined:_
    $$ scoreboard objectives add oo.last\__ dummy
    $$ scoreboard players operation @a oo.last\__ = @a oo._
  ⊂{
    "# This file is generated"
    "scoreboard objectives add oo.drink dummy"
    "scoreboard players set @a oo.drink 0"
    ""
  }
  /◇⊂₃ @\n
  &fwa "data/oo/function/enchant/load.mcfunction"
| /◇⊂₃@\n⊂₃⊃(
    □$ # This file is generated
     $ execute unless items entity @s weapon.mainhand #pickaxes run return 0
     $ execute if data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:silk_touch" run return 0
     $ execute if score #mainhand_potential oo < #mainhand_pot_req oo run return 0
     $ 
     $ scoreboard players set #fortune oo 0
     $ execute store result score #fortune oo run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:fortune"
     $ execute if score #fortune oo matches 3.. run return 0
     $ 
     $ scoreboard players set #do_fortune oo 0
     $ 
  | ⍚˙$$ execute unless score @s oo._ = @s oo.last\__ run scoreboard players set #do\_fortune oo 1
      $$ scoreboard players operation @s oo.last\__ = @s oo._
  | □$ tellraw @s {score:{name:"#do_fortune",objective:"oo"}}
     $ execute store result score #rand oo run random value 1..10
     $ execute if score #rand oo matches 1 if score #do_fortune oo matches 1 run function oo:enchant/with {slot:weapon.mainhand,ench:fortune}
  )
  &fwa "data/oo/function/enchant/fortune.mcfunction"
)
