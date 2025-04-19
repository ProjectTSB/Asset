#> asset:effect/0236.solitariness/fullset/passive
#
#
#
# @within function asset:effect/0236.solitariness/tick/

# 周囲にモブがいないかつ、周囲にプレイヤーがいないなら付与
    execute if entity @s[tag=!236.Loneliness] unless entity @a[distance=0.1..30] unless entity @e[type=!player,tag=Friend,distance=..30] run function asset:effect/0236.solitariness/fullset/add
    execute if entity @s[tag=!236.Loneliness] unless entity @a[distance=0.1..30] unless entity @e[type=!player,tag=Friend,distance=..30] run tag @s add 236.Loneliness
# 孤独じゃないなら解除
    execute if entity @s[tag=236.Loneliness] if entity @a[distance=0.1..30] run function asset:effect/0236.solitariness/fullset/modifiers/remove
    execute if entity @s[tag=236.Loneliness] if entity @e[type=!player,tag=Friend,distance=..30] run function asset:effect/0236.solitariness/fullset/modifiers/remove
    execute if entity @s[tag=236.Loneliness] if entity @a[distance=0.1..30] run tag @s remove 236.Loneliness
    execute if entity @s[tag=236.Loneliness] if entity @e[type=!player,tag=Friend,distance=..30] run tag @s remove 236.Loneliness
# デバフ
    scoreboard players add @s[tag=236.Loneliness] 236.Time 1
    execute if score @s[tag=236.Loneliness] 236.Time matches 3600.. run function asset:effect/0236.solitariness/fullset/debuff
