#> asset:object/2159.haruclaire_ic_capricorn/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2159/init

# ajモデル召喚、ride
    execute rotated as @s run function animated_java:ic_capri_aj/summon {args: {animation: '0_start'}}
    ride @e[type=item_display,tag=2159.Model,tag=!2159.Model.Ride,limit=1] mount @s
    execute on passengers run tag @s add 2159.Model.Ride
