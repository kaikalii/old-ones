OverworldRange ← -62×⟜(⇡₀÷)4 384
LandColors     ← ["#000000" "#ff8000" "#383838" "#525252" "#707070" "#805030" "#70b0ff" "#ffffff" "#70b0ff" "#b0d0ff"]
WaterColors    ← ["#000000" "#ff8000" "#383838" "#525252" "#707070" "#806580" "#0000ff" "#70b0ff" "#ffffff" "#70b0ff" "#b0d0ff"]
[
  {"land"
   LandColors
   [¯59 ¯54 2 8 60 63 191 195 256]
   OverworldRange}
  {"beach"
   WaterColors
   [¯59 ¯54 2 8 60 60 63 191 195 256]
   OverworldRange}
  {"shallow_water"
   WaterColors
   [¯59 ¯54 2 8 44 48 63 191 195 256]
   OverworldRange}
  {"deep_ocean"
   WaterColors
   [¯59 ¯54 2 8 31 35 63 191 195 256]
   OverworldRange}
  {"nether"
   ["#000000" "#ff8000" "#c04030" "#000000" "#808080"]
   [4 32 123 128]
   ×⟜(⇡÷)4 256}
  {"the_end"
   ["#303030" "#ffffb0" "#080018" "#303030"]
   [12 68 104]
   ×⟜(⇡÷)4 256}
  {"end"
   ["#303030" "#ffffb0" "#303030"]
   [12 68]
   ×⟜(⇡÷)4 256}
]

≡°{°(
  &fwa⊓$"data/oo/function/altimeter/tick\__.mcfunction"(
    ˜⊂"#ffffff"
    ⊙⊙(˜⊂1000)
    ⤙(°⊏˜⊏⊙(/+⊞>))
    ⍚⌟(⊓(
        +1
      | ⊃(⍣↙⋅∘¯ ↥⟜(˜-×2) ⊙⊃(-⊙⧻)↙
        | "#ff0000"
        | ⍣↙⋅∘ ↥⟜(˜-×2) ⊙⟜↘
        )20 +1
        ⍚↯⊙@■°▽ ⊂₃
        ⍚$$ {text:"_",color:"_"}
        /◇⊂₃ @,
      )
       $$ execute if score #y oo matches .._ run return run title @s actionbar {text:"", extra: [_]}
    )
    ⊂{"# This file is generated"
      "execute store result score #y oo run data get entity @s Pos[1]"}
    /◇⊂₃ @\n
  )
)}
