#> asset:mob/0265.dark_familiar/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0265.dark_familiar/_/init

# 降りてくる
    execute at @s run tp @s ~ ~-1000 ~

# プレイヤーの方を向く
    execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~-45

# パーティクル
    execute at @s anchored eyes positioned ^ ^ ^ run particle poof ~ ~-0.3 ~ 0 0 0 0.1 10
