#> asset:mob/0410.heiloang/tick/event/offering_end/
#
# ソウルオファリング時間切れ版
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：3回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting

# カウンター増加
    execute if score @s BE.EventTimer matches 556 run function asset:mob/0410.heiloang/tick/event/offering_end/get_servants_count

# 終了
    execute if score @s BE.EventTimer matches 499.. if predicate api:global_vars/difficulty/easy run function asset:mob/0410.heiloang/tick/event/offering_end/end
    execute if score @s BE.EventTimer matches 465.. if predicate api:global_vars/difficulty/2_hard run function asset:mob/0410.heiloang/tick/event/offering_end/end
    execute if score @s BE.EventTimer matches 567.. if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0410.heiloang/tick/event/offering_end/end
