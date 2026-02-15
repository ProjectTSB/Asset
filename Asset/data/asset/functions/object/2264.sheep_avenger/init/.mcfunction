#> asset:object/2264.sheep_avenger/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2264/init

# AJモデル召喚
    function animated_java:sheep_avenger/summon {args: {animation: 'transform'}}
    execute as @e[type=item_display,tag=2264.Model,distance=..10,limit=1] run data merge entity @s {view_range:16f,width:0f,height:0f,teleport_duration:2}
