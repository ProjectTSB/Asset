#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_3_hg_fullburst_end/2.end
#
# アニメーションのイベントハンドラ Hg正拳突き
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/08_3_hg_fullburst_end/1.main

# アニメーション停止
    tag @s remove 9F.Skill.Hg.Fullburst.End

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer -1
