#> asset:artifact/0971.laser_eye_helmet/shot/spread
#
#
#
# @within function asset:artifact/0971.laser_eye_helmet/shot/3.main

# 前方拡散
    data modify storage lib: Argument.Distance set value 3
    data modify storage lib: Argument.Spread set value 0.1
    function lib:forward_spreader/circle
    execute facing entity @s eyes facing ^ ^ ^-1 positioned as @s positioned ^ ^ ^-11.5 as @p[tag=this] run function asset:artifact/0971.laser_eye_helmet/shot/shoot/

# Markerを消しておく
    kill @s
