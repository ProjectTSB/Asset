#> asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_5_damage_stun/2.end
#
# アニメーションのイベントハンドラ 怯み・スタン
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/event_handler/40_5_damage_stun/1.main

# カウンター増加
    scoreboard players add @s 9F.DownCount 1

# 怯み・ダウンに移行
    execute if score @s 9F.DownCount matches 6.. run tag @s add 9F.Skill.Damage.End
    execute if entity @s[tag=9F.Skill.Damage.End] run tag @s remove 9F.Skill.Damage.Stun

# タイマーリセット
    scoreboard players set @s 9F.AnimationTimer 0
