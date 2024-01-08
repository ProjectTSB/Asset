#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_2_hg_stepshot/2.end
#
# アニメーションのイベントハンドラ Hg正拳突き
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/06_2_hg_stepshot/1.main

# タグ消去
    tag @s remove 9F.Skill.Hg.Stepshot

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
