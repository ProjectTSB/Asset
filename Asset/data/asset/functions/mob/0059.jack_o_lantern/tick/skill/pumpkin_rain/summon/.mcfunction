#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/
#
# 一定間隔で召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/

# インターバルを設定
# インターバルを変える直前にに2ndTickを0に戻す
# 2ndTickを使って召喚間隔を正確に早めている
    execute if entity @s[scores={1N.Tick=20}] run scoreboard players set @s 1N.2ndTick 0
    execute if entity @s[scores={1N.2ndTick=20}] run scoreboard players set @s 1N.Interval 12
    execute if entity @s[scores={1N.Tick=44}] run scoreboard players set @s 1N.2ndTick 0
    execute if entity @s[scores={1N.2ndTick=44}] run scoreboard players set @s 1N.Interval 10
    execute if entity @s[scores={1N.Tick=64}] run scoreboard players set @s 1N.2ndTick 0
    execute if entity @s[scores={1N.2ndTick=64}] run scoreboard players set @s 1N.Interval 8
    execute if entity @s[scores={1N.Tick=80}] run scoreboard players set @s 1N.2ndTick 0
    execute if entity @s[scores={1N.2ndTick=80}] run scoreboard players set @s 1N.Interval 6
    execute if entity @s[scores={1N.Tick=88}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 1N.2ndTick 0
    execute if entity @s[scores={1N.2ndTick=88}] if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 1N.Interval 4

# 一定間隔で召喚
    scoreboard players operation $Interval Temporary = @s 1N.2ndTick
    scoreboard players operation $Interval Temporary %= @s 1N.Interval

# 召喚
    execute if score $Interval Temporary matches 0 at @e[type=marker,tag=1N.SpawnMarker,distance=..80] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/select_pos

# リセット
    scoreboard players reset $Interval Temporary

# 2ndTickを動かす
    scoreboard players add @s 1N.2ndTick 1
