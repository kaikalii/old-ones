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
  "advancement grant @s only oo:story/enhance"
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
