#> asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/end
#
# アニメーションのイベントハンドラ 雷斗星刃・当流
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/34_latter_field_slash/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.FieldSlash
    tag @s remove 93.Skill.FieldSlash.A

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer -1
