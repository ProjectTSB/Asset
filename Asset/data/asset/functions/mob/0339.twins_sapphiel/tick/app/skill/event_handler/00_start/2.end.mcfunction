#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/00_start/2.end
#
# アニメーションのイベントハンドラ Hg待機
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/00_start/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Start

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
