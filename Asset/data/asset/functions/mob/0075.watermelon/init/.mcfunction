#> asset:mob/0075.watermelon/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0075.watermelon/_/init

# 1000ブロック下にtpして、最寄りのプレイヤーの方を見る
    tp @s ~ ~-1000 ~ facing entity @p eyes
