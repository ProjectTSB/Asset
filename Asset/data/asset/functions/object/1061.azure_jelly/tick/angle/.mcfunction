#> asset:object/1061.azure_jelly/tick/angle/
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

# trueなら+
    execute if data storage asset:context this{IsUpper:true} run scoreboard players add @s 1061.Pitch 250

# falseなら-
    execute if data storage asset:context this{IsUpper:false} run scoreboard players remove @s 1061.Pitch 50

# -9000..9000ならRotation[1]へ代入
    execute if score @s 1061.Pitch matches -9000..9000 store result entity @s Rotation[1] float 0.01 run scoreboard players get @s 1061.Pitch
