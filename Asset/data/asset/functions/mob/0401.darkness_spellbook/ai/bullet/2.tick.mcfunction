#> asset:mob/0401.darkness_spellbook/ai/bullet/2.tick
#
# 弾幕 Tick処理
#
# @within function asset:mob/0401.darkness_spellbook/tick/

# スコア上昇
    scoreboard players add @s B5.Tick 1

# TP
    tp @s ^ ^ ^0.4 ~ ~

# パーティクル
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0.07 0.10 0.55 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 暗闇を与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add B5.Landing
    execute as @a[tag=B5.Landing,distance=..3] run function asset:mob/0401.darkness_spellbook/ai/bullet/3.cast

# タグ付け
    execute if entity @a[tag=B5.Landing,distance=..3] run tag @s add B5.Landing

# リセット
    tag @a[tag=B5.Landing,distance=..3] remove B5.Landing

# Age弄り
    execute on passengers run data modify entity @s Age set value 0

# 表示
    execute if score @s B5.Tick matches 3 run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]

# キル
    execute if score @s B5.Tick matches 121 run kill @s
    execute at @s unless block ^ ^ ^ #lib:no_collision run kill @s
    execute if entity @s[tag=B5.Landing] run kill @s
