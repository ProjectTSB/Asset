#> asset:object/2157.haruclaire_spread_icespear/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2157/init

# 攻撃までの時間
    execute if data storage asset:context this.IsLong run tag @s add 2157.IsLong

# 角度をランダムに設定
    execute store result entity @s Rotation[0] float 1 run random value -180..180

# 位置合わせ
    tp @s ~ ~ ~
