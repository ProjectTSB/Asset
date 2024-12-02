#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱：2回
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_0_common_cast_start
        execute if score @s BE.EventTimer matches 23 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_1_common_casting
    # 攻撃位置予告
        execute if score @s BE.EventTimer matches 23..90 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_before
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 90 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
    # 攻撃
        execute if score @s BE.EventTimer matches 110 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon

# 終了
    execute if score @s BE.EventTimer matches 175.. run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/end
