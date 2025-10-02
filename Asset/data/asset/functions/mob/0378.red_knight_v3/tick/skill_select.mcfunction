#> asset:mob/0378.red_knight_v3/tick/skill_select
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/

# スキルを+1する。稀に確率でスキルをスキップする
    scoreboard players add @s AI.Skill 1
    execute if predicate lib:random_pass_per/20 run scoreboard players add @s AI.Skill 1

# スキルが超えたら戻す
    execute if score @s AI.Skill matches 7.. run scoreboard players remove @s AI.Skill 6

# デバッグスキル固定
    #scoreboard players set @s AI.Skill 7

# 高HPでスキル6だとスキル戻す
    execute if score @s AI.Skill matches 6 unless entity @s[tag=AI.HPless50per] run scoreboard players set @s AI.Skill 1
# 大技の頻度を下げる
    execute if score @s AI.Skill matches 6 if predicate lib:random_pass_per/20 run scoreboard players set @s AI.Skill 1
# 近距離だと突進に変更
    execute if score @s AI.Skill matches 1 unless entity @p[gamemode=!spectator,distance=..3] run scoreboard players set @s AI.Skill 2


# スキル選択
    execute if score @s AI.Skill matches 1 run tag @s add AI.Skill01
    execute if score @s AI.Skill matches 2 run tag @s add AI.Skill02
    execute if score @s AI.Skill matches 3 run tag @s add AI.Skill03
    execute if score @s AI.Skill matches 4 run tag @s add AI.Skill04
    execute if score @s AI.Skill matches 5 run tag @s add AI.Skill05
    execute if score @s AI.Skill matches 6 run tag @s add AI.Skill06
