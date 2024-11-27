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

# 発射
    execute if entity @s[scores={General.Object.Tick=42}] anchored eyes positioned ^ ^ ^ run function asset:object/2091.hyper_laser_manager/tick/shoot

# 消滅処理
    kill @s[scores={General.Object.Tick=42..}]
