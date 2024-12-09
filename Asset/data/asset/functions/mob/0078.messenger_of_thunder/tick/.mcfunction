#> asset:mob/0078.messenger_of_thunder/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/78/tick

# 演出
    particle dust 1 1 0 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 3 normal @a
    particle dust 0.2 0.2 0.2 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 3 normal @a

# スコア
    scoreboard players add @s General.Mob.Tick 1

# 技選択
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0078.messenger_of_thunder/tick/skill_select

# スキル
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0078.messenger_of_thunder/tick/skill_branch

# ワープのクールダウン処理(0以下ならワープ可能になる)
    execute if entity @s[scores={26.TPCool=0..}] run scoreboard players remove @s 26.TPCool 1

# ハメ、落下対策でのtp処理
# スキル中は使用不可
# ハメ対策
    execute if entity @s[scores={General.Mob.Tick=..-1,26.TPCool=..0}] unless block ~ ~ ~ #lib:no_collision_without_fluid unless block ~ ~ ~ #walls run tag @s add 26.Teleport
# 落下対策
    execute if entity @s[scores={General.Mob.Tick=..-1,26.TPCool=..0}] if block ~ ~-0.5 ~ #lib:no_collision if block ~ ~-1.5 ~ #lib:no_collision if block ~ ~-2.5 ~ #lib:no_collision if block ~ ~-3.5 ~ #lib:no_collision run tag @s add 26.Teleport

# tpする
    execute if entity @s[tag=26.Teleport] run function asset:mob/0078.messenger_of_thunder/tick/teleport
