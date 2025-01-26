#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/2.end
#
# アニメーションのイベントハンドラ Kt飛び込み斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_1_kt_jumpslash/1.main

# 水平斬りに移行
    tag @s remove 9G.Skill.Kt.JumpSlash
    tag @s add 9G.Skill.Kt.Horizon

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
