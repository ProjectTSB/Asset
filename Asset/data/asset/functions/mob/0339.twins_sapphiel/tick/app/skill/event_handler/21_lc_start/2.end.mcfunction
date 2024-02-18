#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/21_lc_start/2.end
#
# アニメーションのイベントハンドラ Lc召喚
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/21_lc_start/1.main

# 射撃・ジャンプに遷移
    tag @s remove 9F.Skill.Lc.Start
    tag @s add 9F.Skill.Lc.Jump

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
