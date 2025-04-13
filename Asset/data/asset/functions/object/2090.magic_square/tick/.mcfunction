#> asset:object/2090.magic_square/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2090/tick

#> Private
# @private
    #declare score_holder $Interval

# デカくなる
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s start_interpolation set value 0
    execute if entity @s[scores={General.Object.Tick=3}] run data modify entity @s transformation.scale set from storage asset:context this.Scale

# 一定間隔で回転
    scoreboard players operation $Interval Temporary = @s General.Object.Tick
    scoreboard players add $Interval Temporary 9
    scoreboard players operation $Interval Temporary %= $12 Const
    execute if score $Interval Temporary matches 0 if entity @s[scores={General.Object.Tick=3..}] run function asset:object/2090.magic_square/tick/spin
    scoreboard players reset $Interval Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消失時にはぬるりと消えていく
    execute if score @s General.Object.Tick matches 95 run function asset:object/2090.magic_square/tick/transform

# 消滅処理
    kill @s[scores={General.Object.Tick=100..}]
