#> asset:object/2265.field_modify_manager/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2265/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# Progress進行
    execute if score @s General.Object.Tick matches 1 run function asset:object/2265.field_modify_manager/tick/show_bossbar
    execute if score @s General.Object.Tick matches 1.. run function asset:object/2265.field_modify_manager/tick/set_bossbar_name
    execute if score @s General.Object.Tick matches 100.. store result bossbar asset:co_field_modify value run scoreboard players add @s 2265.Progress.Current 1

# 消滅処理
    execute if score @s 2265.Progress.Current >= @s 2265.Progress.Max run function asset:object/2265.field_modify_manager/tick/attack
    execute if entity @s[scores={General.Object.Tick=2000..}] run function asset:object/2265.field_modify_manager/tick/kill
