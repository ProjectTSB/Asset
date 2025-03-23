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

# モデルの移動
    execute at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# 終了
    execute if score @s BE.EventTimer matches 226.. run function asset:mob/0410.heiloang/tick/event/final_flare/end
