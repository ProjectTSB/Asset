#> asset:mob/0341.louvert/tick/general/4.selected_skill_animation
#
# 選択したスキルのアニメーションを開始する
#
# @within function asset:mob/0341.louvert/**

# 火炎陣
    execute if score @s 9H.SkillSelect matches 1 run scoreboard players set @s 9H.AnimationNum 111

# メテオ
    execute if score @s 9H.SkillSelect matches 2 run scoreboard players set @s 9H.AnimationNum 41

# ソウルブラスト
    execute if score @s 9H.SkillSelect matches 3 run scoreboard players set @s 9H.AnimationNum 71

# ボム
    execute if score @s 9H.SkillSelect matches 4 run scoreboard players set @s 9H.AnimationNum 112



















# アニメーションリセット
    scoreboard players set @s 9H.AnimationTick 0