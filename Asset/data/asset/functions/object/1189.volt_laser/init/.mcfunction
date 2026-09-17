#> asset:object/1189.volt_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1189/init

# Scaleを適用
    data modify storage asset:temp Scale set value [0.5f,0f,0f]
    execute if data storage asset:context this{IsFullCharge:true} run data modify storage asset:temp Scale[0] set value 2f
    data modify storage asset:temp Scale[1] set from storage asset:context this.Scale
    data modify entity @s transformation.scale set from storage asset:temp Scale
    execute on passengers run data modify entity @s transformation.scale set from storage asset:temp Scale
    data remove storage asset:temp Scale

# translation
    execute store result entity @s transformation.translation[0] float -0.0008 run data get storage asset:context this.Scale 100
    execute on passengers store result entity @s transformation.translation[0] float -0.0008 run data get storage asset:context this.Scale 100
