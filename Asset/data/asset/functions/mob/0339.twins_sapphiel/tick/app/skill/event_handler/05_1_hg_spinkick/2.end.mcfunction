#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/2.end
#
# アニメーションのイベントハンドラ Hg回し蹴り
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/1.main

# 3段蹴りに以降
    tag @s remove 9F.Skill.Hg.Spinkick
    tag @s add 9F.Skill.Hg.KickCombo

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
