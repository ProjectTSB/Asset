#> asset:mob/0038.laser_eye/tick/suicide
#
# 一定時間経ったら消滅する処理
#
# @within function asset:mob/0038.laser_eye/tick/2.tick

# VFX
    particle happy_villager ~ ~1.68 ~ 0.25 0.25 0.25 0.5 40 force @a[distance=..40]

# 消える
    tp @s ~ -100 ~
    kill @s