#> asset:mob/0397.crystal_turret/ai/projectile/2.tick
#
# 弾幕 Tick処理
#
# @within function asset:mob/0397.crystal_turret/tick/

# スコア上昇
    scoreboard players add @s AW.ProjectileTick 1

# TP
    tp @s ^ ^ ^1 ~ ~

# パーティクル
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0.5 1 100000000 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# ダメージを与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add AW.Landing
    execute if entity @a[tag=AW.Landing,distance=..3] run function asset:mob/0392.ecual_first/ai/projectile/water_bullet/3.cast
    execute as @a[tag=AW.Landing,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a[tag=AW.Landing,distance=..3] remove AW.Landing

# Age弄り
    execute on passengers run data modify entity @s Age set value 0

# キル
    execute if score @s AW.ProjectileTick matches 61 run kill @s
    execute at @s unless block ^ ^ ^ #lib:no_collision run kill @s
    execute if entity @s[tag=AW.Landing] run kill @s
