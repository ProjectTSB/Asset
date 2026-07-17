#> asset:object/1178.yumeori_falling_arrow_manager/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1178/init

# 向き調整
    tp @s ~ ~ ~ ~ ~

# Rangeの半分の値を取得
    execute store result storage asset:context this.HalfRange double 0.005 run data get storage asset:context this.Range 100
