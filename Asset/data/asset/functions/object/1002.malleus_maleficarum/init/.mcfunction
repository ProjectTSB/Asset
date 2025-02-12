#> asset:object/1002.malleus_maleficarum/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1002/init

# Motion
    data modify storage lib: Argument.VectorMagnitude set value 0.8
    execute on vehicle at @s run function lib:motion/

# ダメージを与えて描画更新
    execute on vehicle run damage @s 0
