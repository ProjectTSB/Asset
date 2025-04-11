#> asset:mob/0365.frestchika/tick/base_move/teleport/laser/summon
#
#
#
# @within function asset:mob/0365.frestchika/tick/base_move/**

# 実行者と召喚したマーカーの距離を測定
    execute at @s positioned as @e[type=marker,tag=A5.Marker.Teleport,distance=..64] run function lib:distance/as_to_at

# オブジェクト召喚
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[0.3f,0f,0.3f],Color:6209279,AppearInterpolation:1,DisappearInterpolation:3,LifeTime:10}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 1 run data get storage lib: Return.Distance
    function api:object/summon

# パーティクル
    particle dust 0 0.75 1 1 ~ ~ ~ 0.1 0.1 0.1 1 10

# リセット
    scoreboard players reset @s Temporary
    kill @e[type=marker,tag=A5.Marker.Teleport,distance=..64]
