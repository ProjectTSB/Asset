#> asset:mob/0410.heiloang/tick/event/damage/
#
# 怯み
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 怯み
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/11_damage
    # 演出
        execute if score @s BE.EventTimer matches 1 run playsound entity.ender_dragon.hurt hostile @a ~ ~ ~ 3 0.7
        execute if score @s BE.EventTimer matches 11 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# 終了
    execute if score @s BE.EventTimer matches 55.. run function asset:mob/0410.heiloang/tick/event/damage/end
