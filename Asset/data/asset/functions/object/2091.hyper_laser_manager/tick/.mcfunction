#> asset:object/2091.hyper_laser_manager/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2091/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 前方に魔法陣を召喚
    execute if entity @s[scores={General.Object.Tick=1}] run data modify storage api: Argument.FieldOverride set value {Scale:[4.2f,4.2f,0.01f],Color:5436415}
    execute if entity @s[scores={General.Object.Tick=1}] anchored eyes positioned ^ ^ ^ run function asset:object/2091.hyper_laser_manager/tick/summon_square

    execute if entity @s[scores={General.Object.Tick=2}] run data modify storage api: Argument.FieldOverride set value {Scale:[2.8f,2.8f,0.01f],CMD:20444,Color:5436415,LeftRotate:true}
    execute if entity @s[scores={General.Object.Tick=2}] anchored eyes positioned ^ ^ ^0.2 run function asset:object/2091.hyper_laser_manager/tick/summon_square

    execute if entity @s[scores={General.Object.Tick=3}] run data modify storage api: Argument.FieldOverride set value {Scale:[1.4f,1.4f,0.01f],CMD:20444,Color:5436415}
    execute if entity @s[scores={General.Object.Tick=3}] anchored eyes positioned ^ ^ ^0.4 run function asset:object/2091.hyper_laser_manager/tick/summon_square

# 一定間隔での演出
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=1..5}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 1.2
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=6..10}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 1.3
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=11..15}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 1.4
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=16..20}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 1.5
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=21..25}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 1.7
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=26..30}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 1.8
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=31..35}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 1.9
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=36..}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 2.0
    scoreboard players reset $Interval Temporary

# 演出

# 発射
    execute if entity @s[scores={General.Object.Tick=42}] anchored eyes positioned ^ ^ ^ run function asset:object/2091.hyper_laser_manager/tick/shoot

# 消滅処理
    kill @s[scores={General.Object.Tick=42..}]
