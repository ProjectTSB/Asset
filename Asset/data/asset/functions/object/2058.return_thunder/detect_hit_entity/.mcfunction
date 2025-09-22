#> asset:object/2058.return_thunder/detect_hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2058/detect_hit_entity

# インターバルTagがある時のみに判定
    execute if entity @s[tag=2058.Interval] if entity @p[gamemode=!spectator,distance=..2] run data modify storage asset:context IsHitEntity set value true
