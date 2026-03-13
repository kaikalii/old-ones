WoodKinds   ← {"oak" "spruce" "birch" "jungle" "acacia" "dark_oak" "mangrove" "cherry" "pale_oak"}
HyphaeKinds ← {"crimson" "warped"}
~LogCombo {Tree Kind}
LogCombos ← ⊂∩(♭₂⊞◇LogCombo) WoodKinds {"log" "wood"} HyphaeKinds {"stem" "hyphae"}
LogTags   ← ⊂∩(♭₂≡⌟◇LogCombo) WoodKinds "logs" HyphaeKinds "stems"

LogCombos
LogCombo!⍚(&fwa⊃(
    $"data/minecraft/loot\_table/blocks/stripped\__\__.json" ⊃Tree Kind
  | ⊃(Tree|Kind|Tree|Tree|Tree|Kind)
    $$ {
    $$   "type": "block",
    $$   "pools": [
    $$     {
    $$       "bonus\_rolls": 0.0,
    $$       "conditions": [
    $$         {
    $$           "condition": "survives\_explosion"
    $$         },
    $$         {
    $$           "condition": "inverted",
    $$           "term": {
    $$             "condition": "reference",
    $$             "name": "oo:axe\_no\_st"
    $$           }
    $$         }
    $$       ],
    $$       "entries": [
    $$         {
    $$           "type": "item",
    $$           "name": "stripped\__\__"
    $$         }
    $$       ],
    $$       "rolls": 1.0
    $$     },
    $$     {
    $$       "bonus\_rolls": 0.0,
    $$       "conditions": [
    $$         {
    $$           "condition": "reference",
    $$           "name": "oo:axe\_no\_st"
    $$         }
    $$       ],
    $$       "entries": [
    $$         {
    $$           "type": "item",
    $$           "name": "_\_planks",
    $$           "functions": [
    $$             {
    $$               "function": "set\_count",
    $$               "count": 3
    $$             }
    $$           ]
    $$         }
    $$       ],
    $$       "rolls": 1.0
    $$     },
    $$     {
    $$       "bonus\_rolls": 0.0,
    $$       "conditions": [
    $$         {
    $$           "condition": "reference",
    $$           "name": "oo:axe\_no\_st"
    $$         }
    $$       ],
    $$       "entries": [
    $$         {
    $$           "type": "item",
    $$           "name": "_\_planks"
    $$         },
    $$         {
    $$           "type": "item",
    $$           "name": "stick",
    $$           "functions": [
    $$             {
    $$               "function": "set\_count",
    $$               "count": 2
    $$             }
    $$           ]
    $$         }
    $$       ],
    $$       "rolls": 1.0
    $$     }
    $$   ],
    $$   "random\_sequence": "blocks/stripped\__\__"
    $$ }
  ))

# Plank cutting
LogTags
LogCombo!⍚(&fwa⊃(
    $"data/minecraft/recipe/_\_planks.json" Tree
  | ⊃(Tree|Kind|Tree)
    $$ {
    $$   "type": "stonecutting",
    $$   "ingredient": "#_\__",
    $$   "result": {
    $$     "id": "_\_planks",
    $$     "count": 4
    $$   }
    $$ }
  ))

# Plank derivatives
[{"slab" 2} {"stairs" 1} {"pressure_plate" 1} {"button" 2} {"trapdoor" 1}]
⊂ WoodKinds HyphaeKinds
⊞(&fwa⊃(
    $"data/oo/recipe/cut/_\__.json" ⊙⊢
  | ⊓⟜∘°□₂
    $$ {
    $$     "type": "stonecutting",
    $$     "ingredient": "_\_planks",
    $$     "result": {
    $$         "id": "_\__",
    $$         "count": _
    $$     }
    $$ }
  )
)

# Slab from stairs
⊂ WoodKinds HyphaeKinds
⍚(&fwa⊃(
    $"data/oo/recipe/cut/_\_slab\_from\_stairs.json"
  | ˙$$ {
     $$     "type": "stonecutting",
     $$     "ingredient": "_\_stairs",
     $$     "result": {
     $$         "id": "_\_slab",
     $$         "count": 1
     $$     }
     $$ }
  )
)

# Buttons from pressue plate
⊂ WoodKinds HyphaeKinds
⍚(&fwa⊃(
    $"data/oo/recipe/cut/_\_buttons\_from\_pressure\_plate.json"
  | ˙$$ {
     $$     "type": "stonecutting",
     $$     "ingredient": "_\_pressure\_plate",
     $$     "result": {
     $$         "id": "_\_button",
     $$         "count": 2
     $$     }
     $$ }
  )
)
