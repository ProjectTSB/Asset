#> asset:object/2193.ecual_death/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2193/init

# 位置調整
    tp @s ~ ~ ~ ~ ~

# animated javaモデル召喚
    execute positioned ~ ~99 ~ rotated ~ 0 run function animated_java:ecual/summon {args:{}}

# アニメーション再生
    execute as @e[type=item_display,tag=AW.ModelRoot,distance=..100] run function animated_java:ecual/animations/13_0_former_ending/play
