#> asset:mob/0059.jack_o_lantern/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/59/tick

# Tick処理
    scoreboard players add @s General.Mob.Tick 1

# Rotation[1]を固定
    data modify entity @s Rotation[1] set value 0.0f

# 演出
    particle dust 1 0.6 0 1 ~ ~1.8 ~ 0.4 0.4 0.4 0 1 normal @a
    particle dust 0.851 0 1 1 ~ ~1.8 ~ 0.4 0.4 0.4 0 1 normal @a

# スキル選択
    execute if entity @s[scores={General.Mob.Tick=0}] run function asset:mob/0059.jack_o_lantern/tick/skill_select

# スキル実行
    execute if entity @s[scores={General.Mob.Tick=0..}] run function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 被ダメ時に付与されるTagを消す
    tag @s[tag=1N.Hurt] remove 1N.Hurt
