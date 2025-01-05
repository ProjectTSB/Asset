#> asset:artifact/1037.grand_flame/trigger/schedule/2.flying
#
# 飛翔時の継続処理
#
# @within function asset:artifact/1037.grand_flame/trigger/schedule/1.tick


# 演出のためにランダムな方向を向かせる
    execute store result entity @s Rotation[0] float 0.01 run function lib:random/
    execute store result entity @s Rotation[1] float 0.01 run function lib:random/

# 演出
    execute at @s run function asset:artifact/1037.grand_flame/trigger/schedule/2.1.vfx

# 飛翔時間減少
    scoreboard players remove @s ST.FlyingTick 1

# 飛翔時間を超過したエンティティを削除
    execute if score @s ST.FlyingTick matches 0 on vehicle run kill @s
    execute if score @s ST.FlyingTick matches 0 run kill @s