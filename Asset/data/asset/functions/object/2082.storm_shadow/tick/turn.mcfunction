#> asset:object/2082.storm_shadow/tick/turn
#
# 
#
# @within function asset:object/2082.storm_shadow/tick/


# 目標座標を向く(arctan(0.14) = 8度/tickぐらいの速度で旋回)
    $execute at @s positioned ^ ^ ^1000 facing $(x) $(y) $(z) positioned ^ ^ ^1000 facing entity @s feet positioned as @s positioned ^ ^ ^0.14 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# おおよそ目標の方を向いていたら(10度)目標位置にぴったり合わせる
    $execute facing $(x) $(y) $(z) positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 if entity @s[distance=..174] at @s facing $(x) $(y) $(z) run tp @s ~ ~ ~ ~ ~
