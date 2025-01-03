#> asset:object/2171.astro_blaze_bullet/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2171/init

# 向きを決定
    tp @s ~ ~ ~ ~ ~

# 発射音
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 1 0
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.95 0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 2 0

# 継承元の処理
    function asset:object/super.init
