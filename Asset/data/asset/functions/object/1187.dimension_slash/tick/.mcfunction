#> asset:object/1187.dimension_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1187/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# モデル変更
    execute if entity @s[scores={General.Object.Tick=3}] run function asset:object/1187.dimension_slash/tick/transform/0/
    execute if entity @s[scores={General.Object.Tick=4}] run function asset:object/1187.dimension_slash/tick/char.m {Char:"1"}
    execute if entity @s[scores={General.Object.Tick=5}] run function asset:object/1187.dimension_slash/tick/char.m {Char:"2"}
    execute if entity @s[scores={General.Object.Tick=6}] run function asset:object/1187.dimension_slash/tick/char.m {Char:"3"}
    execute if entity @s[scores={General.Object.Tick=7}] run function asset:object/1187.dimension_slash/tick/char.m {Char:"4"}
    execute if entity @s[scores={General.Object.Tick=8}] run function asset:object/1187.dimension_slash/tick/char.m {Char:"5"}
    execute if entity @s[scores={General.Object.Tick=9}] run function asset:object/1187.dimension_slash/tick/transform/1/

# 消滅処理
    execute if score @s General.Object.Tick matches 12.. run function asset:object/1187.dimension_slash/tick/kill
