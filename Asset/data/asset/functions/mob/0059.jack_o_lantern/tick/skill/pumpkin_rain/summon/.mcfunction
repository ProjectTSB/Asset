#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/
#
# 一定間隔で召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/

# 徐々に召喚間隔を狭めていき、最終的にはインターバル処理で召喚
# 最初は12tick間隔で、2回召喚する毎に2tick狭めていく
# ノーマル以下では最低6tick、ハード以上では4tick
    execute if entity @s[scores={General.Mob.Tick=20}] run tag @s add 1N.PumpkinRain.Interval
    execute if entity @s[scores={General.Mob.Tick=32}] run tag @s add 1N.PumpkinRain.Interval
    execute if entity @s[scores={General.Mob.Tick=44}] run tag @s add 1N.PumpkinRain.Interval
    execute if entity @s[scores={General.Mob.Tick=54}] run tag @s add 1N.PumpkinRain.Interval
    execute if entity @s[scores={General.Mob.Tick=64}] run tag @s add 1N.PumpkinRain.Interval
    execute if entity @s[scores={General.Mob.Tick=72}] run tag @s add 1N.PumpkinRain.Interval
    execute if entity @s[scores={General.Mob.Tick=80}] run tag @s add 1N.PumpkinRain.Interval
    execute if entity @s[scores={General.Mob.Tick=86}] run tag @s add 1N.PumpkinRain.Interval
    execute if entity @s[scores={General.Mob.Tick=92}] run tag @s add 1N.PumpkinRain.Interval

# インターバル処理
    execute if entity @s[scores={General.Mob.Tick=93..}] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/interval

# デバッグ用
    #execute if entity @s[tag=1N.PumpkinRain.Interval] run tellraw @a {"score":{"name": "@s","objective": "General.Mob.Tick"}}

# 召喚
    execute if entity @s[tag=1N.PumpkinRain.Interval] at @e[type=marker,tag=1N.SpawnMarker,distance=..80] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/select_pos

# IntervalTagを削除
    tag @s remove 1N.PumpkinRain.Interval
