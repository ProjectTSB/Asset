#> asset:artifact/1631.blaze_barrage/trigger/jump/
#
#
#
# @within function asset:artifact/1631.blaze_barrage/trigger/3.main

# 演出
    playsound entity.wither.shoot player @a ~ ~ ~ 0.6 1.2
    playsound entity.breeze.hurt player @a ~ ~ ~ 1 1.27
    playsound entity.breeze.death player @a ~ ~ ~ 1 1.7
    execute rotated ~ 0 positioned ~ ~0.1 ~ run function asset:artifact/1631.blaze_barrage/trigger/jump/vfx1
    execute rotated ~ 0 positioned ~ ~1 ~ run function asset:artifact/1631.blaze_barrage/trigger/jump/vfx2

# ジャンプ
    data modify storage lib: Argument.Vector set value [0d,1.1d,0d]
    function lib:motion/xyz

# 固有バフ付与しておく
    data modify storage api: Argument.ID set value 403
    data modify storage api: Argument.Duration set value 60
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
