#> asset:mob/0085.soul_bullet/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/85/init

# 最寄りのプレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p eyes
