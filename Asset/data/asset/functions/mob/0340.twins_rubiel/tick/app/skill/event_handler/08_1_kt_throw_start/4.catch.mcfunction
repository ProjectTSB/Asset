#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/4.catch
#
# アニメーションのイベントハンドラ Kt掴み
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/1.main

# 大外刈りに遷移
    function asset:mob/0340.twins_rubiel/app/general/1.cancel_animation
    tag @s add 9G.Skill.Kt.Throw

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
