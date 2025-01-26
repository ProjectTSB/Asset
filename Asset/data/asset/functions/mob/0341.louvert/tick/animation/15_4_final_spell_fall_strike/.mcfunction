#> asset:mob/0341.louvert/tick/animation/15_4_final_spell_fall_strike/
#
# ラストスペル 刺突落下
#
# @within function asset:mob/0341.louvert/tick/animation/

# タグ付け
    tag @s add 9H.Temp.This

# アニメーション開始（待機）
    execute if score @s 9H.AnimationTick matches 1 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/01_idle/play

# アニメーション開始（弾幕）
    execute if score @s 9H.AnimationTick matches 41 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/14_1_falling_strike/play

# TPで上昇
    execute if score @s 9H.AnimationTick matches 41 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_upper

# TPで落下
    execute if score @s 9H.AnimationTick matches 67 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer

# 演出
    execute if score @s 9H.AnimationTick matches 67 at @s run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_damage

# ソウルクエイク発動1
    execute if score @s 9H.AnimationTick matches 70 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/first

# ソウルクエイク発動2
    execute if score @s 9H.AnimationTick matches 73 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/second

# ソウルクエイク発動3
    execute if score @s 9H.AnimationTick matches 76 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/third

# アニメーション開始（弾幕）
    execute if score @s 9H.AnimationTick matches 91 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/pause_all
    execute if score @s 9H.AnimationTick matches 91 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/14_1_falling_strike/play

# TPで上昇
    execute if score @s 9H.AnimationTick matches 91 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_upper

# TPで落下
    execute if score @s 9H.AnimationTick matches 117 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer

# 演出
    execute if score @s 9H.AnimationTick matches 117 at @s run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_damage

# ソウルクエイク発動1
    execute if score @s 9H.AnimationTick matches 120 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/first

# ソウルクエイク発動2
    execute if score @s 9H.AnimationTick matches 123 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/second

# ソウルクエイク発動3
    execute if score @s 9H.AnimationTick matches 126 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/third

# アニメーション開始（弾幕）
    execute if score @s 9H.AnimationTick matches 141 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/pause_all
    execute if score @s 9H.AnimationTick matches 141 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/14_1_falling_strike/play

# TPで上昇
    execute if score @s 9H.AnimationTick matches 141 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_upper

# TPで落下
    execute if score @s 9H.AnimationTick matches 167 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer

# 演出
    execute if score @s 9H.AnimationTick matches 167 at @s run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_damage

# ソウルクエイク発動1
    execute if score @s 9H.AnimationTick matches 170 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/first

# ソウルクエイク発動2
    execute if score @s 9H.AnimationTick matches 173 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/second

# ソウルクエイク発動3
    execute if score @s 9H.AnimationTick matches 176 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/third

# 最後だけ早めに落下する
# アニメーション開始（弾幕）
    execute if score @s 9H.AnimationTick matches 181 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/pause_all
    execute if score @s 9H.AnimationTick matches 181 as @e[type=item_display,tag=9H.Root.This,distance=..100] run function animated_java:louvert/animations/14_1_falling_strike/play

# TPで上昇
    execute if score @s 9H.AnimationTick matches 181 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_upper

# TPで落下
    execute if score @s 9H.AnimationTick matches 207 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_downer

# 演出
    execute if score @s 9H.AnimationTick matches 207 at @s run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/tp_damage

# ソウルクエイク発動1
    execute if score @s 9H.AnimationTick matches 210 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/first

# ソウルクエイク発動2
    execute if score @s 9H.AnimationTick matches 213 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/second

# ソウルクエイク発動3
    execute if score @s 9H.AnimationTick matches 216 run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/third

# 追尾ソウルクエイク発動
    execute if score @s 9H.AnimationTick matches 219 as @a[tag=!PlayerShouldInvulnerable,distance=..100,limit=4] as @e[tag=9H.Temp.This,distance=..100] run function asset:mob/0341.louvert/tick/animation/14_1_falling_strike/hard


# ディスプレイ回転
    execute if score @s 9H.AnimationTick matches 10 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/2.rotate_1
    execute if score @s 9H.AnimationTick matches 40 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/3.rotate_2
    execute if score @s 9H.AnimationTick matches 70 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/4.rotate_3
    execute if score @s 9H.AnimationTick matches 100 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/5.rotate_4
    execute if score @s 9H.AnimationTick matches 130 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/6.rotate_5
    execute if score @s 9H.AnimationTick matches 160 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/7.rotate_6
    execute if score @s 9H.AnimationTick matches 190 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/2.rotate_1
    execute if score @s 9H.AnimationTick matches 220 run function asset:mob/0341.louvert/tick/animation/15_1_final_spell_op/display/8.end

# 無敵解除
    execute if score @s 9H.AnimationTick matches 250 run data modify entity @s Invulnerable set value 0b
    execute if score @s 9H.AnimationTick matches 250 run tag @s remove Uninterferable

# タグ外し
    tag @s remove 9H.Temp.This
    execute if score @s 9H.AnimationTick matches 250 run tag @s remove 9H.LastSpell

# アニメーション終了処理
    execute if score @s 9H.AnimationTick matches 250 run kill @e[type=item_display,tag=9H.Final.Display,distance=..100,limit=1]
    execute if score @s 9H.AnimationTick matches 250 run function asset:mob/0341.louvert/tick/general/9.animation_end
