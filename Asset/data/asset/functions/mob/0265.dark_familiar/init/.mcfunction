#> asset:mob/0265.dark_familiar/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/265/init

# 降りてくる
    execute at @s run tp @s ~ ~-1000 ~

# プレイヤーの方を向く
    execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~-45

# パーティクル
    execute at @s anchored eyes positioned ^ ^ ^ run particle poof ~ ~-0.3 ~ 0 0 0 0.1 10

# アイ抽象用 移動速度を-33%する
# IsBabyにより移動速度が1.5倍になっているのを相殺する
    attribute @s generic.movement_speed modifier add 00000001-0000-0001-0000-010900000001 "265.OffsetIsBaby" -0.33 multiply
