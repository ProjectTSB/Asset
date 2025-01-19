#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/2.end
#
# アニメーションのイベントハンドラ Ktカウンター居合斬り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/06_5_kt_sheathe_counter/1.main

# アニメーション終了
    tag @s remove 9G.Skill.Kt.Sheathe.Counter

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
