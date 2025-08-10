#> asset:object/1091.flame_boomerang/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1091/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# Ownerを特定しておく
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add Owner

# 回転のInterval
    execute store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if data storage asset:context this{SpinInterval:0} on passengers run function asset:object/1091.flame_boomerang/tick/spin
    execute if data storage asset:context this{SpinInterval:0} run data modify storage asset:context this.SpinInterval set value 3

# 速度制御
    execute if score @s General.Object.Tick matches 18 run data modify storage asset:context this.StepPerTick set value 2
    execute if score @s General.Object.Tick matches 22 run data modify storage asset:context this.StepPerTick set value 1
    execute if score @s General.Object.Tick matches 26 run data modify storage asset:context this.StepPerTick set value 2

# 戻り始めるタイミングでHitListを空に
    execute if score @s General.Object.Tick matches 25 run function asset:object/call.m {method:"reset_duplicate_protection"}

# 戻ってくる処理
    execute if score @s General.Object.Tick matches 20..25 facing entity @p[tag=Owner,distance=..100] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
    execute if score @s General.Object.Tick matches 26.. run function asset:object/1091.flame_boomerang/tick/return_to_hand

# MovePerStepが0なら戻しておく
    execute if score @s General.Object.Tick matches 36.. if data storage asset:context this{MovePerStep:0} run data modify storage asset:context this.MovePerStep set from storage asset:context this.SavedMPS

# super.tick
    execute at @s run function asset:object/super.tick

# リセット
    scoreboard players reset $UserID Temporary
    tag @p[tag=Owner] remove Owner
