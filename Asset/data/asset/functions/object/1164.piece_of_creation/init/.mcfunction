#> asset:object/1164.piece_of_creation/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1164/init

# 召喚場所からランダムに少し拡散する
    data modify storage lib: Argument.Bounds set value [[2d,2d],[0d,0d],[2d,2d]]
    function lib:spread_entity/

# sound
    playsound minecraft:entity.vex.charge player @a ~ ~ ~ 5.0 1.75 0.0
