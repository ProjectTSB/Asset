#> asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/
#
# ラストスペル 居合斬り
#
# @within function asset:mob/0341.louvert/tick/animation/

# 近くのプレイヤーの方を向く
    execute if score @s 9H.AnimationTick matches 1..40 run tag @s add 9H.Temp.This
    execute if score @s 9H.AnimationTick matches 1..40 as @a[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0341.louvert/tick/general/2.rotate

# ディスプレイ回転
    execute if score @s 9H.AnimationTick matches 19 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/5.rotate_4
    execute if score @s 9H.AnimationTick matches 49 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/6.rotate_5
    execute if score @s 9H.AnimationTick matches 79 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/7.rotate_6
    execute if score @s 9H.AnimationTick matches 109 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/2.rotate_1
    execute if score @s 9H.AnimationTick matches 139 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/3.rotate_2
    execute if score @s 9H.AnimationTick matches 169 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/4.rotate_3
    execute if score @s 9H.AnimationTick matches 199 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/5.rotate_4
    execute if score @s 9H.AnimationTick matches 229 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/6.rotate_5

# アニメーション開始（待機）
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/01_idle/play

# アニメーション開始（居合斬り開始）
    execute if score @s 9H.AnimationTick matches 41 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_2_final_spell_iai_start/play
    execute if score @s 9H.AnimationTick matches 41 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1 0
    execute if score @s 9H.AnimationTick matches 44 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.1 0
    execute if score @s 9H.AnimationTick matches 47 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.2 0
    execute if score @s 9H.AnimationTick matches 50 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.3 0
    execute if score @s 9H.AnimationTick matches 53 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.4 0
    execute if score @s 9H.AnimationTick matches 56 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.5 0
    execute if score @s 9H.AnimationTick matches 59 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.6 0

# 居合斬り
    execute if score @s 9H.AnimationTick matches 61 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_3_final_spell_iai_finish/play
    execute if score @s 9H.AnimationTick matches 61 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast

# アニメーション開始（居合斬り開始）
    execute if score @s 9H.AnimationTick matches 81 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_2_final_spell_iai_start/play
    execute if score @s 9H.AnimationTick matches 81 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1 0
    execute if score @s 9H.AnimationTick matches 84 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.1 0
    execute if score @s 9H.AnimationTick matches 87 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.2 0
    execute if score @s 9H.AnimationTick matches 90 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.3 0
    execute if score @s 9H.AnimationTick matches 93 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.4 0
    execute if score @s 9H.AnimationTick matches 96 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.5 0
    execute if score @s 9H.AnimationTick matches 99 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.6 0

# 居合斬り
    execute if score @s 9H.AnimationTick matches 101 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_3_final_spell_iai_finish/play
    execute if score @s 9H.AnimationTick matches 101 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast

# アニメーション開始（居合斬り開始）
    execute if score @s 9H.AnimationTick matches 121 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_2_final_spell_iai_start/play
    execute if score @s 9H.AnimationTick matches 121 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1 0
    execute if score @s 9H.AnimationTick matches 124 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.1 0
    execute if score @s 9H.AnimationTick matches 127 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.2 0
    execute if score @s 9H.AnimationTick matches 130 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.3 0
    execute if score @s 9H.AnimationTick matches 133 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.4 0
    execute if score @s 9H.AnimationTick matches 136 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.5 0
    execute if score @s 9H.AnimationTick matches 139 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.6 0

# 居合斬り
    execute if score @s 9H.AnimationTick matches 141 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_3_final_spell_iai_finish/play
    execute if score @s 9H.AnimationTick matches 141 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast

# アニメーション開始（居合斬り開始）
    execute if score @s 9H.AnimationTick matches 161 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_2_final_spell_iai_start/play
    execute if score @s 9H.AnimationTick matches 161 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1 0
    execute if score @s 9H.AnimationTick matches 164 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.1 0
    execute if score @s 9H.AnimationTick matches 167 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.2 0
    execute if score @s 9H.AnimationTick matches 170 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.3 0
    execute if score @s 9H.AnimationTick matches 173 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.4 0
    execute if score @s 9H.AnimationTick matches 176 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.5 0
    execute if score @s 9H.AnimationTick matches 179 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.6 0

# 居合斬り
    execute if score @s 9H.AnimationTick matches 181 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_3_final_spell_iai_finish/play
    execute if score @s 9H.AnimationTick matches 181 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast

# ソウルバースト追加
    execute if score @s 9H.AnimationTick matches 181 at @a[tag=!PlayerShouldInvulnerable,distance=..64,sort=random,limit=1] run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/soul_blast

# アニメーション開始（居合斬り開始）
    execute if score @s 9H.AnimationTick matches 201 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_2_final_spell_iai_start/play
    execute if score @s 9H.AnimationTick matches 201 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1 0
    execute if score @s 9H.AnimationTick matches 204 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.1 0
    execute if score @s 9H.AnimationTick matches 207 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.2 0
    execute if score @s 9H.AnimationTick matches 210 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.3 0
    execute if score @s 9H.AnimationTick matches 213 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.4 0
    execute if score @s 9H.AnimationTick matches 216 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.5 0
    execute if score @s 9H.AnimationTick matches 219 run playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 0.75 1.6 0

# 居合斬り
    execute if score @s 9H.AnimationTick matches 221 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/15_3_final_spell_iai_finish/play
    execute if score @s 9H.AnimationTick matches 221 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_cast

# ソウルバースト追加
    execute if score @s 9H.AnimationTick matches 221 at @a[tag=!PlayerShouldInvulnerable,distance=..64,sort=random,limit=1] run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/soul_blast
    execute if score @s 9H.AnimationTick matches 221 at @a[tag=!PlayerShouldInvulnerable,distance=..64,sort=random,limit=1] run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/soul_blast

# TPする
    execute if score @s 9H.AnimationTick matches 41 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_tp
    execute if score @s 9H.AnimationTick matches 81 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_tp
    execute if score @s 9H.AnimationTick matches 121 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_tp
    execute if score @s 9H.AnimationTick matches 161 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_tp
    execute if score @s 9H.AnimationTick matches 201 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/iai_tp

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 240 run function asset:mob/0341.louvert/tick/animation/15_2_final_spell_iai/end