#> asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/
#
#
#
# @within function asset:artifact/1606.dimension_knife/click/2.check_condition

# 再帰用データ
    scoreboard players set $RecursiveLimit Temporary 16

# 飛ばす用のマーカーを召喚
    summon marker ~ ~ ~ {Tags:["RecursiveMarker"]}
    execute anchored eyes positioned ^ ^ ^ run tp @e[type=marker,tag=RecursiveMarker,distance=..5] ~ ~ ~ ~ ~

# 視線先から再帰
    execute as @e[type=marker,tag=RecursiveMarker,distance=..5] at @s run function asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/recursive

# リセット
    kill @e[type=marker,tag=RecursiveMarker,distance=..30]
    scoreboard players reset $RecursiveLimit Temporary
