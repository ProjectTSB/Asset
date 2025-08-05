#> asset:mob/0202.hunters_dream/tick/skill_select
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/

#> private
# @private
    #declare score_holder $Random

# 疑似乱数取得
    execute store result score $Random Temporary run random value 0..1
# デバッグのコマンド
    #scoreboard players set $Random Temporary 0
# スキル選択
    execute if score $Random Temporary matches 0 run tag @s add 5M.SkillSword
    execute if score $Random Temporary matches 1 run tag @s add 5M.SkillArrow
# リセット
    scoreboard players reset $Random Temporary
