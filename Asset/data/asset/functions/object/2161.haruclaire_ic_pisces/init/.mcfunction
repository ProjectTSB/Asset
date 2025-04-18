#> asset:object/2161.haruclaire_ic_pisces/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2161/init

# ajモデル召喚、ride
    execute rotated as @s run function animated_java:ic_pisce_aj/summon {args: {animation: '0_start'}}
    ride @e[type=item_display,tag=2161.Model,tag=!2161.Model.Ride,limit=1] mount @s
    execute on passengers run tag @s add 2161.Model.Ride
