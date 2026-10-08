#> asset:effect/0402.celestial_star/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0402.celestial_star/_/tick

# 起爆した後は、起爆の対象を処理するだけにする
    execute if data storage asset:context this.Detonation run return run function asset:effect/0402.celestial_star/tick/detonation/

# 4秒ごとに強化段階を上げる
    execute store result storage asset:context this.PowerUpTick int 0.9999999999 run data get storage asset:context this.PowerUpTick 1
    execute if data storage asset:context this{PowerUpTick:0} run function asset:effect/0402.celestial_star/tick/power_up/

# 中央の球と周りを漂う光を描き、2tickごとに範囲の目印を描く
    function asset:effect/0402.celestial_star/tick/vfx/
