#> asset:mob/0077.golden_watermelon/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0077.golden_watermelon/_/init

# 1000ブロック下にtpして、最寄りのプレイヤーの方を見る
    tp @s ~ ~-1000 ~ facing entity @p eyes
