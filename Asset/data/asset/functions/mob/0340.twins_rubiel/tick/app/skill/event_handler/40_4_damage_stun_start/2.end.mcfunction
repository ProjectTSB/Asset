#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_4_damage_stun_start/2.end
#
# アニメーションのイベントハンドラ 怯み・スタン開始
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_4_damage_stun_start/1.main

# 怯み・ダウンに移行
    tag @s remove 9G.Skill.Damage.Stun.Start
    tag @s add 9G.Skill.Damage.Stun

# タイマー・カウントリセット
    scoreboard players set @s 9G.AnimationTimer 0
    scoreboard players set @s 9G.DownCount 0
