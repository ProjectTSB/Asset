#> asset:mob/0410.heiloang/tick/event/final_flare/
#
# 究極幻想
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/16_final_flare
    # 移動
        execute if score @s BE.EventTimer matches 1..20 at @s run tp @s ^ ^0.2 ^-1.5 ~ ~
    # 画面エフェクト
        execute if score @s BE.EventTimer matches 59 run title @a[distance=..160] times 1 4 5
        execute if score @s BE.EventTimer matches 59 run title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
    # 攻撃
        execute if score @s BE.EventTimer matches 60 run function asset:mob/0410.heiloang/tick/event/final_flare/attack
        execute if score @s BE.EventTimer matches 185 as @a[tag=!PlayerShouldInvulnerable,distance=..160] at @s run function asset:mob/0410.heiloang/tick/event/final_flare/damage
    # バイオーム変更
        # 遠くにいる人に時間変更を通知
            execute if score @s BE.EventTimer matches 130 run playsound entity.ender_dragon.growl hostile @a[distance=160..] ~ ~ ~ 0.3 0.7 0.3
        execute if score @s BE.EventTimer matches 190 run time set 15000
        execute if score @s BE.EventTimer matches 190 run effect give @a[distance=..160] night_vision 80 0 true
        execute if score @s BE.EventTimer matches 190 at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~-5 ~-25 ~25 ~ ~25 minecraft:crimson_forest
        execute if score @s BE.EventTimer matches 190 at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~ ~-25 ~25 ~5 ~25 minecraft:crimson_forest
        execute if score @s BE.EventTimer matches 190 at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~5 ~-25 ~25 ~10 ~25 minecraft:crimson_forest
    # モデル変更
        execute if score @s BE.EventTimer matches 87 as @e[tag=BE.ModelRoot] run function animated_java:heiloang_aj/variants/black/apply
        execute if score @s BE.EventTimer matches 190 as @e[tag=BE.ModelRoot] run function animated_java:heiloang_aj/variants/default/apply
    # 演出
        # パーティクル
            execute if score @s BE.EventTimer matches 60 run summon area_effect_cloud ^ ^-6 ^30 {Duration:110,Tags:["BE.Temp.AttackPosition"]}
            execute if score @s BE.EventTimer matches 60..170 as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition] at @s run function asset:mob/0410.heiloang/tick/event/final_flare/particle_before
            execute if score @s BE.EventTimer matches 60..190 at @e[type=marker,tag=BE.CenterPosition] run particle block stone ~ ~ ~ 8 0 8 0 10
            execute if score @s BE.EventTimer matches 170..190 at @e[type=marker,tag=BE.CenterPosition] run particle explosion ~ ~ ~ 6 0.5 6 0 10
            # execute if score @s BE.EventTimer matches 200 at @e[type=marker,tag=BE.CenterPosition] run particle campfire_cosy_smoke ~ ~ ~ 6 1 6 0.05 200
            execute if score @s BE.EventTimer matches 200..206 at @e[type=marker,tag=BE.CenterPosition] run particle lava ~ ~ ~ 6 1 6 0 10
            execute if score @s BE.EventTimer matches 206..216 at @e[type=marker,tag=BE.CenterPosition] run particle block stone ~ ~6 ~ 8 0 8 0 30
            execute if score @s BE.EventTimer matches 206..216 at @e[type=marker,tag=BE.CenterPosition] run particle falling_dust stone ~ ~6 ~ 8 3 8 0 30
            execute if score @s BE.EventTimer matches 200..313 at @e[type=marker,tag=BE.CenterPosition] run particle lava ~ ~ ~ 8 0 8 0 1
        # 効果音
            execute if score @s BE.EventTimer matches 15 positioned ^ ^ ^30 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 0.7
            execute if score @s BE.EventTimer matches 40 positioned ^ ^ ^50 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 0.7
            execute if score @s BE.EventTimer matches 55 positioned ^ ^ ^50 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 2 0.7
            execute if score @s BE.EventTimer matches 55 positioned ^ ^ ^50 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 2 0.6
            execute if score @s BE.EventTimer matches 55 positioned ^ ^ ^50 run playsound block.enchantment_table.use hostile @a ~ ~ ~ 2 0.5
            execute if score @s BE.EventTimer matches 169 positioned ~ ~30 ~ run playsound entity.ender_dragon.growl hostile @a[distance=..160] ~ ~ ~ 1 0.7 0.7
            execute if score @s BE.EventTimer matches 169 positioned ~ ~30 ~ run playsound entity.wither.ambient hostile @a[distance=..160] ~ ~ ~ 1 0.5 0.2
            execute if score @s BE.EventTimer matches 169 positioned ~ ~30 ~ run playsound entity.wither.death hostile @a[distance=..160] ~ ~ ~ 1 0.5 0.4
            execute if score @s BE.EventTimer matches 169 positioned ~ ~30 ~ run playsound entity.wither.death hostile @a[distance=..160] ~ ~ ~ 1 0.7 0.4
            execute if score @s BE.EventTimer matches 169..175 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 0.5 0.2
            execute if score @s BE.EventTimer matches 169..175 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 0.6 0.2
            execute if score @s BE.EventTimer matches 169..175 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 0.7 0.2
            execute if score @s BE.EventTimer matches 176..200 positioned ~ ~30 ~ run playsound entity.skeleton_horse.death hostile @a[distance=..80] ~ ~ ~ 1 1.3 0.2
        # フレア
            execute if score @s BE.EventTimer matches 146 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/final_flare/particle_flare_start
            execute if score @s BE.EventTimer matches 146..170 as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=random,limit=1] at @s run function asset:mob/0410.heiloang/tick/event/final_flare/particle_flare
        # 床
            execute if score @s BE.EventTimer matches 200 at @e[type=marker,tag=BE.CenterPosition] positioned ~-0.3 ~ ~0.2 run return run function asset:mob/0410.heiloang/tick/event/final_flare/particle_floor

# モデルの移動
    execute at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# 移動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 246 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_0_flymove_start
        execute if score @s BE.EventTimer matches 275 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/12_1_flymove_end
    # 中心点の正面方向に移動
        execute if score @s BE.EventTimer matches 270 at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0

# 終了
    execute if score @s BE.EventTimer matches 313.. run function asset:mob/0410.heiloang/tick/event/final_flare/end
