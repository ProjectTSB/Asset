#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/1.main
#
# カボチャの雨のメイン処理
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# 自身は透明化して上空で待機する
    execute if entity @s[scores={1N.Tick=0}] run item replace entity @s armor.head with air
    execute if entity @s[scores={1N.Tick=0}] at @e[type=marker,tag=1N.SpawnMarker,distance=..50] run tp @s ~ ~50 ~
    execute if entity @s[scores={1N.Tick=0}] run effect give @s resistance 20 10 true
    execute if entity @s[scores={1N.Tick=0}] run data modify entity @s NoAI set value 1b

# インターバルを設定
    execute if entity @s[scores={1N.Tick=0}] run scoreboard players set @s 1N.Interval 12
    execute if entity @s[scores={1N.Tick=25}] run scoreboard players set @s 1N.Interval 10
    execute if entity @s[scores={1N.Tick=46}] run scoreboard players set @s 1N.Interval 8
    execute if entity @s[scores={1N.Tick=63}] run scoreboard players set @s 1N.Interval 6
    execute if entity @s[scores={1N.Tick=76}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 1N.Interval 4

# 召喚
    execute if entity @s[scores={1N.Tick=..220}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/2.interval

# カボチャの雨の終わり
    execute if entity @s[scores={1N.Tick=220}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/9.end

# リセット
    execute if entity @s[scores={1N.Tick=220..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset
