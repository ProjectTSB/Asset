#> asset:mob/0341.louvert/tick/animation/3_1_slash_start/
#
# 広範囲斬撃開始
#
# @within function asset:mob/0341.louvert/tick/animation/

# 回転
    tag @s add 9H.Temp.This
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# アニメーション開始
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/03_1_fire_slash_charge_1/play
# 範囲演出
    execute if score @s 9H.AnimationTick matches 11..80 positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/3_1_slash_start/vfx
# スコア調整
    scoreboard players operation $9H.Temp 9H.AnimationTick = @s 9H.AnimationTick
    scoreboard players operation $9H.Temp 9H.AnimationTick %= $2 Const
    execute if score @s 9H.AnimationTick matches 11..80 if score $9H.Temp 9H.AnimationTick matches 1 run function asset:mob/0341.louvert/tick/general/13.power_sound/


# 移動と終了
    execute if score @s 9H.AnimationTick matches 81 run function asset:mob/0341.louvert/tick/animation/3_1_slash_start/end

# リセット
    scoreboard players reset $9H.Temp 9H.AnimationTick
