#> asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/end
#
# アニメーションのイベントハンドラ 雷斗星刃・至円
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/38_latter_circle_slash/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Circle

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
