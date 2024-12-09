#> asset:object/1051.time_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1051/tick

#> private
# @private
#declare score_holder $IntervalTime

# Tick加算
    scoreboard players add @s General.Object.Tick 1

    execute if score @s General.Object.Tick matches 2 run data modify entity @s transformation.scale set value [1f,1f,1f]
    execute if score @s General.Object.Tick matches 70 run data modify entity @s start_interpolation set value 0
    execute if score @s General.Object.Tick matches 70 run data modify entity @s transformation.scale set value [0f,0f,0f]

# 2tick毎のVFX
    scoreboard players operation $IntervalTime Temporary = @s General.Object.Tick
    scoreboard players operation $IntervalTime Temporary %= $2 Const
    execute if score @s General.Object.Tick matches ..60 if score $IntervalTime Temporary matches 0 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 0.6 1.4
    scoreboard players reset $IntervalTime Temporary

# 演出
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 0.6 1.4
    execute if score @s General.Object.Tick matches 20.. run playsound item.spyglass.use player @a ~ ~ ~ 1 1.4
# レーザー撃つ
    execute if score @s General.Object.Tick matches 20..60 run function asset:object/1051.time_laser/tick/loop
    tag @s remove Landing


# 消滅処理
    kill @s[scores={General.Object.Tick=80..}]
