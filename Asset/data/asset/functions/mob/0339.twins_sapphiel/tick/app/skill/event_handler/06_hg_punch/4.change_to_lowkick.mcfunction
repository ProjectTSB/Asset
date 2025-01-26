#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/4.change_to_lowkick
#
# アニメーションのイベントハンドラ Hg正拳突き
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_hg_punch/1.main

# スキル判別用タグ消去
    tag @s remove 9F.Skill.Hg.Punch

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0

# 足払いに移行
    tag @s add 9F.Skill.Hg.Lowkick
