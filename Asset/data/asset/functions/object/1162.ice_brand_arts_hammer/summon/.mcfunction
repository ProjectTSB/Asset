#> asset:object/1162.ice_brand_arts_hammer/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/1162/summon

# 元となるEntityを召喚する
    execute store result storage asset:temp x_val float 0.001 run random value -1000..1000
    execute store result storage asset:temp y_val float 0.001 run random value -200..700
    function asset:object/1162.ice_brand_arts_hammer/summon/m with storage asset:temp
    data remove storage asset:temp x_val
    data remove storage asset:temp y_val
