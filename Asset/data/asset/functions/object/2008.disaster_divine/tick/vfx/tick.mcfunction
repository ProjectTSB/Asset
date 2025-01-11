#> asset:object/2008.disaster_divine/tick/vfx/tick
#
# Tick VFX表示
#
# @within function asset:object/2008.disaster_divine/tick/

# マーカーを呼び出す
    tp 0-0-0-0-0 ^ ^ ^ ~ ~

# ランダムな方向を向かせる（Y軸は固定）
    execute store result entity 0-0-0-0-0 Rotation[0] float 0.01 run random value 0..36000
    execute store result entity 0-0-0-0-0 Rotation[1] float 0.01 run random value -9000..9000

# VFX表示
    execute at 0-0-0-0-0 run function asset:object/2008.disaster_divine/tick/vfx/tick_vfx

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0
