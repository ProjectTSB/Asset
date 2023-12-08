#> asset:mob/0341.louvert/tick/general/4.selected_skill_animation
#
# 選択したスキルのアニメーションを開始する
#
# @within function asset:mob/0341.louvert/**

# 火炎陣
    execute if score @s 9H.SkillSelect matches 1 run scoreboard players set @s 9H.AnimationNum 111



















# アニメーションリセット
    scoreboard players set @s 9H.AnimationTick 0