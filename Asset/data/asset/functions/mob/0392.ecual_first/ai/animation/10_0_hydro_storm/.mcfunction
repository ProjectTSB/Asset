#> asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/
#
# ハイドロストーム アニメーション
#
# @within function asset:mob/0392.ecual_first/ai/animation/

#> function
# @private
    #declare function asset:object/2021.hydro_storm/tick/kill

# アニメーション再生
    execute if score @s AW.AnimationTick matches 1 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/animations/10_0_hydro_storm/play

# アニメーション終了処理
    execute if score @s AW.AnimationTick matches 186 run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/end

# 両手からハイドロ召喚
    execute if score @s AW.AnimationTick matches 36 run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/1

# 最初のハイドロは一旦消す
    execute if score @s AW.AnimationTick matches 61 as @e[type=item_display,tag=AW.HydroStormFirst,distance=..200] run function asset:object/2021.hydro_storm/tick/kill

# プレイヤー追従ハイドロ
    execute if score @s AW.AnimationTick matches 61 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2
    execute if score @s AW.AnimationTick matches 96 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2
    execute if score @s AW.AnimationTick matches 121 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2
    execute if score @s AW.AnimationTick matches 121 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s AW.AnimationTick matches 121 at @e[type=marker,tag=AW.Marker.SummonPoint,distance=..100] run function asset:mob/0392.ecual_first/ai/animation/10_0_hydro_storm/summon/2

# バリアント
    execute if score @s AW.AnimationTick matches 15 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/mabataki/apply
    execute if score @s AW.AnimationTick matches 30 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/majime/apply
    execute if score @s AW.AnimationTick matches 165 as @e[type=item_display,tag=AW.Root.This,distance=..100] run function animated_java:ecual/variants/normal/apply
