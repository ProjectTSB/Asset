#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/000_start/2.end
#
# アニメーションのイベントハンドラ 登場
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/000_start/1.main

# スキル判別用タグ消去
    tag @s remove 9G.Skill.Start
# 待機開始
    tag @s add 9G.State.Await

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer -1
