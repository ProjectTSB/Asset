#> asset:mob/0085.soul_bullet/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/0085.soul_bullet/_/init

# 最寄りのプレイヤーの方を向く
    tp @s ~ ~ ~ facing entity @p eyes
