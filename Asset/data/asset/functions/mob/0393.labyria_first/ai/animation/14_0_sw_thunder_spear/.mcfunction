#> asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/
#
# 雷槍
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 耐性を掛ける
    execute if score @s AX.AnimationTick matches 1 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/give_resistance

# アニメーション再生
    execute if score @s AX.AnimationTick matches 1 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/14_0_sw_thunder_spear/play

# 内部の槍を降らせる
    execute if score @s AX.AnimationTick matches 31 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/fall_spear/in

# アニメーション再生
    execute if score @s AX.AnimationTick matches 61 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/14_0_sw_thunder_spear/play

# 内部の槍を降らせる
    execute if score @s AX.AnimationTick matches 91 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/fall_spear/out

# アニメーション再生
    execute if score @s AX.AnimationTick matches 121 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword/play

# アニメーション再生
    execute if score @s AX.AnimationTick matches 161 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword/play

# アニメーション再生
    execute if score @s AX.AnimationTick matches 201 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword/play

# アニメーション再生
    execute if score @s AX.AnimationTick matches 241 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword/play

# アニメーション再生
    execute if score @s AX.AnimationTick matches 281 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/1_0_idle_sword/play

# 帯電
    execute if score @s AX.AnimationTick matches 201 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/select
    execute if score @s AX.AnimationTick matches 201..340 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/

# アニメーション再生
    execute if score @s AX.AnimationTick matches 321 as @e[type=item_display,tag=AX.Root.This,distance=..100] run function animated_java:labyria/animations/14_1_sw_thunder_spear_end/play

# 帯電発動
    execute if score @s AX.AnimationTick matches 350 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/elect/

# キル
    execute if score @s AX.AnimationTick matches 370 as @e[type=item_display,scores={ObjectID=2012},distance=..32] run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/fall_spear/kill

# 終了処理
    execute if score @s AX.AnimationTick matches 380 run function asset:mob/0393.labyria_first/ai/animation/14_0_sw_thunder_spear/end
