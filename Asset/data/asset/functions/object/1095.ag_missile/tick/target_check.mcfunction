#> asset:object/1095.ag_missile/tick/target_check
#
# ターゲットが視界外にいるかチェック、視界外だったら強制的に当たりに行くフラグをたてる
#
# @within function asset:object/1095.ag_missile/tick/

# 対象が左右45度の角度内にいるかチェック
    $execute facing entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},distance=..128,limit=1] eyes positioned ^ ^ ^4 rotated as @s rotated ~45 0 positioned ^-3 ^ ^ unless entity @s[distance=..5] run tag @s add TargetOutOfSight
    $execute facing entity @e[type=#lib:living,scores={MobUUID=$(TargetID)},distance=..128,limit=1] eyes positioned ^ ^ ^4 rotated as @s rotated ~-45 0 positioned ^3 ^ ^ unless entity @s[distance=..5] run tag @s add TargetOutOfSight
