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
    # バイオーム変更
        # 遠くにいる人に時間変更を通知
        execute if score @s BE.EventTimer matches 190 run time set 15000
        execute if score @s BE.EventTimer matches 190 run effect give @a[distance=..160] night_vision 80 0 true
        execute if score @s BE.EventTimer matches 190 at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~-5 ~-25 ~25 ~ ~25 minecraft:crimson_forest
        execute if score @s BE.EventTimer matches 190 at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~ ~-25 ~25 ~5 ~25 minecraft:crimson_forest
        execute if score @s BE.EventTimer matches 190 at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-25 ~5 ~-25 ~25 ~10 ~25 minecraft:crimson_forest

# モデルの移動
    execute at @s run tp @e[type=item_display,tag=BE.ModelRoot] ~ ~ ~ ~ 0

# 終了
    execute if score @s BE.EventTimer matches 200.. run function asset:mob/0410.heiloang/tick/event/final_flare/end
