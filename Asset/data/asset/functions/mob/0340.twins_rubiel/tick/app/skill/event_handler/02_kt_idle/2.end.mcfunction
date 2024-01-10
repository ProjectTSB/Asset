#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/2.end
#
# アニメーションのイベントハンドラ Hg待機
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/02_kt_idle/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Kt.Idle

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
