#> asset:object/1184.thunder_bolt/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1184/init

# scale適用
    data modify storage asset:temp Scale set value [0f,0f,0f]
    data modify storage asset:temp Scale[0] set from storage asset:context this.Scale
    data modify storage asset:temp Scale[1] set from storage asset:context this.Scale
    data modify entity @s transformation.scale set from storage asset:temp Scale
    data remove storage asset:temp Scale
