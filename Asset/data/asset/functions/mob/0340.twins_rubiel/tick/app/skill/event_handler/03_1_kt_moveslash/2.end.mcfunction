#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/2.end
#
# アニメーションのイベントハンドラ Kt移動斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_1_kt_moveslash/1.main

# 移動突きに移行
    tag @s remove 9G.Skill.Kt.Moveslash
    tag @s add 9G.Skill.Kt.MoveToSpear

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
