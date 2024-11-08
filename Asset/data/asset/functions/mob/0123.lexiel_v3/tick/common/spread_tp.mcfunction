#> asset:mob/0123.lexiel_v3/tick/common/spread_tp
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/**/**


# 実行前に拡散値がされていない場合、デフォルト値を入れる
    execute unless data storage lib: Argument.Bounds run data modify storage lib: Argument.Bounds set value [[3d,3d],[0d,0d],[3d,3d]]
# 拡散する
    function lib:spread_entity/

# ディスプレイもってくる用
    execute at @s run function asset:mob/0123.lexiel_v3/tick/common/tp
    execute at @s run function asset:mob/0123.lexiel_v3/tick/common/tp_vfx
