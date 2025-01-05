#> asset:artifact/1089.antimatter_gatling_rifle/trigger/shot
#
#
#
# @within function asset:artifact/1089.antimatter_gatling_rifle/trigger/3.main


# 前方拡散設定
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.6
# スニークしてるなら集弾性能が上がる
    execute if predicate lib:is_sneaking run data modify storage lib: Argument.Spread set value 0.4

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
# 発砲
    execute anchored eyes positioned ^-0.35 ^-0.15 ^ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet positioned ~ ~ ~ run function asset:artifact/1089.antimatter_gatling_rifle/trigger/bullet
# リセット
    tag @s remove Landing
    kill @e[type=marker,tag=SpreadMarker]
