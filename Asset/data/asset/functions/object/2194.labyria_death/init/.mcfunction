#> asset:object/2194.labyria_death/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2194/init

# 位置調整
    tp @s ~ ~ ~ ~ ~

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:labyria/summon {args:{}}

# アニメーション再生
    execute as @e[type=item_display,tag=AX.ModelRoot,distance=..100] run function animated_java:labyria/animations/99_0_finish/play
