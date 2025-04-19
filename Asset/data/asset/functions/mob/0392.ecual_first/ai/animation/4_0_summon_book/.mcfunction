#> asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/
#
# 魔導書召喚 アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/4_0_summon_book/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 121 run function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/end

# 魔導書召喚
    execute if score @s AW.AnimationTick matches 41 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/summon/normal
    execute if score @s AW.AnimationTick matches 61 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/summon/normal
    execute if score @s AW.AnimationTick matches 41 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/summon/hard
    execute if score @s AW.AnimationTick matches 51 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/summon/hard
    execute if score @s AW.AnimationTick matches 61 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0392.ecual_first/ai/animation/4_0_summon_book/summon/hard

# バリアント
    execute if score @s AW.AnimationTick matches 55 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 65 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
