#> asset:mob/0264.dark_summoner/death/kill_familiar
#
# ファミリアを消す
#
# @within function asset:mob/0264.dark_summoner/death/

# VFX
    execute anchored eyes run particle reverse_portal ^ ^ ^ 0.25 0.25 0.25 0.5 20 force @a[distance=..40]

# 消える
    tp @s ~ -100 ~
    kill @s
