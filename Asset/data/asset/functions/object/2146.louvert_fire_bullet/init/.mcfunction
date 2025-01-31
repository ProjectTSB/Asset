#> asset:object/2146.louvert_fire_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2146/init

# 向きを決定
    tp @s ~ ~ ~ ~ ~

# 発射音
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.75 0.5 0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 0.75 2 0

# 継承元の処理
    function asset:object/super.init
