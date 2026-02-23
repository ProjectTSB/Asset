#> asset:mob/0363.white_spellbook/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/363/tick

# 演出
    particle enchant ~ ~1.68 ~ 0.25 0.25 0.25 0 2 normal @a

# Tickスコア
    scoreboard players add @s General.Mob.Tick 1

# 魔法陣を召喚する
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0363.white_spellbook/tick/magic

# 接地で上を向く
    execute unless block ~ ~-0.1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~-35
    execute unless block ~ ~1 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~80

# 移動スコア
    scoreboard players add @s A3.MoveTimer 1

# MoveTimer =< 60なら遅く追尾は弱く、MoveTimer > 60なら速く追尾は強く
    execute if entity @s[scores={A3.MoveTimer=..60}] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1200 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.15 ~ ~
    execute if entity @s[scores={A3.MoveTimer=60..}] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-600 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.3 ~ ~

# 移動スコアリセット
    execute if entity @s[scores={A3.MoveTimer=120..}] run scoreboard players reset @s A3.MoveTimer

# カベにぶつかった際の処理
    execute unless block ^ ^ ^0.5 #lib:no_collision/ at @s run tp @s ~ ~ ~ ~45 ~-45
    execute at @s unless block ^ ^ ^0.2 #lib:no_collision/ at @s run tp @s ~ ~ ~ ~45 ~-45
