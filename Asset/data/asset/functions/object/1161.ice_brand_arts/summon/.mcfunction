#> asset:object/1161.ice_brand_arts/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1161/summon

# 元となるEntityを召喚する
    execute store result storage asset:temp Yaw float 0.001 run random value -1000..1000
    execute store result storage asset:temp Pitch float 0.001 run random value -200..700
    function asset:object/1161.ice_brand_arts/summon/m with storage asset:temp
    data remove storage asset:temp Yaw
    data remove storage asset:temp Pitch
