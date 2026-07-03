#> asset:artifact/1206.triple_sparkle_bomb/trigger/throw_bomb
#
# 爆弾を投げる
#
# @within function
#   asset:artifact/1206.triple_sparkle_bomb/trigger/3.main
#   asset:artifact/1206.triple_sparkle_bomb/trigger/loop/main

#> Private
# @private
    #declare tag SpreadMarker

# Motionをランダムにする
    execute store result storage api: Argument.FieldOverride.Motion float 0.01 run random value 110..120

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 3
    data modify storage lib: Argument.Spread set value 0.5
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# 50%の確率で左回転にする
    execute if predicate lib:random_pass_per/50 run data modify storage api: Argument.FieldOverride.LeftRotate set value true

# Object召喚
    data modify storage api: Argument.ID set value 1106
    data modify storage api: Argument.FieldOverride.Damage set value 175
    data modify storage api: Argument.FieldOverride.Tick set value 60
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] eyes run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
