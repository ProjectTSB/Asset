#> asset:object/1096.was_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1096/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 前方に魔法陣を召喚
    execute if score @s General.Object.Tick matches 1 run data modify storage api: Argument.FieldOverride set value {Scale:[4.2f,4.2f,0.01f],Color:5436415}
    execute if score @s General.Object.Tick matches 1 anchored eyes positioned ^ ^ ^ run function asset:object/1096.was_laser/tick/summon_square
    execute if score @s General.Object.Tick matches 2 run data modify storage api: Argument.FieldOverride set value {Scale:[2.8f,2.8f,0.01f],CMD:20444,Color:5436415,LeftRotate:true}
    execute if score @s General.Object.Tick matches 2 anchored eyes positioned ^ ^ ^0.2 run function asset:object/1096.was_laser/tick/summon_square
    execute if score @s General.Object.Tick matches 3 run data modify storage api: Argument.FieldOverride set value {Scale:[1.4f,1.4f,0.01f],CMD:20444,Color:5436415}
    execute if score @s General.Object.Tick matches 3 anchored eyes positioned ^ ^ ^0.4 run function asset:object/1096.was_laser/tick/summon_square

# 一定間隔での演出
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 1..5 run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 1.2
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 6..10 run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 1.3
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 11..15 run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 1.4
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 16..20 run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 1.5
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 21..25 run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 1.7
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 26..30 run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 1.8
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 31..35 run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 1.9
    execute if score $Interval Temporary matches 0 if score @s General.Object.Tick matches 35.. run playsound entity.zombie_villager.converted neutral @a ~ ~ ~ 0.5 2.0
    scoreboard players reset $Interval Temporary

# 発射
    execute if score @s General.Object.Tick matches 42 anchored eyes positioned ^ ^ ^ run function asset:object/1096.was_laser/tick/shoot/

# 消滅処理
    execute if score @s General.Object.Tick matches 42.. run kill @s
