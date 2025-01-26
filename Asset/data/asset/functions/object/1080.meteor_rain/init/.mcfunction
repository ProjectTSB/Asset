#> asset:object/1080.meteor_rain/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1080/init

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]

# super
    function asset:object/super.init
