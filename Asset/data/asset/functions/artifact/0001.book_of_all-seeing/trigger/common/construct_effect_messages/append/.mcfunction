#> asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/append/
#
#
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/foreach

# ID
    execute store result storage asset:temp 01.Args.ID int 10001 run data get storage asset:temp 01.Args.ID
    data modify storage asset:temp 01.Args.ID set string storage asset:temp 01.Args.ID -4

# Stack
    execute store result score $Stack Temporary run data get storage asset:temp 01.Args.Stack 1
    execute if score $Stack Temporary matches 10.. run data modify storage asset:temp 01.Args.Stack set value "F"
    execute if data storage asset:temp 01.Args{StackVisible:false} run data modify storage asset:temp 01.Args.Stack set value 0

# Duration 前処理
    execute store result score $DurationSeconds Temporary run data get storage asset:temp 01.Args.Duration
    scoreboard players operation $DurationSeconds Temporary /= $20 Const
    scoreboard players operation $DurationMinutes Temporary = $DurationSeconds Temporary
    scoreboard players operation $DurationMinutes Temporary /= $60 Const
    scoreboard players operation $DurationSeconds Temporary %= $60 Const
# DurationSeconds
    execute store result storage asset:temp 01.Args.DurationSeconds int 101 run scoreboard players get $DurationSeconds Temporary
    data modify storage asset:temp 01.Args.DurationSeconds set string storage asset:temp 01.Args.DurationSeconds -2
    execute if data storage asset:temp 01.Args{DurationSeconds:0} run data modify storage asset:temp 01.Args.DurationSeconds set value "00"
# DurationMinutes
    execute store result storage asset:temp 01.Args.DurationMinutes int 101 run scoreboard players get $DurationMinutes Temporary
    data modify storage asset:temp 01.Args.DurationMinutes set string storage asset:temp 01.Args.DurationMinutes -2
    execute if data storage asset:temp 01.Args{DurationMinutes:0} run data modify storage asset:temp 01.Args.DurationMinutes set value "00"

# タイトル行 append
    function asset:artifact/0001.book_of_all-seeing/trigger/common/construct_effect_messages/append/do.m with storage asset:temp 01.Args

# Description 追加
    data modify storage asset:temp 01.EffectMessages append from storage asset:temp 01.Args.Description[]
    execute unless data storage asset:temp 01.Args.Description[0] run data modify storage asset:temp 01.EffectMessages append value '{"text":"詳細不明","color":"gray"}'
