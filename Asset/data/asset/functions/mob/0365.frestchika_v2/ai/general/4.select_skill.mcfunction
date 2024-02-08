#> asset:mob/0365.frestchika_v2/ai/general/4.select_skill
#
# スキルを選択する
#
# @within function asset:mob/0365.frestchika_v2/**

# スキルを乱数で選択する
    scoreboard players set @s A5.SkillSelect 2

# 二連突進
    execute if score @s A5.SkillSelect matches 1 run scoreboard players set @s A5.AnimationNum 10

# プラズマショック
    execute if score @s A5.SkillSelect matches 2 run scoreboard players set @s A5.AnimationNum 20

# アニメーションリセット
    scoreboard players add @s A5.AnimationTick 1