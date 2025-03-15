#> asset:object/1110.heavy_lava_bomb/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1110/init

# Motion
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Motion
    execute on vehicle run function lib:motion/

# 描画更新
    execute on vehicle run damage @s 1
