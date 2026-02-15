#> asset:mob/0456.gargo_ex_machina/tick/event/move/
#
# 移動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/beam_start/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 22 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.7
        execute if score @s CO.EventTimer matches 22 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.6
        execute if score @s CO.EventTimer matches 22 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 25 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 演出
        execute if score @s CO.EventTimer matches 21 positioned ^ ^ ^6 run particle explosion ~ ~ ~ 1 0.5 1 0 6
        execute if score @s CO.EventTimer matches 21 positioned ^ ^ ^6 run particle block quartz_block ~ ~ ~ 1 0.5 1 0 100
    
# 終了
    execute if score @s CO.EventTimer matches 36.. run function asset:mob/0456.gargo_ex_machina/tick/event/move/end
