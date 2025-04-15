#> asset:object/1139.simple_grenade/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1139/init

# Motion
    data modify storage lib: Argument.VectorMagnitude set from storage asset:context this.Motion
    execute on vehicle run function lib:motion/

# 描画更新
    execute on vehicle run damage @s 1
