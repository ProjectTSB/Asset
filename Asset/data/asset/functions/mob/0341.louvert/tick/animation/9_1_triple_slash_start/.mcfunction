#> asset:mob/0341.louvert/tick/animation/9_1_triple_slash_start/
#
# 三連撃の開始アニメーション
#
# @within function asset:mob/0341.louvert/tick/animation/

# 回転
    tag @s add 9H.Temp.This
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# 音
    function asset:mob/0341.louvert/tick/general/13.power_sound/

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/09_1_triple_slash_start/play

# 移動と終了
    execute if score @s 9H.AnimationTick matches 19 run function asset:mob/0341.louvert/tick/animation/9_1_triple_slash_start/end
