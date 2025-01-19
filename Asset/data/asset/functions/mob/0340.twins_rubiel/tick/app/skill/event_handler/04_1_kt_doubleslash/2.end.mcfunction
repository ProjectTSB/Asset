#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/2.end
#
# アニメーションのイベントハンドラ Kt斬り下がり
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/04_1_kt_doubleslash/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Kt.Doubleslash

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
