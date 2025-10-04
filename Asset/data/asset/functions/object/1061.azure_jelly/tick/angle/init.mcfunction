#> asset:object/1061.azure_jelly/tick/angle/init
#
#
#
# @within function asset:object/1061.azure_jelly/tick/

# 現在のRotation[1](e2)を取得
    execute store result score @s 1061.Pitch run data get entity @s Rotation[1] 100

# 上下どちらの移動をするかトグルで切り替える
    function asset:object/1061.azure_jelly/tick/angle/switch_up_down

# trueなら-6000して保存しておく
    execute if data storage asset:context this{IsUpper:true} run scoreboard players remove @s 1061.Pitch 6000

# falseなら+3000
    execute if data storage asset:context this{IsUpper:false} run scoreboard players add @s 1061.Pitch 1500

#tellraw @a {"storage":"asset:context","nbt":"this.IsUpper"}
