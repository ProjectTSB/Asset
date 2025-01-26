#> asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/
#
# 通常斬撃 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 近くのプレイヤーの方を向く
# 最初の方だけ向く処理を入れる
    execute if score @s AV.AnimationTick matches 1..12 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/2_0_normal_slash/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 49 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/end

# 斬撃エフェクト
    execute if score @s AV.AnimationTick matches 14 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/slash_summon

# 斬撃エフェクト回転
    execute if score @s AV.AnimationTick matches 15..26 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/slash_rotate

# サウンド
    # 斬撃溜め
        execute if score @s AV.AnimationTick matches 10 run playsound minecraft:entity.arrow.hit_player hostile @a[distance=..16] ~ ~ ~ 1 1.6
    # 斬撃音
        execute if score @s AV.AnimationTick matches 14 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
        execute if score @s AV.AnimationTick matches 17 run function asset:mob/0391.axia_first/ai/general/5.slash_sound

# VFX
    # 斬撃フレイム
        execute if score @s AV.AnimationTick matches 14 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/vfx_start
        execute if score @s AV.AnimationTick matches 17 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/vfx_start

# ダメージ
    execute if score @s AV.AnimationTick matches 14 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/slash_damage
    execute if score @s AV.AnimationTick matches 17 run function asset:mob/0391.axia_first/ai/animation/2_0_normal_slash/slash_damage

# バリアント
    execute if score @s AV.AnimationTick matches 5 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 30 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
