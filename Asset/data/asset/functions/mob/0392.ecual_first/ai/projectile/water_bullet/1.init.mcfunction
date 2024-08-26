#> asset:mob/0392.ecual_first/ai/projectile/water_bullet/1.init
#
# 初期化処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/water_bullet/0.summon

# スコア初期化
    scoreboard players set @s AW.ProjectileTick 0

# 発射音
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 2 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 1.95 0
    playsound ogg:block.amethyst.step6 hostile @a[distance=..32] ~ ~ ~ 1 1.9 0
    playsound block.respawn_anchor.deplete hostile @a[distance=..32] ~ ~ ~ 1 2 0

# リセット
    tag @s remove AW.ProjectileInit
