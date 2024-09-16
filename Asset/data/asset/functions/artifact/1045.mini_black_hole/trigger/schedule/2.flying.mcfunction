#> asset:artifact/1045.mini_black_hole/trigger/schedule/2.flying
#
# 飛翔時処理
#
# @within function asset:artifact/1045.mini_black_hole/trigger/schedule/1.tick

# 演出のためにランダムな方向を向かせる
    execute store result entity @s Rotation[0] float 0.01 run function lib:random/
    execute store result entity @s Rotation[1] float 0.01 run function lib:random/

# 演出
    execute at @s run function asset:artifact/1045.mini_black_hole/trigger/schedule/2.1.flying_vfx

# 飛翔時間減少
    scoreboard players remove @s T1.FlyingTick 1

# 飛翔時間を超過した場合、キルする
    execute if score @s T1.FlyingTick matches 0 on vehicle run kill @s
    execute if score @s T1.FlyingTick matches 0 run kill @s