#> asset:mob/1004.tultaria/tick/skill/fire/move_shot/first_move.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/fire/move_shot/tick

#

#
    #scoreboard players set @s General.Mob.Tick -20

# TickLock
    tag @s add RW.TickLock

# これをループされると困るのでTickを1増やす
    scoreboard players add @s General.Mob.Tick 1

# 速度設定
    scoreboard players set @s RW.Speed 8

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,distance=..128,sort=nearest,limit=1]

# プレイヤーの足元に召喚
    execute at @r run summon marker ~ ~ ~ {Tags:["RW.RotateMarker"]}

# プレイヤーから12ブロック離れた、ランダムな角度の位置にマーカーを置く
    $execute as @e[type=marker,tag=RW.RotateMarker,distance=..128,limit=1] at @s rotated $(Rotation) 0 run tp @s ^ ^ ^12

# 移動先を設置
    execute at @e[type=marker,tag=RW.RotateMarker,distance=..128,limit=1] run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 回るマーカーをキル
    kill @e[type=marker,tag=RW.RotateMarker,distance=..128,limit=1]

# リセット
    tag @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit,distance=..128,limit=1] remove RW.MarkerInit
    data remove storage rw_storage: Rotation

# 行動中タグ付与
    tag @s add RW.Move
