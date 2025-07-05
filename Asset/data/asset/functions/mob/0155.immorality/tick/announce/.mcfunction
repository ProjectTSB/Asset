#> asset:mob/0155.immorality/tick/announce/
#
# 予告
#
# @within function asset:mob/0155.immorality/tick/

# 2tick間隔で実行する
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $2 Const
    execute if score $Interval Temporary matches 0 anchored eyes positioned ^-0.3 ^ ^1 run function asset:mob/0155.immorality/tick/announce/recursive_line
    scoreboard players reset $Interval Temporary
