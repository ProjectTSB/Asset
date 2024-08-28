#> asset:mob/0392.ecual_first/ai/projectile/hydro/1.init
#
# 初期化処理
#
# @within function asset:mob/0392.ecual_first/ai/projectile/hydro/0.summon

# スコア初期化
    scoreboard players set @s AW.ProjectileTick 0

# TP
    tp @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01] ~ ~ ~ ~ ~

# SnapShot により仕様変更されたので書き直す必要があるかも
    execute as @e[type=item_display,tag=AW.ProjectileInit,distance=..0.01] on passengers run tp @s ~ ~ ~ ~ ~

# タグ外し
    tag @s remove AW.ProjectileInit
