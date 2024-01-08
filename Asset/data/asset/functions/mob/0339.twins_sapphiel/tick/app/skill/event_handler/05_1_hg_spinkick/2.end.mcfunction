#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/2.end
#
# アニメーションのイベントハンドラ Hg回し蹴り
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/05_1_hg_spinkick/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Spinkick

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
