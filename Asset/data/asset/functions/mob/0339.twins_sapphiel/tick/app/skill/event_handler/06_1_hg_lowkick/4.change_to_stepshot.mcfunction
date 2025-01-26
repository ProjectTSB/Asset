#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/4.change_to_stepshot
#
# アニメーションのイベントハンドラ Hg足払い
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_1_hg_lowkick/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Lowkick

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0

# 踏みつけ射撃に移行
    tag @s add 9F.Skill.Hg.Stepshot
