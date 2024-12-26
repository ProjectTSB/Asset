#> asset:object/2168.general_long_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2168/init

# 消失までの時間を指定
    execute store result score @s 2168.LifeTime run data get storage asset:context this.Tick


# 向き担当のマーカーを召喚して上に乗っけておく
    execute as 0-0-0-0-0 positioned as @s run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/2168.general_long_laser/init/m with storage asset:temp Args
    ride @e[type=marker,tag=2168.Marker.Init,limit=1] mount @s
    execute on passengers run tag @s remove 2168.Marker.Init
    data remove storage asset:temp Args

# 向き担当のマーカーを召喚して上に乗っけておく
    summon marker ~ ~ ~ {Tags:["2168.Marker.Rotate","2168.Marker.Init"]}
