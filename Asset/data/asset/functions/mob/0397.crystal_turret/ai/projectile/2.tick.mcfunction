#> asset:mob/0397.crystal_turret/ai/projectile/2.tick
#
# 弾幕 Tick処理
#
# @within function asset:mob/0397.crystal_turret/tick/

# スコア上昇
    scoreboard players add @s B1.Tick 1

# TP
    tp @s ^ ^ ^0.5 ~ ~

# パーティクル
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0.5 1 100000000 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# ダメージを与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add B1.Landing
    execute if entity @a[tag=B1.Landing,distance=..3] run function asset:mob/0397.crystal_turret/ai/projectile/3.cast
    execute as @a[tag=B1.Landing,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a[tag=B1.Landing,distance=..3] remove B1.Landing

# Age弄り
    execute on passengers run data modify entity @s Age set value 0

# キル
    execute if score @s B1.Tick matches 61 run kill @s
    execute at @s unless block ^ ^ ^ #lib:no_collision run kill @s
    execute if entity @s[tag=B1.Landing] run kill @s
