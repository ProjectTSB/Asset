#> asset:object/2076.aurora_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2076/tick

#> Private
# @private
    #declare score_holder $Temp

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    particle dust_color_transition 0.000 1.000 0.886 1.8 0 0.235 1 ~ ~ ~ 0.4 0.4 0.4 0 3 normal @a
    scoreboard players operation $Temp Temporary = @s General.Object.Tick
    scoreboard players operation $Temp Temporary %= $4 Const
    execute if score $Temp Temporary matches 0 run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.2 2 0
    scoreboard players reset $Temp Temporary

# 継承
    function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
