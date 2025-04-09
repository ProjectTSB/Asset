#> asset:object/1141.big_water_balloon/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1141/init

# 見た目のItem displayを召喚して、自分の乗り物の上に乗っける

# Motionで射出
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Speed
    execute on vehicle at @s run function lib:motion/

# Super
    function asset:object/super.init
