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

# 召喚地点から一定以上離れたならスキル中であろうと強制的に戻す
    execute unless entity @e[type=marker,tag=26.SpawnPoint,distance=..32] run tp @s @e[type=marker,tag=26.SpawnPoint,distance=..100,limit=1]

# ハメ対策でのtp処理
# スキル中は使用不可
# ハメ対策
    execute if entity @s[scores={General.Mob.Tick=..-1,26.TPCool=..0}] unless block ~ ~ ~ #lib:no_collision/without_fluid unless block ~ ~ ~ #walls run tag @s add 26.Teleport

# tpする
    execute if entity @s[tag=26.Teleport] run function asset:mob/0078.messenger_of_thunder/tick/teleport
