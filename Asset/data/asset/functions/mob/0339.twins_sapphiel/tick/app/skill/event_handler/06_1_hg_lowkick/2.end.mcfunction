#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/2.end
#
# アニメーションのイベントハンドラ Hg足払い
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Lowkick

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
