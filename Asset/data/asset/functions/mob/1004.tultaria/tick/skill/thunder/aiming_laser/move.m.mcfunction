#> asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/move.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/aiming_laser/first_move

# TickLock
    tag @s add RW.TickLock

# これをループされると困るのでTickを1増やす
    scoreboard players add @s General.Mob.Tick 1

# 速度設定
    scoreboard players set @s RW.Speed 8

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# プレイヤーの足元に召喚
    execute at @r[gamemode=!spectator,distance=..64] run summon marker ~ ~ ~ {Tags:["RW.RotateMarker"]}

# マーカーが回る
    $execute as @e[type=marker,tag=RW.RotateMarker,limit=1] at @s rotated $(Rotation) 0 run tp @s ^ ^ ^12

# 移動先を設置
    execute at @e[type=marker,tag=RW.RotateMarker,limit=1] run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 回るマーカーをキル
    kill @e[type=marker,tag=RW.RotateMarker,limit=1]

# リセット
    tag @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] remove RW.MarkerInit
    data remove storage asset:temp Rotation

# 行動中タグ付与
    tag @s add RW.Move
