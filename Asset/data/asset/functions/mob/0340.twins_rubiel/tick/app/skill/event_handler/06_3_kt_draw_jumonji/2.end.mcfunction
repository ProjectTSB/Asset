#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/2.end
#
# アニメーションのイベントハンドラ Kt瑠火伊流・十文字
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_3_kt_draw_jumonji/1.main

# アニメーション終了
    tag @s remove 9G.Skill.Kt.Draw.Jumonji

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
