#> asset:object/1200.starlight_circle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1200/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

#
    execute if score @s General.Object.Tick matches 3 run function asset:object/1200.starlight_circle/tick/expand
    execute if score @s General.Object.Tick matches 3 on passengers run function asset:object/1200.starlight_circle/tick/expand

# 回転
    tp @s ~ ~ ~ ~4.5 ~
    execute on passengers run tp @s ~ ~ ~ ~4.5 ~

# 消える
    execute if score @s General.Object.Tick matches 20 run function asset:object/1200.starlight_circle/tick/reduct
    execute if score @s General.Object.Tick matches 20 on passengers run function asset:object/1200.starlight_circle/tick/reduct

# 消滅処理
    execute if score @s General.Object.Tick matches 32.. run function asset:object/1200.starlight_circle/tick/kill
