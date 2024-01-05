#> asset:mob/0351.louvert_bullet/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0351.louvert_bullet/tick/1.trigger

# スコア上昇
    scoreboard players add @s 9R.Tick 1

# TP
    tp @s ^ ^ ^0.5 ~ ~

# パーティクル
    particle flame ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 1000000000 1 0 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# ダメージを与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add 9R.Landing
    execute if entity @a[tag=9R.Landing,distance=..3] run function asset:mob/0351.louvert_bullet/tick/3.cast
    execute as @a[tag=9R.Landing,distance=..3] at @s run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a[tag=9R.Landing,distance=..3] remove 9R.Landing

# キル
    execute if score @s 9R.Tick matches 56 run kill @s
    execute at @s unless block ^ ^ ^ #lib:no_collision run kill @s
    execute if entity @s[tag=9R.Landing] run kill @s
