#> asset:mob/0365.frestchika_v2/ai/projectile/bullet/2.init
#
# 初期化処理
#
# @within function asset:mob/0365.frestchika_v2/ai/projectile/bullet/1.summon

# スコア初期化
    scoreboard players set @s A5.ProjectileTick 0

# 発射音
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 0.75 2 0

# リセット
    tag @s remove A5.Temp.This