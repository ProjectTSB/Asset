#> asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/
#
# チルレイン アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

# 近くのプレイヤーの方を向く
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] run function asset:mob/0392.ecual_first/ai/general/2.rotate

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/2_0_chill_rain/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 76 run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/end

# チルレイン 召喚
    execute if score @s AW.AnimationTick matches 18 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
    execute if score @s AW.AnimationTick matches 18 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
    execute if score @s AW.AnimationTick matches 18 if predicate api:global_vars/difficulty/min/3_blessless as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
    execute if score @s AW.AnimationTick matches 18 if predicate api:global_vars/difficulty/min/3_blessless as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
    execute if score @s AW.AnimationTick matches 46 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
    execute if score @s AW.AnimationTick matches 46 as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
    execute if score @s AW.AnimationTick matches 46 if predicate api:global_vars/difficulty/min/3_blessless as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/
    execute if score @s AW.AnimationTick matches 46 if predicate api:global_vars/difficulty/min/3_blessless as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=random,limit=2] at @s run function asset:mob/0392.ecual_first/ai/animation/2_0_chill_rain/magic/

# バリアント
    execute if score @s AW.AnimationTick matches 10 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 65 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
