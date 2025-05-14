#> asset:mob/0007.ectoplasm/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/7/hurt

# ハード以下かつDeathでなければさようなら
    execute if predicate api:global_vars/difficulty/max/2_hard if entity @s[tag=!Death] run function api:mob/kill
