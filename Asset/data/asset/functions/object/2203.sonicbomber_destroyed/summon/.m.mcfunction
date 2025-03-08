#> asset:object/2203.sonicbomber_destroyed/summon/.m
#
# 
#
# @within function asset:object/2203.sonicbomber_destroyed/summon/

# 元となるEntityを召喚する
    $summon item_display ~ ~ ~ {Tags:["ObjectInit"],teleport_duration:1,Rotation:$(Rotation)}

# AJモデル召喚
    execute at @e[tag=ObjectInit,distance=..1,limit=1] run function animated_java:terrible_sonic_bomber/summon {args:{}}
    execute as @e[tag=5X.ModelRoot,limit=1] run function animated_java:terrible_sonic_bomber/animations/destroy/play

# ride
    ride @e[tag=5X.ModelRoot,distance=..1,limit=1] mount @e[tag=ObjectInit,distance=..1,limit=1]
