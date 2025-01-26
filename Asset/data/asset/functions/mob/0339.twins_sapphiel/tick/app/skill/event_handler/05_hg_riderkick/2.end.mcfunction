#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/2.end
#
# アニメーションのイベントハンドラ Hgライダーキック
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_hg_riderkick/1.main

# 回し蹴りに遷移
    tag @s remove 9F.Skill.Hg.Riderkick
    tag @s add 9F.Skill.Hg.Spinkick

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
