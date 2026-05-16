#> asset:mob/1004.tultaria/tick/move/teleport/place_marker.m
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/reset

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置
    $summon marker ~ $(Y).5 ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 拡散値
    execute if block ~ ~-1 ~ #lib:no_collision/ run data modify storage lib: Argument.Bounds set value [[4d,6d],[0d,0d],[4d,6d]]
    execute unless block ~ ~-1 ~ #lib:no_collision/ run data modify storage lib: Argument.Bounds set value [[4d,6d],[0d,0d],[4d,6d]]
    execute as @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] at @s run function lib:spread_entity/

# リセット
    tag @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] remove RW.MarkerInit

# 行動中タグ付与
    tag @s add RW.Move
