#> asset:mob/0301.karmic/hurt/
#
# Mobのダメージ時の処理
#
# @within function asset:mob/alias/301/hurt


# 演出
    playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 1

# Super
    function asset:mob/super.hurt
