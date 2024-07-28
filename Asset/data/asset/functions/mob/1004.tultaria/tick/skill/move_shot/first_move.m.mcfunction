#> asset:mob/1004.tultaria/tick/skill/move_shot/first_move.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/move_shot/tick

#

#
    #scoreboard players set @s RW.Tick -20

# TickLock
    tag @s add RW.TickLock

# これをループされると困るのでTickを1増やす
    scoreboard players add @s RW.Tick 1

# 速度設定
    scoreboard players set @s RW.Speed 8

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# 拡散値
#    execute if block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[4d,6d],[0d,0d],[4d,6d]]
#    execute unless block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[4d,6d],[0d,0d],[4d,6d]]
#    execute as @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] at @s run function lib:spread_entity/

# プレイヤーの足元に召喚
    execute at @r run summon marker ~ ~ ~ {Tags:["RW.RotateMarker"]}

# マーカーが回る
    $execute as @e[type=marker,tag=RW.RotateMarker,limit=1] at @s rotated $(Rotation) 0 run tp @s ^ ^ ^12
    #$execute as @e[type=marker,tag=RW.RotateMarker,limit=1] at @s run tp @s ^ ^ ^8 $(Rotation) ~
    execute at @e[tag=RW.RotateMarker] run particle explosion

# 移動先を設置
    execute at @e[type=marker,tag=RW.RotateMarker,limit=1] run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 回るマーカーをキル
    kill @e[type=marker,tag=RW.RotateMarker,limit=1]

# リセット
    tag @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] remove RW.MarkerInit

# 行動中タグ付与
    tag @s add RW.Move