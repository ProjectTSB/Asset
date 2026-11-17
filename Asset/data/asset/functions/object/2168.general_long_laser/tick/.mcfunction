#> asset:object/2168.general_long_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2168/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 変形
    execute if score @s General.Object.Tick matches 2 run function asset:object/2168.general_long_laser/tick/transform/appear

# 縮む
    execute if score @s General.Object.Tick = @s 2168.DisppearTick run function asset:object/2168.general_long_laser/tick/transform/disappear

# 消滅処理
    execute if score @s General.Object.Tick > @s 2168.LifeTime run kill @s
