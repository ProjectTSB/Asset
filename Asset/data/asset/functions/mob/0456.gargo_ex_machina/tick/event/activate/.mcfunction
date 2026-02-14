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
    # 影
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.Shadow] run function asset:mob/0456.gargo_ex_machina/tick/util/hide_shadow
    # 効果音
        execute if score @s CO.EventTimer matches 60 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.contract hostile @a ~ ~ ~ 2 1.2
        execute if score @s CO.EventTimer matches 118 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.extend hostile @a ~ ~ ~ 2 1.2
        execute if score @s CO.EventTimer matches 125 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.extend hostile @a ~ ~ ~ 2 1.2
        execute if score @s CO.EventTimer matches 155 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.beacon.activate hostile @a ~ ~ ~ 2 2.0
        
# 起動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 185 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/move_to_field_fast/tween {duration:1, to_frame: 1}
    # フィールドに移動
        execute if score @s CO.EventTimer matches 210 positioned as @e[type=marker,tag=CO.CenterPosition,distance=..100,limit=1] run tp @s ~ ~-0.5 ~ 180 0 
    # モデルを合わせる
        execute if score @s CO.EventTimer matches 211.. as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 影
        execute if score @s CO.EventTimer matches 212 as @e[type=item_display,tag=CO.Shadow] run function asset:mob/0456.gargo_ex_machina/tick/util/show_shadow
    # 演出
        execute if score @s CO.EventTimer matches 231 run particle explosion ~ ~1 ~ 4 0.1 4 0 30
        execute if score @s CO.EventTimer matches 231 run particle campfire_cosy_smoke ~ ~1 ~ 4 0.1 4 0.05 100
    # 効果音
        execute if score @s CO.EventTimer matches 185 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8
        execute if score @s CO.EventTimer matches 207 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.7
        execute if score @s CO.EventTimer matches 231 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.7
        execute if score @s CO.EventTimer matches 231 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.6
        execute if score @s CO.EventTimer matches 231 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 261 run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.8
        execute if score @s CO.EventTimer matches 285 run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.8

# 終了
    execute if score @s CO.EventTimer matches 291.. run function asset:mob/0456.gargo_ex_machina/tick/event/activate/end
