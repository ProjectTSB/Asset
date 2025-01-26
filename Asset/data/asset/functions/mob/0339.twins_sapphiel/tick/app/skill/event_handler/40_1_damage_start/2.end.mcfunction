#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/2.end
#
# アニメーションのイベントハンドラ 怯み・開始
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_1_damage_start/1.main

# 怯み・ダウンに移行
    tag @s remove 9F.Skill.Damage.Start
    tag @s add 9F.Skill.Damage.Down

# タイマー・カウントリセット
    scoreboard players set @s 9F.AnimationTimer 0
    scoreboard players set @s 9F.DownCount 0
