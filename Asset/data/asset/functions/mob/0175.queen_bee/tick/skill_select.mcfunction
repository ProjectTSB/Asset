#> asset:mob/0175.queen_bee/tick/skill_select
#
#
#
# @within function asset:mob/0175.queen_bee/tick/


# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..4
# デバッグのコマンド
    scoreboard players set $Random Temporary 5
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 4V.SkillTackle
    execute if score $Random Temporary matches 1 run tag @s add 4V.SkillSummon
    execute if score $Random Temporary matches 2 run tag @s add 4V.SkillNeedle
    execute if score $Random Temporary matches 3 run tag @s add 4V.SkillGrandSlam
    execute if score $Random Temporary matches 4 run tag @s add 4V.SkillTackleFormation
    execute if score $Random Temporary matches 5 run tag @s add 4V.SkillBeeBomb
# リセット
    scoreboard players reset $Random Temporary
