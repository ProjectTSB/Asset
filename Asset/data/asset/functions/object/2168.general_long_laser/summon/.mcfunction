#> asset:object/2168.general_long_laser/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2168/summon

# 召喚時の向きから表示用の回転を計算
    data modify storage asset:temp Args.LeftRotation set value {axis:[1f,0f,0f],angle:0f}
    data modify storage asset:temp Args.RightRotation set value {axis:[0f,-1f,0f],angle:0f}
    execute summon marker run function asset:object/2168.general_long_laser/summon/rotation

# 回転を設定した表示を召喚
    data modify storage asset:temp Args.CustomModelData set from storage asset:context this.CustomModelData
    data modify storage asset:temp Args.Color set from storage asset:context this.Color
    function asset:object/2168.general_long_laser/summon/.m with storage asset:temp Args
    data remove storage asset:temp Args
