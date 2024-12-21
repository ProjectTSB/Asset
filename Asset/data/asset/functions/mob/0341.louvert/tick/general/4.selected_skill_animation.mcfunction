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

# 広範囲斬撃
    execute if score @s 9H.SkillSelect matches 4 run scoreboard players set @s 9H.AnimationNum 31

# ボム
    execute if score @s 9H.SkillSelect matches 5 run scoreboard players set @s 9H.AnimationNum 112

# ブレードカッター
    execute if score @s 9H.SkillSelect matches 6 run scoreboard players set @s 9H.AnimationNum 51

# 三連撃
    execute if score @s 9H.SkillSelect matches 7 run scoreboard players set @s 9H.AnimationNum 91

# 刺突落下
    execute if score @s 9H.SkillSelect matches 8 run scoreboard players set @s 9H.AnimationNum 141

# アニメーションリセット
    scoreboard players set @s 9H.AnimationTick 0