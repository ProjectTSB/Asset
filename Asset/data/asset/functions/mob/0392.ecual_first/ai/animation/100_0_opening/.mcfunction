#> asset:mob/0392.ecual_first/ai/animation/100_0_opening/
#
# オープニング アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 対象プレイヤー保存
#    execute if score @s AW.AnimationTick matches 1 run scoreboard players operation @s AW.UUID = @p[tag=!PlayerShouldInvulnerable,distance=..100] UserID

# 近くのプレイヤーの方を向く
# 一部の時間のみ向く処理を入れる
#    tag @s add AW.Temp.This
#    scoreboard players operation $AW.Temp AW.UUID = @s AW.UUID
#    execute if score @s AW.AnimationTick matches 153..159 if predicate api:global_vars/difficulty/max/normal as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
#    execute if score @s AW.AnimationTick matches 153..159 if predicate api:global_vars/difficulty/min/hard as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/rotate
#    execute if score @s AW.AnimationTick matches 178..185 if predicate api:global_vars/difficulty/max/normal as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0391.axia_first/ai/general/2.rotate
#    execute if score @s AW.AnimationTick matches 178..185 if predicate api:global_vars/difficulty/min/hard as @a if score @s UserID = $AW.Temp AW.UUID run function asset:mob/0391.axia_first/ai/animation/7_0_zangekihou/rotate
#    execute if score @s AW.AnimationTick matches 230..243 as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0391.axia_first/ai/general/2.rotate
#    execute if score @s AW.AnimationTick matches 244..253 if predicate api:global_vars/difficulty/min/hard if entity @p[distance=..100] run function asset:mob/0391.axia_first/ai/animation/3_0_triple_slash/predict/
#    scoreboard players reset $AW.Temp AW.UUID
#    tag @s remove AW.Temp.This

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/12_0_opening_attack/play

# アニメーション停止
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/12_0_opening_attack/pause

# アニメーション再開
    execute if score @s AW.AnimationTick matches 71 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/12_0_opening_attack/resume

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 356 run function asset:mob/0392.ecual_first/ai/animation/100_0_opening/end

# クリティカル登場
    execute if score @s AW.AnimationTick matches 1 run function asset:mob/0392.ecual_first/ai/projectile/critical/0.summon
