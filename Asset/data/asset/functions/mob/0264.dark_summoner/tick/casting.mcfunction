#> asset:mob/0264.dark_summoner/tick/casting
#
# 詠唱中の処理
#
# @within function asset:mob/0264.dark_summoner/tick/

# 詠唱
    scoreboard players add @s 7C.Attack 1
    effect give @s slowness 1 10 true

# ノーマルで確率テレポート
# ハード以上なら確定でテレポート
    execute if entity @s[scores={7C.Attack=35}] if predicate api:global_vars/difficulty/normal if predicate lib:random_pass_per/50 run function asset:mob/0264.dark_summoner/tick/teleport
    execute if entity @s[scores={7C.Attack=35}] if predicate api:global_vars/difficulty/min/hard run function asset:mob/0264.dark_summoner/tick/teleport

# テレポートの透明化を解除
    execute if entity @s[tag=7C.Teleported,scores={7C.Attack=40}] run item replace entity @s armor.head with stick{CustomModelData:20215}

# SFX
    particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 0 1
    execute if score @s 7C.Attack matches 40 run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 4 2
    execute if score @s 7C.Attack matches 40..100 run particle minecraft:dust 0.545 0.11 0.655 2 ~ ~0.5 ~ 0.2 0.5 0.2 0 1
    execute if score @s 7C.Attack matches 100.. run particle minecraft:dust 0.545 0.5 0.655 2 ~ ~0.5 ~ 0.2 0.5 0.2 0 1

# 実行
    execute if score @s 7C.Attack matches 80 rotated ~ 0 positioned ^2 ^ ^ if block ~ ~ ~ #lib:no_collision run function asset:mob/0264.dark_summoner/tick/summon_minions
    execute if score @s 7C.Attack matches 90 rotated ~ 0 positioned ^-2 ^ ^ if block ~ ~ ~ #lib:no_collision run function asset:mob/0264.dark_summoner/tick/summon_minions
    execute if score @s 7C.Attack matches 85 rotated ~ 0 positioned ^ ^ ^-2 if block ~ ~ ~ #lib:no_collision run function asset:mob/0264.dark_summoner/tick/summon_minions

# ポーズ変更
    item replace entity @s[scores={7C.Attack=120}] armor.head with stick{CustomModelData:20214}

# 終了
    execute if score @s 7C.Attack matches 180.. run function asset:mob/0264.dark_summoner/tick/cast_finish
