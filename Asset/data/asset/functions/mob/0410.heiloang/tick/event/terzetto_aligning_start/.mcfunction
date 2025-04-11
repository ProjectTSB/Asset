#> asset:mob/0410.heiloang/tick/event/terzetto_aligning_start/
#
# テルツェット・アライニング
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：3回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting

# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 125 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_3_common_order

# 終了
    execute if score @s BE.EventTimer matches 189.. run function asset:mob/0410.heiloang/tick/event/terzetto_aligning_start/end
