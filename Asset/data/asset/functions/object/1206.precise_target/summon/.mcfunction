#> asset:object/1206.precise_target/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1206/summon

# 状態に合わせた見た目を決める
# 通常はstick (CustomModelData 20669) リロード状態はチェスト
    data modify storage asset:context this.Item set value {id:"minecraft:stick",Count:1b,tag:{CustomModelData:20669}}
    data modify storage asset:context this.Scale set value 0.1d
    data modify storage asset:context this.LeftRotation set value [0f,0f,0f,1f]
    execute if data storage asset:context this{Chest:1} run data modify storage asset:context this.Item set value {id:"minecraft:chest",Count:1b}
    execute if data storage asset:context this{Chest:1} run data modify storage asset:context this.Scale set value 0.12f
# チェストは正面が視点側を向くよう、Y軸まわりに180度回す
    execute if data storage asset:context this{Chest:1} run data modify storage asset:context this.LeftRotation set value [0f,1f,0f,0f]
# 画面中央の的は通常の的の150%の大きさにする (大きさを10000倍の整数で取得し、1.5/10000倍で保存する)
    execute if data storage asset:context this{Center:1} store result storage asset:context this.Scale double 0.00015 run data get storage asset:context this.Scale 10000

# 元となるEntityを召喚する
    function asset:object/1206.precise_target/summon/m with storage asset:context this

# リセット
    data remove storage asset:context this.Item
    data remove storage asset:context this.Scale
    data remove storage asset:context this.LeftRotation
