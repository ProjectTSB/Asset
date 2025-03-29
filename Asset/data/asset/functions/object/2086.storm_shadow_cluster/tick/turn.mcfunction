#> asset:object/2086.storm_shadow_cluster/tick/turn
#
# 
#
# @within function asset:object/2086.storm_shadow_cluster/tick/

# 目標上空座標を向く(arctan(0.2) = 11度/tickぐらいの速度で旋回)
    $execute at @s[tag=!2082.TopAttack] positioned ^ ^ ^1000 facing $(x) ~ $(z) positioned ^ ^ ^1000 facing entity @s feet positioned as @s positioned ^ ^ ^0.2 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# おおよそ目標上空の方を向いていたら(12度)目標位置にぴったり合わせる
    $execute facing $(x) ~ $(z) positioned ^ ^ ^1000 rotated as @s positioned ^ ^ ^-1000 if entity @s[distance=..210] at @s facing $(x) $(y) $(z) run tag @s add 2082.TopAttack
    $execute as @s[tag=2082.TopAttack] facing $(x) $(y) $(z) run tp @s ~ ~ ~ ~ ~

# 対空時間が長すぎたら強制的に目標の方を向く
    $execute as @s[scores={General.Object.Tick=50..}] facing $(x) $(y) $(z) run tp @s ~ ~ ~ ~ ~
