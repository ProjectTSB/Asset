#> asset:mob/0410.heiloang/tick/event/start_temp/
#
# 暫定的な登場演出
#
# @within asset:mob/0410.heiloang/tick/event/

# タイマー増加
    scoreboard players add @s BE.EventTimer 1

# 出現、攻撃
    # アニメーション再生
        execute if score @s BE.EventTimer matches 1 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/8_1_move_flare

# 待機
    execute if score @s BE.EventTimer matches 129 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run scoreboard players set @s BE.Idle.Count 3
    execute if score @s BE.EventTimer matches 129 as @e[type=item_display,tag=BE.ModelRoot,sort=nearest,limit=1] run function asset:mob/0410.heiloang/tick/animated_java/play/1_idle

# 終了
    execute if score @s BE.EventTimer matches 208.. run function asset:mob/0410.heiloang/tick/event/start_temp/end
