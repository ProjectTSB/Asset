#> asset:mob/0410.heiloang/tick/event/final_flare/
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 予兆
    execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,distance=..160,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/16_final_start
    # 通知
        # execute if score @s BE.EventTimer matches 1 run tellraw @a[distance=..160] [{"text":"【割合ダメージなので、回復して備えよう的なメッセージ】"}]
    # 演出
        execute if score @s BE.EventTimer matches 2 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 4 0.7
        execute if score @s BE.EventTimer matches 75 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 4 0.7
        execute if score @s BE.EventTimer matches 80 positioned ~ ~30 ~ run playsound entity.ender_dragon.growl hostile @a[distance=..160] ~ ~ ~ 1 0.7 0.7
        execute if score @s BE.EventTimer matches 80 positioned ~ ~30 ~ run playsound entity.wither.ambient hostile @a[distance=..160] ~ ~ ~ 1 0.5 0.2

# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 101 as @e[type=item_display,tag=BE.ModelRoot,distance=..160,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/16_final_flare
    # 移動
        execute if score @s BE.EventTimer matches 101..120 at @s run tp @s ^ ^0.2 ^-1.5 ~ ~
    # 画面エフェクト
        execute if score @s BE.EventTimer matches 159 run title @a[distance=..160] times 1 4 5
        execute if score @s BE.EventTimer matches 159 run title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
    # 攻撃
        execute if score @s BE.EventTimer matches 160 run function asset:mob/0410.heiloang/tick/event/final_flare/attack
        execute if score @s BE.EventTimer matches 285 as @a[tag=!PlayerShouldInvulnerable,distance=..160] at @s run function asset:mob/0410.heiloang/tick/event/final_flare/damage
    # バイオーム変更
        # 遠くにいる人に時間変更を通知
            execute if score @s BE.EventTimer matches 230 run playsound entity.ender_dragon.growl hostile @a[distance=160..] ~ ~ ~ 0.3 0.7 0.3
        execute if score @s BE.EventTimer matches 290 run time set 15000
        execute if score @s BE.EventTimer matches 290 run data modify storage api: Argument set value {ID:655,Duration:500,Stack:5}
        execute if score @s BE.EventTimer matches 290 as @a[distance=..160] run function api:entity/mob/effect/give
        execute if score @s BE.EventTimer matches 290 run function api:entity/mob/effect/reset
        execute if score @s BE.EventTimer matches 290 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run fillbiome ~-25 ~-5 ~-25 ~25 ~ ~25 minecraft:crimson_forest
        execute if score @s BE.EventTimer matches 290 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run fillbiome ~-25 ~ ~-25 ~25 ~5 ~25 minecraft:crimson_forest
        execute if score @s BE.EventTimer matches 290 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run fillbiome ~-25 ~5 ~-25 ~25 ~10 ~25 minecraft:crimson_forest
    # モデル変更
        execute if score @s BE.EventTimer matches 187 as @e[type=item_display,tag=BE.ModelRoot,distance=..160] run function animated_java:heiloang_aj/variants/black/apply
        execute if score @s BE.EventTimer matches 290 as @e[type=item_display,tag=BE.ModelRoot,distance=..160] run function animated_java:heiloang_aj/variants/default/apply
    # 演出
        # パーティクル
            execute if score @s BE.EventTimer matches 160 run summon area_effect_cloud ^ ^-6 ^30 {Duration:110,Tags:["BE.Temp.AttackPosition"]}
            execute if score @s BE.EventTimer matches 160..270 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,distance=..160] at @s run function asset:mob/0410.heiloang/tick/event/final_flare/particle_before
            execute if score @s BE.EventTimer matches 160..290 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run particle block stone ~ ~ ~ 8 0 8 0 10
            execute if score @s BE.EventTimer matches 270..290 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run particle explosion ~ ~ ~ 6 0.5 6 0 10
            execute if score @s BE.EventTimer matches 300..306 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run particle lava ~ ~ ~ 6 1 6 0 10
            execute if score @s BE.EventTimer matches 306..316 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run particle block stone ~ ~6 ~ 8 0 8 0 30
            execute if score @s BE.EventTimer matches 306..316 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run particle falling_dust stone ~ ~6 ~ 8 3 8 0 30
            execute if score @s BE.EventTimer matches 300..413 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run particle lava ~ ~ ~ 8 0 8 0 1
        # 効果音
            execute if score @s BE.EventTimer matches 115 positioned ^ ^ ^30 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 4 0.7
            execute if score @s BE.EventTimer matches 140 positioned ^ ^ ^30 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 4 0.7
            execute if score @s BE.EventTimer matches 155 positioned ^ ^ ^30 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 4 0.7
            execute if score @s BE.EventTimer matches 155 positioned ^ ^ ^30 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 4 0.6
            execute if score @s BE.EventTimer matches 155 positioned ^ ^ ^30 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 4 0.5
            execute if score @s BE.EventTimer matches 190 positioned ^ ^ ^30 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 4 0.5
            execute if score @s BE.EventTimer matches 190 positioned ^ ^ ^30 run playsound entity.blaze.shoot hostile @a ~ ~ ~ 4 0.55
            execute if score @s BE.EventTimer matches 155..215 positioned ^ ^ ^30 run playsound minecraft:entity.breeze.inhale hostile @a ~ ~ ~ 4 0.55
            execute if score @s BE.EventTimer matches 216..230 positioned ^ ^ ^30 run playsound minecraft:entity.breeze.inhale hostile @a ~ ~ ~ 4 0.65
            execute if score @s BE.EventTimer matches 231..250 positioned ^ ^ ^30 run playsound minecraft:entity.breeze.inhale hostile @a ~ ~ ~ 4 0.75
            execute if score @s BE.EventTimer matches 251..265 positioned ^ ^ ^30 run playsound minecraft:entity.breeze.inhale hostile @a ~ ~ ~ 4 0.85
            execute if score @s BE.EventTimer matches 269 positioned ^ ^ ^30 run playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 4 0.5
            execute if score @s BE.EventTimer matches 269 positioned ^ ^ ^30 run playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 4 0.6
            execute if score @s BE.EventTimer matches 269 positioned ~ ~30 ~ run playsound entity.ender_dragon.growl hostile @a[distance=..160] ~ ~ ~ 1 0.7 0.7
            execute if score @s BE.EventTimer matches 269 positioned ~ ~30 ~ run playsound entity.wither.ambient hostile @a[distance=..160] ~ ~ ~ 1 0.5 0.2
            execute if score @s BE.EventTimer matches 269 positioned ~ ~30 ~ run playsound entity.wither.death hostile @a[distance=..160] ~ ~ ~ 1 0.5 0.4
            execute if score @s BE.EventTimer matches 269 positioned ~ ~30 ~ run playsound entity.wither.death hostile @a[distance=..160] ~ ~ ~ 1 0.7 0.4
            execute if score @s BE.EventTimer matches 269..275 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 0.5 0.2
            execute if score @s BE.EventTimer matches 269..275 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 0.6 0.2
            execute if score @s BE.EventTimer matches 269..275 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 0.7 0.2
            execute if score @s BE.EventTimer matches 276..300 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 1.3 0.2
        # フレア
            execute if score @s BE.EventTimer matches 246 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run function asset:mob/0410.heiloang/tick/event/final_flare/particle_flare_start
            execute if score @s BE.EventTimer matches 246..270 as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,distance=..160,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/final_flare/particle_flare
        # 床
            execute if score @s BE.EventTimer matches 300 at @e[type=marker,tag=BE.CenterPosition,distance=..160] positioned ~-0.3 ~ ~0.2 run return run function asset:mob/0410.heiloang/tick/event/final_flare/particle_floor

# モデルの移動
    execute at @s run tp @e[type=item_display,tag=BE.ModelRoot,distance=..160] ~ ~ ~ ~ 0

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 346 as @e[type=item_display,tag=BE.ModelRoot,distance=..160,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_0_flymove_start
        execute if score @s BE.EventTimer matches 375 as @e[type=item_display,tag=BE.ModelRoot,distance=..160,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BE.EventTimer matches 370 at @e[type=marker,tag=BE.CenterPosition,distance=..160] run tp @s ^ ^2 ^28 ~180 0

# 無敵化
    execute if score @s BE.EventTimer matches 413 run function asset:mob/0410.heiloang/tick/util/end_invulnerable

# 終了
    execute if score @s BE.EventTimer matches 413.. run function asset:mob/0410.heiloang/tick/event/final_flare/end
