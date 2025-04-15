#> asset:mob/0365.frestchika/tick/base_move/teleport/m
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/teleport/

# プレイヤーから数ブロック離れた位置にワープしてくる
    $execute at @r[gamemode=!spectator,distance=..64] rotated $(Rotation) 0 run tp @s ^ ^ ^10
