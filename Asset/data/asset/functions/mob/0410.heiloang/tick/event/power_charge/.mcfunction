#> asset:mob/0410.heiloang/tick/event/power_charge/
#
# パワーチャージ
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 詠唱
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/99_disaster_cast
    # 演出
        execute if score @s BE.EventTimer matches 1..119 positioned ^ ^3 ^-5 run function asset:mob/0410.heiloang/tick/event/power_charge/particle_ring

# チャージ
    # アニメーション再生
        execute if score @s BE.EventTimer matches 119 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/99_disaster
    # 演出
        execute if score @s BE.EventTimer matches 149..170 run particle end_rod ^ ^5 ^-8 2 2 2 1 30 force
        execute if score @s BE.EventTimer matches 149 run particle flash ^ ^5 ^-8 6 6 6 0.5 100 force
    # パワーチャージ段階増加
        execute if score @s BE.EventTimer matches 149 run function asset:mob/0410.heiloang/tick/util/up_powercharge

# 終了
    execute if score @s BE.EventTimer matches 213.. run function asset:mob/0410.heiloang/tick/event/power_charge/end
