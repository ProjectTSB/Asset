#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/move/m
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/move_shot/move/

# プレイヤーの足元に召喚
    $execute at @p[scores={UserID=$(TargetID)},distance=..64] run summon marker ~ ~ ~ {Tags:["RW.RotateMarker"]}

# プレイヤーから12ブロック離れた、ランダムな角度の位置にマーカーを置く
    $execute as @e[type=marker,tag=RW.RotateMarker,distance=..128,limit=1] at @s rotated $(Rotation) 0 run tp @s ^ ^ ^12
