#> asset:object/2160.haruclaire_ic_taurus/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2160/init

# ajモデル召喚、ride
    execute rotated as @s run function animated_java:ic_tau_aj/summon {args: {animation: '0_start'}}
    ride @e[type=item_display,tag=2160.Model,tag=!2160.Model.Ride,limit=1] mount @s
    execute on passengers run tag @s add 2160.Model.Ride
