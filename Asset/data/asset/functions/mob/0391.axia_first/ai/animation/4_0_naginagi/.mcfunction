#> asset:mob/0391.axia_first/ai/animation/4_0_naginagi/
#
# なぎなぎ教授 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute if score @s AV.AnimationTick matches 1..12 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/4_0_naginagi/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 81 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/end

# 斬撃エフェクト
    # 1発目
        execute if score @s AV.AnimationTick matches 18 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_summon/1
    # 1発目回転
        execute if score @s AV.AnimationTick matches 20..27 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_rotate/1
    # 2発目
        execute if score @s AV.AnimationTick matches 31 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_summon/2
    # 2発目回転
        execute if score @s AV.AnimationTick matches 33..38 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_rotate/2
    # 3発目
        execute if score @s AV.AnimationTick matches 43 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_summon/3
    # 3発目回転
        execute if score @s AV.AnimationTick matches 45..47 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_rotate/3
    # ソニックブーム
        execute if score @s AV.AnimationTick matches 18 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/sonic_boom
        execute if score @s AV.AnimationTick matches 31 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/sonic_boom
        execute if score @s AV.AnimationTick matches 43 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/sonic_boom
    
# サウンド
    # 斬撃音
        execute if score @s AV.AnimationTick matches 18 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_sound
        execute if score @s AV.AnimationTick matches 31 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_sound
        execute if score @s AV.AnimationTick matches 43 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/slash_sound

# VFX
    execute if score @s AV.AnimationTick matches 18 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/vfx/start
    execute if score @s AV.AnimationTick matches 31 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/vfx/start
    execute if score @s AV.AnimationTick matches 43 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/vfx/start

# ダメージ
    execute if score @s AV.AnimationTick matches 20 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/damage
    execute if score @s AV.AnimationTick matches 33 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/damage
    execute if score @s AV.AnimationTick matches 45 run function asset:mob/0391.axia_first/ai/animation/4_0_naginagi/damage

# バリアント
    execute if score @s AV.AnimationTick matches 10 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 60 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
