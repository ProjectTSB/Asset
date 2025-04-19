#> asset:mob/0365.frestchika/tick/base_move/stuck_revenge/explosion
#
# 破壊しつつワープ
#
# @within function asset:mob/0365.frestchika/tick/base_move/stuck_revenge/

# ワープ
    function asset:mob/0365.frestchika/tick/base_move/teleport/return_to_center

# 壁破壊
    execute positioned ~ ~0.1 ~ run function asset:mob/0365.frestchika/tick/base_move/stuck_revenge/break

# リセット
    scoreboard players reset @s A5.Count.Stuck
