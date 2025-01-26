#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/2.end
#
# アニメーションのイベントハンドラ Hg3段蹴り
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_2_hg_kickcombo/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.KickCombo

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
