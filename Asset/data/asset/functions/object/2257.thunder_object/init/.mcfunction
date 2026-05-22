#> asset:object/2257.thunder_object/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2257/init

# Scaleを適用
    data modify storage asset:temp Scale set value [0f,0f,0f]
    data modify storage asset:temp Scale[0] set from storage asset:context this.Scale
    data modify storage asset:temp Scale[1] set from storage asset:context this.Scale
    data modify entity @s transformation.scale set from storage asset:temp Scale
    data remove storage asset:temp Scale

# translation
    data modify storage asset:temp Translation set value [0f,0f,0f]
    execute store result storage asset:temp Translation[1] float -0.0008 run data get storage asset:context this.Scale 100
    data modify entity @s transformation.translation set from storage asset:temp Translation
    data remove storage asset:temp Translation
