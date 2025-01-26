#> asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_5_damage_stun/2.end
#
# アニメーションのイベントハンドラ 怯み・スタン
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/event_handler/40_5_damage_stun/1.main

# カウンター増加
    scoreboard players add @s 9G.DownCount 1

# 怯み・ダウンに移行
    execute if score @s 9G.DownCount matches 6.. run tag @s add 9G.Skill.Damage.End
    execute if entity @s[tag=9G.Skill.Damage.End] run tag @s remove 9G.Skill.Damage.Stun

# タイマーリセット
    scoreboard players set @s 9G.AnimationTimer 0
