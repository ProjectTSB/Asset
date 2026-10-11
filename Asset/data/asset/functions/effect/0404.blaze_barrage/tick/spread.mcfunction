#> asset:effect/0404.blaze_barrage/tick/spread
#
#
#
# @within function asset:effect/0404.blaze_barrage/tick/

# 前方拡散
    data modify storage lib: Argument.Distance set value 3
    data modify storage lib: Argument.Spread set value 0.8
    function lib:forward_spreader/circle
    execute facing entity @s eyes facing ^ ^ ^-1 positioned as @s positioned ^ ^-0.2 ^-11.5 as @p[tag=this] run function asset:effect/0404.blaze_barrage/tick/summon_object

# kill
    kill @s
