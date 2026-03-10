UncraftableTools ← {
  "wooden_sword"
  "wooden_pickaxe"
  "wooden_axe"
  "stone_sword"
  "stone_pickaxe"
}

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
