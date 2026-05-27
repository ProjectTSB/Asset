#> asset:object/1041.grand_flame/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1041/init

# motion
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Motion
    execute on vehicle run function lib:motion/
