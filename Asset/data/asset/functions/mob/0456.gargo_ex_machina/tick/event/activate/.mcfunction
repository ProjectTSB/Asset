#> asset:mob/0456.gargo_ex_machina/tick/event/activate/
#
# 起動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 起動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 60 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/activation/tween {duration:1, to_frame: 1}
    # 石像移動
        execute if score @s CO.EventTimer matches 2 run function asset:mob/0456.gargo_ex_machina/tick/event/activate/clone_statue

# 起動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 185 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/move_to_field_fast/tween {duration:1, to_frame: 1}
    # フィールドに移動
        execute if score @s CO.EventTimer matches 220 positioned as @e[type=marker,tag=CO.CenterPosition,distance=..100,limit=1] run tp @s ~ ~-0.5 ~ 180 0 
    # モデルを合わせる
        execute if score @s CO.EventTimer matches 221.. as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 終了
    execute if score @s CO.EventTimer matches 291.. run function asset:mob/0456.gargo_ex_machina/tick/event/activate/end
