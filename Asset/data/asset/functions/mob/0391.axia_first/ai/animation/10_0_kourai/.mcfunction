#> asset:mob/0391.axia_first/ai/animation/10_0_kourai/
#
# 紅雷 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/12_0_kourai/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 191 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/end

# 斬撃エフェクト
    execute if score @s AV.AnimationTick matches 55 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/1
    execute if score @s AV.AnimationTick matches 69 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/2
    execute if score @s AV.AnimationTick matches 80 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/3
    execute if score @s AV.AnimationTick matches 81..90 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_rotate
    execute if score @s AV.AnimationTick matches 95 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/4
    execute if score @s AV.AnimationTick matches 107 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/5
    execute if score @s AV.AnimationTick matches 119 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/6

# ダメージ
    execute if score @s AV.AnimationTick matches 55 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/damage
    execute if score @s AV.AnimationTick matches 69 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/damage
    execute if score @s AV.AnimationTick matches 80 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/damage
    execute if score @s AV.AnimationTick matches 95 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/damage
    execute if score @s AV.AnimationTick matches 107 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/damage
    execute if score @s AV.AnimationTick matches 119 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/damage

# サウンド
    execute if score @s AV.AnimationTick matches 53 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 67 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 78 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 81 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 93 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 105 run function asset:mob/0391.axia_first/ai/general/5.slash_sound
    execute if score @s AV.AnimationTick matches 117 run function asset:mob/0391.axia_first/ai/general/5.slash_sound

# 斬撃飛ばし
    execute if score @s AV.AnimationTick matches 55 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/1
    execute if score @s AV.AnimationTick matches 69 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/2
    execute if score @s AV.AnimationTick matches 95 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/3
    execute if score @s AV.AnimationTick matches 107 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/4
    execute if score @s AV.AnimationTick matches 119 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/5
