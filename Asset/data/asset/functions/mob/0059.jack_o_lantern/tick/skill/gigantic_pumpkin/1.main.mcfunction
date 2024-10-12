#> asset:mob/0059.jack_o_lantern/tick/skill/gigantic_pumpkin/1.main
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill_branch

# インターバルを設定
    execute if entity @s[scores={1N.Tick=0}] run scoreboard players set @s 1N.Interval 12
    execute if entity @s[scores={1N.Tick=25}] run scoreboard players set @s 1N.Interval 10
    execute if entity @s[scores={1N.Tick=46}] run scoreboard players set @s 1N.Interval 8
    execute if entity @s[scores={1N.Tick=63}] run scoreboard players set @s 1N.Interval 6
    execute if entity @s[scores={1N.Tick=76}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 1N.Interval 4

# 召喚
    function asset:mob/0059.jack_o_lantern/tick/skill/gigantic_pumpkin/2.interval

# リセット
    execute if entity @s[scores={1N.Tick=200..}] run function asset:mob/0059.jack_o_lantern/tick/skill/reset
