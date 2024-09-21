#> asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/
#
# サンダーグレネード
#
# @within function asset:mob/0393.labyria_first/ai/animation/

# 近くのプレイヤーの方を向く
    tag @s add AZ.Temp.This
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0393.labyria_first/ai/general/2.rotate
    tag @s remove AZ.Temp.This

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 1 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/6_0_sw_thunder_grenade_start/play

# ワープする
    execute if score @s AZ.AnimationTick matches 33 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 35 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/6_1_sw_thunder_grenade_set/play

# ボムを置く
    execute if score @s AZ.AnimationTick matches 55 positioned ^ ^ ^1 run function asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/summon

# ワープする
    execute if score @s AZ.AnimationTick matches 71 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 73 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/6_1_sw_thunder_grenade_set/play

# ボムを置く
    execute if score @s AZ.AnimationTick matches 93 positioned ^ ^ ^1 run function asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/summon

# ワープする
    execute if score @s AZ.AnimationTick matches 109 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 111 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/6_1_sw_thunder_grenade_set/play

# ボムを置く
    execute if score @s AZ.AnimationTick matches 131 positioned ^ ^ ^1 run function asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/summon

# ワープする
    execute if score @s AZ.AnimationTick matches 147 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/

# アニメーション再生
    execute if score @s AZ.AnimationTick matches 149 as @e[type=item_display,tag=AZ.Root.This,distance=..100] run function animated_java:labyria/animations/6_2_sw_thunder_grenade_end/play

# 終了処理
    execute if score @s AZ.AnimationTick matches 175 run function asset:mob/0393.labyria_first/ai/animation/7_0_sw_thunder_grenade/end
