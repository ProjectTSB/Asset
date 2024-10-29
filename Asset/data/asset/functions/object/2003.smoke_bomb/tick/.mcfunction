#> asset:object/2003.smoke_bomb/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2003/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# TPをさせる
    execute unless entity @s[tag=2003.Stick] run function asset:object/2003.smoke_bomb/tick/tp

# くっついた後の処理
    execute if entity @s[tag=2003.Stick] run function asset:object/2003.smoke_bomb/tick/stick

# 発動
    execute if score @s General.Object.Tick matches 140 run function asset:object/2003.smoke_bomb/tick/cast
