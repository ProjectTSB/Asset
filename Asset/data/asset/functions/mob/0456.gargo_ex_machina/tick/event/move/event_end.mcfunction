#> asset:mob/0456.gargo_ex_machina/tick/event/move/event_end
#
# 移動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/walk_end/tween {duration:1, to_frame: 1}

# モデルを合わせる
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 終了
    execute if score @s CO.EventTimer matches 15.. run function asset:mob/0456.gargo_ex_machina/tick/event/move/end
