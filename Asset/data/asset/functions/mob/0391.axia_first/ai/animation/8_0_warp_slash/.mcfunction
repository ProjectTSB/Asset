#> asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/
#
# ワープ斬撃（隙ありアリー！） アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
    execute if score @s AV.AnimationTick matches 161..187 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/10_0_warp_start/play

# アニメーション再生
    execute if score @s AV.AnimationTick matches 30 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/10_1_warp_slash_0/play

# アニメーション再生
    execute if score @s AV.AnimationTick matches 71 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/10_2_warp_slash_1/play

# アニメーション再生
    execute if score @s AV.AnimationTick matches 121 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/10_3_warp_slash_2/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 187 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/end

# 斬撃エフェクト
    execute if score @s AV.AnimationTick matches 45 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/slash_summon/1
    execute if score @s AV.AnimationTick matches 59 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/slash_summon/2
    execute if score @s AV.AnimationTick matches 84 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/slash_summon/3
    execute if score @s AV.AnimationTick matches 110 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/slash_summon/4
    execute if score @s AV.AnimationTick matches 136 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/slash_summon/5

# 斬撃エフェクト回転
    execute if score @s AV.AnimationTick matches 137..143 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/slash_rotate
    execute if score @s AV.AnimationTick matches 144..151 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/slash_rotate2

# ダメージ判定
    execute if score @s AV.AnimationTick matches 45 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/damage/1
    execute if score @s AV.AnimationTick matches 59 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/damage/1
    execute if score @s AV.AnimationTick matches 84 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/damage/1
    execute if score @s AV.AnimationTick matches 110 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/damage/1
    execute if score @s AV.AnimationTick matches 136 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/damage/2
    execute if score @s AV.AnimationTick matches 147 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/damage/2

# サウンド
    execute if score @s AV.AnimationTick matches 1..29 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp_sound
    execute if score @s AV.AnimationTick matches 43 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 57 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 82 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 108 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 134 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 145 run function asset:mob/0391.axia_first/ai/general/5.slash_sound

# ワープする
    execute if score @s AV.AnimationTick matches 29 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/adj
    execute if score @s AV.AnimationTick matches 69 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/adj
    execute if score @s AV.AnimationTick matches 120 run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/warp/adj

# バリアント
    execute if score @s AV.AnimationTick matches 5 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 170 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
