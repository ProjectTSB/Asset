#> asset:object/1027.rain_area/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1027/tick

#> Private
# @private
    #declare score_holder $Interval
    
# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 回転
    tp @s ~ ~ ~ ~2 ~

# 演出
    particle minecraft:rain ~ ~ ~ 1.8 0 1.8 0 40 normal @a
    particle dolphin ~ ~3 ~ 2.4 2 2.4 0 20 normal @a
    particle dolphin ~ ~0.3 ~ 2.4 0.1 2.4 0 20 normal @a
    particle dust 0.4 0.7 100000000 2 ~ ~6 ~ 1.5 0.2 1.5 0 8

# 音
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $22 Const
    execute if score $Interval Temporary matches 0 run playsound weather.rain neutral @a ~ ~ ~ 0.5 1.5 0

# 範囲の演出
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 positioned ~ ~0.2 ~ run function asset:object/1027.rain_area/tick/vfx

# 効果発動処理
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players operation $Interval Temporary %= $40 Const
    execute if score $Interval Temporary matches 0 positioned ~ ~ ~ run function asset:object/1027.rain_area/tick/damage_and_heal

# リセット
    scoreboard players reset $Interval Temporary

# 消滅
    execute if score @s General.Object.Tick matches 400.. run kill @s
