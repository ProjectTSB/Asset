#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/2.end
#
# アニメーションのイベントハンドラ Kt大外刈り
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/08_2_kt_throw/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Kt.Throw

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
