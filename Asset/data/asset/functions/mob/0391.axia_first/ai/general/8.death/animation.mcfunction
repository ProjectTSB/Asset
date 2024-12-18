#> asset:mob/0391.axia_first/ai/general/8.death/animation
#
# マーカーに対する処理
#
# @within function asset:mob/0391.axia_first/ai/general/8.death/schedule

# モデル紐づけ
    tag @e[type=item_display,tag=AV.ModelRoot,distance=..250,sort=nearest,limit=1] add AV.Root.This

# スコア上昇
    execute unless score @s AV.AnimationTick matches -2147483648..2147483647 run scoreboard players set @s AV.AnimationTick 0
    scoreboard players add @s AV.AnimationTick 1

# アニメーション再生
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..250] run function animated_java:axia/animations/15_0_former_ending/play
    execute if score @s AV.AnimationTick matches 1 as @e[type=item_display,tag=AV.Root.This,distance=..100] run function animated_java:axia/variants/jitome/apply

# パーティクル処理
    execute if score @s AV.AnimationTick matches 99 as @e[type=item_display,tag=AV.Root.This,distance=..250] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
    execute if score @s AV.AnimationTick matches 99 as @e[type=item_display,tag=AV.Root.This,distance=..250] at @s run playsound entity.generic.explode hostile @a ~ ~ ~ 1 1

# アニメーション終了処理
    execute if score @s AV.AnimationTick matches 102 run function asset:mob/0391.axia_first/ai/general/8.death/kill

# 紐づけ終了
    tag @e[type=item_display,tag=AV.Root.This,distance=..250] remove AV.Root.This

# スケジュール起動
    schedule function asset:mob/0391.axia_first/ai/general/8.death/schedule 1t
