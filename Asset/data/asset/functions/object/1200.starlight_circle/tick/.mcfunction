#> asset:object/1200.starlight_circle/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1200/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

#
    execute if score @s General.Object.Tick matches 3 run function asset:object/1200.starlight_circle/tick/transform/0
    execute if score @s General.Object.Tick matches 3 on passengers run function asset:object/1200.starlight_circle/tick/transform/0

# spin
    tp @s ~ ~ ~ ~4.5 ~
    execute on passengers run tp @s ~ ~ ~ ~4.5 ~

# 回転
    execute if score @s General.Object.Tick matches ..11 run function asset:object/1200.starlight_circle/tick/tp/0
    execute if score @s General.Object.Tick matches 12.. run function asset:object/1200.starlight_circle/tick/tp/1

# 消える
    execute if score @s General.Object.Tick matches 25 run function asset:object/1200.starlight_circle/tick/transform/1
    execute if score @s General.Object.Tick matches 25 on passengers run function asset:object/1200.starlight_circle/tick/transform/1

# 消滅処理
    execute if score @s General.Object.Tick matches 37.. run function asset:object/1200.starlight_circle/tick/kill
