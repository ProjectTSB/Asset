#> asset:object/2080.aurora_missile/tick/enhanced
#
#
#
# @within function asset:object/2080.aurora_missile/tick/

# 演出
    particle dust_color_transition 0.000 1.000 0.886 2 0 0.235 1 ~ ~ ~ 0.2 0.2 0.2 0 3 normal @a

# 一定間隔でplaysound
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $4 Const
    execute if score $Interval Temporary matches 0 run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.4 2 0
    scoreboard players reset $Interval Temporary

# 最初の20tickは誘導弾になる
    execute if entity @s[scores={General.Object.Tick=..20}] facing entity @p feet positioned ^ ^ ^-150 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# それ以降は前進する
    execute if entity @s[scores={General.Object.Tick=21}] run data modify storage asset:context this.MovePerStep set value 0.7

# 消滅
    execute if entity @s[scores={General.Object.Tick=50..}] run function asset:object/call.m {method:kill}
