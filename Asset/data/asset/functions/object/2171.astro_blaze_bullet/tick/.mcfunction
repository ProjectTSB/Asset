#> asset:object/2171.astro_blaze_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2171/tick

# パーティクル
    execute if predicate lib:random_pass_per/15 run particle flame ~ ~ ~ 0.05 0.05 0.05 0.025 1 force @a[distance=..32]
    execute run particle minecraft:dust 1 0.560 0.150 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# 継承元の処理
    function asset:object/super.tick
