#> asset:object/2159.haruclaire_ic_capricorn/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2159/init

# ajモデル召喚、ride
    execute rotated as @s run function animated_java:ic_capri_aj/summon {args: {animation: '0_start'}}
    ride @e[type=item_display,tag=2159.Model,tag=!2159.Model.Ride,limit=1] mount @s
    execute on passengers run tag @s add 2159.Model.Ride

# 召喚演出スキップ
    execute if data storage asset:context this.IsSkipSummon run tag @s add 2159.IsSkipSummon
    execute if entity @s[tag=2159.IsSkipSummon] on passengers run function animated_java:ic_capri_aj/animations/0_start/tween {duration:1, to_frame: 1}
    execute if entity @s[tag=2159.IsSkipSummon] run scoreboard players set @s General.Object.Tick 19
