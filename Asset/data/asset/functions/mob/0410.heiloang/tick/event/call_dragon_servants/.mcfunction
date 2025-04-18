#> asset:mob/0410.heiloang/tick/event/call_dragon_servants/
#
# コール：ドラゴンサーヴァント
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：4回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # 召喚位置予告
        execute if score @s BE.EventTimer matches 10 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/call_dragon_servants/summon_circle
        execute if score @s BE.EventTimer matches 10..145 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/call_dragon_servants/particle
    # ターゲット予告
        execute if score @s BE.EventTimer matches 10 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/call_dragon_servants/summon_line
        execute if score @s BE.EventTimer matches 10..150 as @e[type=item_display,tag=2181.Line,tag=BE.Object] at @s run function asset:mob/0410.heiloang/tick/event/call_dragon_servants/prediction_line
        execute if score @s BE.EventTimer matches 150 run kill @e[type=item_display,tag=2181.Line,tag=BE.Object]

# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 154 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/13_summon
        execute if score @s BE.EventTimer matches 193 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_3_common_order
    # 眷属召喚
        execute if score @s BE.EventTimer matches 150 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/call_dragon_servants/summon_servants

# バイオーム変更
    # execute if score @s BE.EventTimer matches 150 at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-19 ~-10 ~-19 ~19 ~ ~19 minecraft:crimson_forest
    # execute if score @s BE.EventTimer matches 150 at @e[type=marker,tag=BE.CenterPosition] run fillbiome ~-19 ~-1 ~-19 ~19 ~10 ~19 minecraft:the_end

# 移動
    execute if score @s BE.EventTimer matches 154..169 run tp @s ^ ^ ^-0.3 ~ 0
    execute if score @s BE.EventTimer matches 170..184 run tp @s ^ ^ ^-0.1 ~ 0
    execute if score @s BE.EventTimer matches 154..184 at @s run tp @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 無敵化
    execute if score @s BE.EventTimer matches 1 run function asset:mob/0410.heiloang/tick/util/start_invulnerable

# 終了
    execute if score @s BE.EventTimer matches 257.. run function asset:mob/0410.heiloang/tick/event/call_dragon_servants/end
