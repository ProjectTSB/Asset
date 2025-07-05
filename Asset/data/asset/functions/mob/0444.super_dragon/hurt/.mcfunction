#> asset:mob/0444.super_dragon/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/444/hurt

# 即死
    execute if entity @s[tag=!Death] run function api:mob/kill
