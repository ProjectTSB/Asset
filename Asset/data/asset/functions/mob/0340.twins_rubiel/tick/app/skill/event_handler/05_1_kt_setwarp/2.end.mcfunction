#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/2.end
#
# アニメーションのイベントハンドラ Ktワープポイント設置
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/05_1_kt_setwarp/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Kt.Warp

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
