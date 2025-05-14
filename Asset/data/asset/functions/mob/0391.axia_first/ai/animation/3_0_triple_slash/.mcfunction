#> asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/
#
# 三連斬撃 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
    execute if score @s AV.AnimationTick matches 1..11 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 22..31 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 41..50 if predicate api:global_vars/difficulty/max/2_hard as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 41..50 if predicate api:global_vars/difficulty/min/3_blessless if entity @p[distance=..100] run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/predict/

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/3_0_triple_slash/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 91 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/end

# 斬撃エフェクト1
    execute if score @s AV.AnimationTick matches 17 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_summon/1

# 斬撃エフェクト2
    execute if score @s AV.AnimationTick matches 33 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_summon/2

# 斬撃エフェクト回転
    execute if score @s AV.AnimationTick matches 34..44 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_rotate

# 斬撃エフェクト3
    execute if score @s AV.AnimationTick matches 52 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_summon/3

# サウンド
    # 斬撃音
        execute if score @s AV.AnimationTick matches 17 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
        execute if score @s AV.AnimationTick matches 33 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
        execute if score @s AV.AnimationTick matches 36 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
        execute if score @s AV.AnimationTick matches 52 run function asset:mob/0391.axia_first/ai/general/5.slash_sound

# VFX
    # 斬撃フレイム
        execute if score @s AV.AnimationTick matches 33 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/vfx_start
        execute if score @s AV.AnimationTick matches 36 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/vfx_start

# ダメージ
    execute if score @s AV.AnimationTick matches 17 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/damage/slash_1
    execute if score @s AV.AnimationTick matches 33 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/damage/slash_2
    execute if score @s AV.AnimationTick matches 36 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/damage/slash_2
    execute if score @s AV.AnimationTick matches 52 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/damage/slash_3

# 斬撃飛ばし
    execute if score @s AV.AnimationTick matches 51 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_sonic_start

# 予告線
    execute if score @s AV.AnimationTick matches 41 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/announce_line

# バリアント
    execute if score @s AV.AnimationTick matches 5 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 40 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mabataki/apply
    execute if score @s AV.AnimationTick matches 50 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 70 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
