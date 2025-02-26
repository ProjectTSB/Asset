#> asset:object/1101.tnt/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1101/init

# motion
    data modify storage lib: Argument.VectorMagnitude set value 2.0
    execute on vehicle run function lib:motion/
