#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/2.end
#
# アニメーションのイベントハンドラ Kt移動突き
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/03_2_kt_movetospear/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Kt.MoveToSpear

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
