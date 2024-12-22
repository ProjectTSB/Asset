#> asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/shoot
#
# 火の弾の発射処理
#
# @within function
#   asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/1
#   asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/2

# 火を発射
    execute anchored eyes run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/recursive
    execute rotated ~180 ~ anchored eyes run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/recursive

# ヒット処理
    execute as @a[tag=LandingTarget,distance=..25] run function asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/fire/hit

# 音
    playsound entity.blaze.shoot hostile @a[distance=..25] ~ ~ ~ 1 1.2 0
