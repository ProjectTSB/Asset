#> asset:artifact/1681.pre_cise/target/summon_targets
#
# 狙う敵の有無に合わせて的を召喚する
# 狙う敵がいれば敵の方向を基準にした通常の的を2つ、いなければ画面中央の的を1つ召喚する
#
# @input as player at player
# @within function
#   asset:artifact/1681.pre_cise/keep/targets
#   asset:artifact/1681.pre_cise/target/reset_targets

# 狙う敵がいる (NoLockOnでない) 場合は通常の的2つ
    execute if score @s 1AP.AimMobUUID matches 0.. run function asset:artifact/1681.pre_cise/target/summon_normal_target
    execute if score @s 1AP.AimMobUUID matches 0.. run function asset:artifact/1681.pre_cise/target/summon_normal_target

# 狙う敵がいない (NoLockOn) 場合は画面中央の的1つ
    execute unless score @s 1AP.AimMobUUID matches 0.. run function asset:artifact/1681.pre_cise/target/summon_center_target
