#> asset:mob/0341.louvert/tick/projectile/bullet/2.init
#
# 初期化処理
#
# @within function asset:mob/0341.louvert/tick/projectile/bullet/0.summon

# スコア初期化
    scoreboard players set @s 9H.ProjectileTick 0

# motionセット
    data modify storage lib: Argument.VectorMagnitude set value 2.0
    execute at @s run function lib:motion/

# 発射音
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 0.75 0.5 0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 0.75 2 0

# リセット
    tag @s remove 9H.Temp.This