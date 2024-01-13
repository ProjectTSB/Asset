#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/2.end
#
# アニメーションのイベントハンドラ Kt水平斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/1.main

# 二刀流水平斬りまたはナイフ投げに移行
    tag @s remove 9G.Skill.Kt.Horizon
    # tag @s add 9G.Skill.Kt.Horizon.Double
    tag @s add 9G.Skill.Kt.BackJump

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
