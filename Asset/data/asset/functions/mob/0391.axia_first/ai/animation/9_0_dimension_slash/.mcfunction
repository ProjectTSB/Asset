#> asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/
#
# ディメンションソード アニメーション
#
# @within function asset:mob/0391.axia_first/ai/animation/

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
    execute if score @s AV.AnimationTick matches 1..98 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 99..114 if predicate api:global_vars/difficulty/max/2_hard as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 99..114 if predicate api:global_vars/difficulty/min/3_blessless if entity @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/predict/
    execute if score @s AV.AnimationTick matches 125..152 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
    execute if score @s AV.AnimationTick matches 153..162 if predicate api:global_vars/difficulty/min/3_blessless if entity @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/predict/

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/animations/11_0_dimension_slash/play

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 201 run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/end

# ディメンションソード 召喚
# 偏差撃ち
    execute if score @s AV.AnimationTick matches 31 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict
    execute if score @s AV.AnimationTick matches 41 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict
    execute if score @s AV.AnimationTick matches 51 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict
    execute if score @s AV.AnimationTick matches 61 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict
    execute if score @s AV.AnimationTick matches 71 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict
    execute if score @s AV.AnimationTick matches 81 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/predict

# ランダム撃ち
    execute if score @s AV.AnimationTick matches 36 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 46 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 56 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 66 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 76 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 86 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 31 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 41 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 51 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 61 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 71 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal
    execute if score @s AV.AnimationTick matches 81 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/sword/normal

# ハード限定拡散
    execute if score @s AV.AnimationTick matches 33 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 38 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 43 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 48 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 53 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 58 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 63 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 68 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 73 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 78 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 83 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop
    execute if score @s AV.AnimationTick matches 88 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0391.axia_first/ai/animation/10_0_kourai/sword/spread_loop


# 斬撃飛ばし
    execute if score @s AV.AnimationTick matches 124 run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/slash_summon
    execute if score @s AV.AnimationTick matches 124 run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/slash_sonic_start
    execute if score @s AV.AnimationTick matches 99 run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/announce_line

# TP
    execute if score @s AV.AnimationTick matches 141 at @s run tp @s ^ ^0.2 ^ ~ ~
    execute if score @s AV.AnimationTick matches 142 at @s run tp @s ^ ^0.3 ^ ~ ~
    execute if score @s AV.AnimationTick matches 143 at @s run tp @s ^ ^0.4 ^ ~ ~
    execute if score @s AV.AnimationTick matches 144 at @s run tp @s ^ ^0.5 ^ ~ ~
    execute if score @s AV.AnimationTick matches 145 at @s run tp @s ^ ^0.4 ^ ~ ~
    execute if score @s AV.AnimationTick matches 146 at @s run tp @s ^ ^0.3 ^ ~ ~
    execute if score @s AV.AnimationTick matches 147 at @s run tp @s ^ ^0.2 ^ ~ ~
    execute if score @s AV.AnimationTick matches 148 at @s run tp @s ^ ^0.1 ^ ~ ~

    execute if score @s AV.AnimationTick matches 155 at @s run tp @s ^ ^-0.1 ^ ~ ~
    execute if score @s AV.AnimationTick matches 156 at @s run tp @s ^ ^-0.2 ^ ~ ~
    execute if score @s AV.AnimationTick matches 157 at @s run tp @s ^ ^-0.3 ^ ~ ~
    execute if score @s AV.AnimationTick matches 158 at @s run tp @s ^ ^-0.4 ^ ~ ~
    execute if score @s AV.AnimationTick matches 159 at @s run tp @s ^ ^-0.5 ^ ~ ~
    execute if score @s AV.AnimationTick matches 160 at @s run tp @s ^ ^-0.4 ^ ~ ~
    execute if score @s AV.AnimationTick matches 161 at @s run tp @s ^ ^-0.3 ^ ~ ~
    execute if score @s AV.AnimationTick matches 162 at @s run tp @s ^ ^-0.2 ^ ~ ~

# 中央ダメージエリア
    execute if score @s AV.AnimationTick matches 141 at @s run function asset:mob/0391.axia_first/ai/projectile/critical/0.summon

# 衝撃波召喚
    execute if score @s AV.AnimationTick matches 162 at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/1
    execute if score @s AV.AnimationTick matches 165 at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/2
    execute if score @s AV.AnimationTick matches 168 at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/3
    execute if score @s AV.AnimationTick matches 171 at @s run function asset:mob/0391.axia_first/ai/animation/9_0_dimension_slash/wave/4

# バリアント
    execute if score @s AV.AnimationTick matches 80 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mabataki/apply
    execute if score @s AV.AnimationTick matches 90 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/mazime/apply
    execute if score @s AV.AnimationTick matches 180 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/normal/apply
