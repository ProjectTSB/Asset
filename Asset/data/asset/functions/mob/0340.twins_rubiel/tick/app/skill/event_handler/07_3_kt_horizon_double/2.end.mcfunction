#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/2.end
#
# アニメーションのイベントハンドラ Kt二刀流水平斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_3_kt_horizon_double/1.main

# 二刀流縦回転斬りに移行
    tag @s remove 9G.Skill.Kt.Horizon.Double
    tag @s add 9G.Skill.Kt.DashAttack

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
