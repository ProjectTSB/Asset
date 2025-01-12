#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_1_kt_guard/2.end
#
# アニメーションのイベントハンドラ Kt待機
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_1_kt_guard/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Kt.Guard

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
