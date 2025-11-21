#> asset:mob/0420.astro_blaze/tick/check_through/
#
#
#
# @within function asset:mob/0420.astro_blaze/tick/

# 近くのプレイヤーに斜線が通っているか？
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..20,sort=nearest] facing entity @s eyes run function asset:mob/0420.astro_blaze/tick/check_through/recursive

# 一度も成功してないなら失敗
    execute unless data storage asset:temp {Success:true} run return run data remove storage asset:temp Success

# リセット
    data remove storage asset:temp Success

# 成功
    return 1
