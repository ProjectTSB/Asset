#> asset:mob/0365.frestchika_v2/ai/projectile/bullet/3.tick
#
# 弾幕 Tick処理
#
# @within function asset:mob/0365.frestchika_v2/tick/

# スコア上昇
    scoreboard players add @s A5.ProjectileTick 1

# TP
    tp @s ^ ^ ^1 ~ ~

# パーティクル
    particle soul_fire_flame ~ ~ ~ 0.25 0.25 0.25 0.05 2 force @a[distance=..32]
    particle dust 0 0.8 100000000 1 ~ ~ ~ 0.25 0.25 0.25 0 8 force @a[distance=..32]

# ダメージを与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add A5.Landing
    execute if entity @a[tag=A5.Landing,distance=..3] run function asset:mob/0365.frestchika_v2/ai/projectile/bullet/4.cast
    execute as @a[tag=A5.Landing,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a[tag=A5.Landing,distance=..3] remove A5.Landing

# キル
    execute if score @s A5.ProjectileTick matches 61 run kill @s
    execute at @s unless block ^ ^ ^ #lib:no_collision run kill @s
    execute if entity @s[tag=A5.Landing] run kill @s