#> asset:mob/0420.astro_blaze/tick/check_through/
#
#
#
# @within function asset:mob/0420.astro_blaze/tick/

# 初期化
    data modify storage asset:context this.Success set value false

# 近くのプレイヤーに射線が通っているか？
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..20,sort=nearest] facing entity @s eyes run function asset:mob/0420.astro_blaze/tick/check_through/recursive

# 一度も成功してないなら失敗
    execute unless data storage asset:context this{Success:true} run return 0

# 成功
    return 1
