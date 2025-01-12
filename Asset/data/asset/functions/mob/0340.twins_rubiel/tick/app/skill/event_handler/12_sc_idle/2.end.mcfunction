#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/12_sc_idle/2.end
#
# アニメーションのイベントハンドラ Sc待機
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/12_sc_idle/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Sc.Idle

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
