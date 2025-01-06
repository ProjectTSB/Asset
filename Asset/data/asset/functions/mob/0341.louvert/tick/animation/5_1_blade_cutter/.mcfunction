#> asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/
#
# ブレードカッター
#
# @within function asset:mob/0341.louvert/tick/animation/

# 回転
    execute if score @s 9H.AnimationTick matches 1..40 run tag @s add 9H.Temp.This
    execute if score @s 9H.AnimationTick matches 1..40 as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/05_1_blade_cutter/play

# 音
    execute if score @s 9H.AnimationTick matches 1..40 run function asset:mob/0341.louvert/tick/general/13.power_sound/

# スコア調整
    scoreboard players operation $9H.Temp 9H.AnimationTick = @s 9H.AnimationTick
    scoreboard players operation $9H.Temp 9H.AnimationTick %= $2 Const
    execute if score @s 9H.AnimationTick matches 41..70 if score $9H.Temp 9H.AnimationTick matches 1 run function asset:mob/0341.louvert/tick/animation/5_1_blade_cutter/flame_damage

# 移動と終了
    execute if score @s 9H.AnimationTick matches 91 run function asset:mob/0341.louvert/tick/general/9.animation_end

# リセット
    scoreboard players reset $9H.Temp 9H.AnimationTick
