#> asset:object/2192.axia_death/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2192/init

# 位置調整
    tp @s ~ ~ ~ ~ ~

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:axia/summon {args:{}}

# アニメーション再生
    execute as @e[type=item_display,tag=AV.ModelRoot,distance=..100] run function animated_java:axia/animations/15_0_former_ending/play
