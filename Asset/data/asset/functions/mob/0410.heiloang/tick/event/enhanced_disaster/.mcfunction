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
    # 属性予告
        execute if score @s BE.EventTimer matches 25.. as @e[type=area_effect_cloud,tag=BE.Temp.EhdPosition,distance=..100] at @s run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element
        # execute if score @s BE.EventTimer matches 25 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element.m {Count:1}
        # execute if score @s BE.EventTimer matches 45 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element.m {Count:2}
        # execute if score @s BE.EventTimer matches 65 run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_element.m {Count:3}
    # 中心点回転
        execute if score @s BE.EventTimer matches 2 as @e[type=marker,tag=BE.CenterPosition] at @s run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/turn
    # 攻撃位置予告
        execute if score @s BE.EventTimer matches 23 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle.m {Count:1,Tick:80}
        execute if score @s BE.EventTimer matches 53 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle.m {Count:2,Tick:50}
        execute if score @s BE.EventTimer matches 83 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/summon_circle.m {Count:3,Tick:30}
        execute if score @s BE.EventTimer matches 23..90 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/particle_before
# 発動
    # アニメーション再生
        execute if score @s BE.EventTimer matches 90 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/2_2_common_invoke
    # デバフ付与
        execute if score @s BE.EventTimer matches 40 as @a[tag=!PlayerShouldInvulnerable,distance=..160] at @s run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff
    # 攻撃
        execute if score @s BE.EventTimer matches 110 at @e[type=marker,tag=BE.CenterPosition] run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/attack
    # 中心点回転
        execute if score @s BE.EventTimer matches 111 as @e[type=marker,tag=BE.CenterPosition] at @s facing entity @e[type=slime,tag=BE.EntityRoot,limit=1] feet run tp @s ~ ~ ~ ~ 0

# 終了
    execute if score @s BE.EventTimer matches 175.. run function asset:mob/0410.heiloang/tick/event/enhanced_disaster/end
