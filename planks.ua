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
