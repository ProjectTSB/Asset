#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/2.end
#
# アニメーションのイベントハンドラ Kt水平斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_2_kt_horizon/1.main

# アニメーション終了
    tag @s remove 9G.Skill.Kt.Horizon

# 特定タイミングでは二刀流水平斬りに移行
    execute if score @s 9G.ActionCount matches 2 run tag @s add 9G.Skill.Kt.Horizon.Double
    execute if score @s 9G.ActionCount matches 5 run tag @s add 9G.Skill.Kt.Horizon.Double
    execute if score @s 9G.ActionCount matches 7 run tag @s add 9G.Skill.Kt.Horizon.Double
# それ以外はナイフ投げに移行
    execute unless entity @s[tag=9G.Skill.Kt.Horizon.Double] run tag @s add 9G.Skill.Kt.BackJump

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
