#> asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/
#
# ラストスペル 弾幕ゲー
#
# @within function asset:mob/0341.louvert/tick/animation/

# アニメーション開始（待機）
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/01_idle/play

# アニメーション開始（弾幕）
    execute if score @s 9H.AnimationTick matches 41 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_4_final_spell_fire/play

# 弾幕用ディスプレイ召喚
    execute if score @s 9H.AnimationTick matches 51 run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/display/1.summon
    execute if score @s 9H.AnimationTick matches 52 run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/display/2.scale
    execute if score @s 9H.AnimationTick matches 51..211 run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/display/4.rotate_tp
    execute if score @s 9H.AnimationTick matches 191 run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/display/3.end_scale

# 中央にTPする
    execute if score @s 9H.AnimationTick matches 1 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/tp_center

# ディスプレイ回転
    execute if score @s 9H.AnimationTick matches 19 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/7.rotate_6
    execute if score @s 9H.AnimationTick matches 49 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/2.rotate_1
    execute if score @s 9H.AnimationTick matches 79 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/3.rotate_2
    execute if score @s 9H.AnimationTick matches 109 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/4.rotate_3
    execute if score @s 9H.AnimationTick matches 139 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/5.rotate_4
    execute if score @s 9H.AnimationTick matches 169 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/6.rotate_5
    execute if score @s 9H.AnimationTick matches 199 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/7.rotate_6

# 弾幕召喚
    scoreboard players operation $9H.Temp 9H.AnimationTick = @s 9H.AnimationTick
    scoreboard players operation $9H.Temp 9H.AnimationTick %= $6 Const
    execute if score @s 9H.AnimationTick matches 71..191 if score $9H.Temp 9H.AnimationTick matches 0 as @e[type=item_display,tag=9H.Final.Display.Bullet,distance=..64] at @s run function asset:mob/0341.louvert/tick/general/12.bullet

# 音
    execute if score @s 9H.AnimationTick matches 90 run playsound item.trident.throw hostile @a[distance=..32] ~ ~ ~ 0.75 0.5 0

# メテオ発射
    execute if score @s 9H.AnimationTick matches 108 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor
    execute if score @s 9H.AnimationTick matches 112 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor

# 音
    execute if score @s 9H.AnimationTick matches 110 run playsound item.trident.riptide_3 hostile @a[distance=..32] ~ ~ ~ 0.75 0.8 0

# メテオ発射
    execute if score @s 9H.AnimationTick matches 139 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor
    execute if score @s 9H.AnimationTick matches 143 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor

# 音
    execute if score @s 9H.AnimationTick matches 141 run playsound item.trident.riptide_3 hostile @a[distance=..32] ~ ~ ~ 0.75 0.8 0

# メテオ発射
    execute if score @s 9H.AnimationTick matches 169 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor
    execute if score @s 9H.AnimationTick matches 173 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor

# 音
    execute if score @s 9H.AnimationTick matches 171 run playsound item.trident.riptide_3 hostile @a[distance=..32] ~ ~ ~ 0.75 0.8 0

# メテオ発射
    execute if score @s 9H.AnimationTick matches 199 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor
    execute if score @s 9H.AnimationTick matches 203 at @e[type=marker,tag=9H.Marker.SummonPoint,distance=..100] positioned ~ ~1 ~ run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/meteor

# 音
    execute if score @s 9H.AnimationTick matches 201 run playsound item.trident.riptide_3 hostile @a[distance=..32] ~ ~ ~ 0.75 0.8 0

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 219 run function asset:mob/0341.louvert/tick/animation/15_3_final_spell_fire/end

# リセット
    scoreboard players reset $9H.Temp 9H.AnimationTick