#> asset:mob/0363.white_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/0363.white_spellbook/_/tick

# 演出
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 normal @a

# スコア
    scoreboard players add @s A3.Tick 1

# 魔法陣を召喚する
    execute if entity @s[scores={A3.Tick=0..}] run function asset:mob/0363.white_spellbook/tick/summon

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision at @s run tp @s ~ ~ ~ ~ ~80

# 範囲内ならホーミングじみた移動
    execute facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.2 ~ ~

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision at @s run tp @s ~ ~ ~ ~45 ~-45
