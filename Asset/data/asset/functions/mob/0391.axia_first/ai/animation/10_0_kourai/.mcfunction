#> asset:mob/0391.axia_first/ai/animation/10_0_kourai/
#
# 紅雷 アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
    execute if score @s AV.AnimationTick matches 1..130 if predicate api:global_vars/difficulty/min/3_blessless as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 1..45 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 56..59 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 70..85 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/12_0_kourai/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 201 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/end

# 斬撃エフェクト
    execute if score @s AV.AnimationTick matches 55 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/1
    execute if score @s AV.AnimationTick matches 69 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/1
    execute if score @s AV.AnimationTick matches 80 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/2
    execute if score @s AV.AnimationTick matches 81..90 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_rotate
    execute if score @s AV.AnimationTick matches 95 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/3
    execute if score @s AV.AnimationTick matches 107 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/3
    execute if score @s AV.AnimationTick matches 119 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_summon/1

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
    execute if score @s AV.AnimationTick matches 69 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/1
    execute if score @s AV.AnimationTick matches 95 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/2
    execute if score @s AV.AnimationTick matches 107 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/2
    execute if score @s AV.AnimationTick matches 119 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/slash_sonic_start/1
    execute if score @s AV.AnimationTick matches 45 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/announce_line
    execute if score @s AV.AnimationTick matches 59 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/announce_line
    execute if score @s AV.AnimationTick matches 85 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/announce_line
    execute if score @s AV.AnimationTick matches 97 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/announce_line
    execute if score @s AV.AnimationTick matches 109 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/announce_line

# ディメンションソード
    execute if score @s AV.AnimationTick matches 141 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 147 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 153 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 159 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 165 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 141 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 147 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 153 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 159 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 165 run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop


# ディメンションソード ハード
    execute if score @s AV.AnimationTick matches 144 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 150 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 156 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 162 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 168 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 144 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 150 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 156 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 162 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 168 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop

# 移動
    # TP
        execute if score @s AV.AnimationTick matches 12 at @s positioned ^ ^ ^0.1 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 13 at @s positioned ^ ^ ^0.2 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 14 at @s positioned ^ ^ ^0.3 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 15 at @s positioned ^ ^ ^0.4 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 16..36 at @s positioned ^ ^ ^0.4 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 37 at @s positioned ^ ^ ^0.4 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 38 at @s positioned ^ ^ ^0.3 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 39 at @s positioned ^ ^ ^0.2 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 40 at @s positioned ^ ^ ^0.1 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 53..57 at @s positioned ^ ^ ^0.2 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 67..76 at @s positioned ^ ^ ^0.2 run function asset:mob/0391.axia_first/ai/general/1.teleport
        execute if score @s AV.AnimationTick matches 93..113 at @s positioned ^ ^ ^0.2 run function asset:mob/0391.axia_first/ai/general/1.teleport

# バリアント
    execute if score @s AV.AnimationTick matches 45 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 170 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mabataki/apply
    execute if score @s AV.AnimationTick matches 180 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
