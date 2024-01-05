#> asset:mob/0341.louvert/tick/projectile/bullet/1.tick
#
# 弾幕Tick
#
# @within function asset:mob/0341.louvert/tick/2.tick

# スコア上昇
    scoreboard players add @s 9H.ProjectileTick 1

# TP
    tp @s ^ ^ ^0.5 ~ ~

# パーティクル
    particle flame ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 1000000000 1 0 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# ダメージを与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add 9H.Landing
    execute if entity @a[tag=9H.Landing,distance=..3] run function asset:mob/0341.louvert/tick/projectile/bullet/3.cast
    execute as @a[tag=9H.Landing,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a[tag=9H.Landing,distance=..3] remove 9H.Landing

# キル
    execute if score @s 9H.ProjectileTick matches 61 run kill @s
    execute at @s unless block ^ ^ ^ #lib:no_collision run kill @s
    execute if entity @s[tag=9H.Landing] run kill @s