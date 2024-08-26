#> asset:mob/0399.void_spellbook/ai/bullet/2.tick
#
# 弾幕 Tick処理
#
# @within function asset:mob/0399.void_spellbook/tick/

# スコア上昇
    scoreboard players add @s B3.Tick 1

# TP
    tp @s ^ ^ ^0.75 ~ ~

# パーティクル
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0.35 0.07 0.55 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 暗闇を与える
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run tag @s add B3.Landing
    execute if entity @a[tag=B3.Landing,distance=..3] run function asset:mob/0399.void_spellbook/ai/bullet/3.cast
    execute as @a[tag=B3.Landing,distance=..3] at @s run function lib:damage/

# リセット
    function lib:damage/reset
    tag @a[tag=B3.Landing,distance=..3] remove B3.Landing

# Age弄り
    execute on passengers run data modify entity @s Age set value 0

# 表示
    execute if score @s B3.Tick matches 3 run data modify entity @s transformation.scale set value [0.5f,0.5f,0.5f]

# キル
    execute if score @s B3.Tick matches 121 run kill @s
    execute at @s unless block ^ ^ ^ #lib:no_collision run kill @s
    execute if entity @s[tag=B3.Landing] run kill @s
