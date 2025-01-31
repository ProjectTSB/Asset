#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/2.end
#
# アニメーションのイベントハンドラ Ktナイフ投げ
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/07_5_kt_backjump/1.main

# アニメーション終了
    tag @s remove 9G.Skill.Kt.BackJump

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
