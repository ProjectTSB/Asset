#> asset:object/2191.louvert_death/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2191/init

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:louvert/summon {args:{}}

# アニメーション再生
    execute as @e[type=item_display,tag=9H.ModelRoot,distance=..100] run function animated_java:louvert/animations/13_1_ending/play
