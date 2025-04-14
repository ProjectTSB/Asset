#> asset:effect/0335.solitariness/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0335.solitariness/_/tick

# tick増やして
    scoreboard players add @s[tag=335.Loneliness] 335.Time 1

# デバフ
    execute if score @s[tag=335.Loneliness] 335.Time matches 3600.. run function asset:effect/0335.solitariness/tick/debuff



# 孤独じゃないなら解除
    execute if entity @s[tag=335.Loneliness] if entity @a[distance=0.1..30] run function asset:effect/0335.solitariness/modifier/remove
    execute if entity @s[tag=335.Loneliness] if entity @e[type=!player,tag=Friend,distance=..30] run function asset:effect/0335.solitariness/modifier/remove
    execute if entity @s[tag=335.Loneliness] if entity @a[distance=0.1..30] run tag @s remove 335.Loneliness
    execute if entity @s[tag=335.Loneliness] if entity @e[type=!player,tag=Friend,distance=..30] run tag @s remove 335.Loneliness
    execute if entity @s[tag=335.Loneliness] if entity @e[type=!player,tag=Friend,distance=..30] run say a

# 周囲にモブがいないかつ、周囲にプレイヤーがいないなら付与
    execute if entity @s[tag=!335.Loneliness] unless entity @a[distance=0.1..30] unless entity @e[type=!player,tag=Friend,distance=..30] run function asset:effect/0335.solitariness/modifier/add
    execute if entity @s[tag=!335.Loneliness] unless entity @a[distance=0.1..30] unless entity @e[type=!player,tag=Friend,distance=..30] run tag @s add 335.Loneliness
