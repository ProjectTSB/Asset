#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/2.end
#
# アニメーションのイベントハンドラ Kt掴み
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_1_kt_throw_start/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Kt.Throw.Start

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
