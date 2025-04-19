#> asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/end
#
# アニメーションのイベントハンドラ 曲射
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/39_latter_upper_shot/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.UpperShot

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
