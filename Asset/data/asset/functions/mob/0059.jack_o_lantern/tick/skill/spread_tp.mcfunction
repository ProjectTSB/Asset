#> asset:mob/0059.jack_o_lantern/tick/skill/spread_tp
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/**

# マーカーをワープさせて、そこが安全地帯ならワープする
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute at @e[type=marker,tag=1N.SpawnMarker,distance=..50] run data modify storage lib: Argument.Bounds set value [[5d,5d],[0d,0d],[5d,5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] at @s run function lib:spread_entity/
    execute at @e[type=marker,tag=SpreadMarker,distance=..50,limit=1] if block ~ ~ ~ #lib:no_collision/without_fluid unless block ~ ~-1 ~ #lib:no_collision/without_fluid run tp @s ~ ~ ~

# tpする
    tp @e[type=marker,tag=SpreadMarker,distance=..50] ~ ~ ~

# リセット
    kill @e[type=marker,tag=SpreadMarker]
