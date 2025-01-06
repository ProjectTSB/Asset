#> asset:object/2152.haruclaire_icespear/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2152/init

# 角度をランダムに設定
    execute store result entity @s Rotation[0] float 1 run random value -180..180

# 位置合わせ
    tp @s ~ ~0.45 ~
