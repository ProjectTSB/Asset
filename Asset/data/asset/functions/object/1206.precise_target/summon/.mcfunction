#> asset:object/1206.precise_target/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1206/summon

# 見た目に合わせたブロックと奥行きを決める
# 通常は平面 チェストは立方体
    data modify storage asset:context this.Block set value "minecraft:target"
    data modify storage asset:context this.ScaleZ set value 0.01f
    data modify storage asset:context this.ShiftZ set value -0.01f
    execute if data storage asset:context this{Chest:1} run data modify storage asset:context this.Block set value "minecraft:chest"
    execute if data storage asset:context this{Chest:1} run data modify storage asset:context this.ScaleZ set value 0.12f
    execute if data storage asset:context this{Chest:1} run data modify storage asset:context this.ShiftZ set value -0.06f

# 元となるEntityを召喚する
    function asset:object/1206.precise_target/summon/m with storage asset:context this
