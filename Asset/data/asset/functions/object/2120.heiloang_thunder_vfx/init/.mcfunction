#> asset:object/2120.heiloang_thunder_vfx/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2120/init

# 演出
    particle explosion ^ ^ ^ 0.5 0.5 0.5 0 2 force

# nbt書き換え
    execute if data storage asset:context this.OverrideTransform run data modify entity @s transformation set from storage asset:context this.OverrideTransform
    execute if data storage asset:context this.OverrideTransform on passengers run data modify entity @s transformation.scale set value [4f, 4f, 4f]
    execute if data storage asset:context this.OverrideTransform on passengers run data modify entity @s transformation.left_rotation set value [0f, 1f, 0f, 0f]
    execute if data storage asset:context this.OverrideTransform on passengers run data modify entity @s transformation.translation set value [0f, -7f, 0f]
    execute if data storage asset:context this.OverrideBillboard run data modify entity @s billboard set from storage asset:context this.OverrideBillboard
