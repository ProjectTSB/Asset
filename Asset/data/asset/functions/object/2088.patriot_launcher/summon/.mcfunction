#> asset:object/2088.patriot_launcher/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2088/summon

# 元となるEntityを召喚する
    summon item_display ~ ~ ~ {Tags:["ObjectInit"]}

# AJモデル召喚
    execute rotated 0 0 run function animated_java:patriot_launcher/summon/default {args:{}}
    execute as @e[tag=PatriotLauncherRoot,limit=1] run function animated_java:patriot_launcher/animations/default/play

# ride
    ride @e[tag=PatriotLauncherRoot,distance=..1,limit=1] mount @e[tag=ObjectInit,distance=..1,limit=1]
