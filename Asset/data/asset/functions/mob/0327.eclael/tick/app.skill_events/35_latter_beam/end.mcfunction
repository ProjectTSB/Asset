#> asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/end
#
# アニメーションのイベントハンドラ 雷斗星刃・当流
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/35_latter_beam/main

# スキル判別用タグ消去
    tag @s remove 93.Skill.Beam

# タイマーリセット
    scoreboard players set @s 93.AnimationTimer 0

# 居合に移行
    tag @s add 93.Skill.IaiMove
