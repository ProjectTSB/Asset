#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/2.end
#
# アニメーションのイベントハンドラ Hgライダーキック
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Riderkick

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
