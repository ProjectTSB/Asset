#> asset:mob/0456.gargo_ex_machina/tick/event/transform_shoot/
#
# 銃変形
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 変形
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/change_to_shot/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run playsound block.grindstone.use hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 1 run playsound ui.stonecutter.take_result hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 10 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 10 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 15 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 15 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 20 run playsound block.piston.extend hostile @a ~ ~ ~ 2 1.1
        execute if score @s CO.EventTimer matches 26 run playsound block.piston.contract hostile @a ~ ~ ~ 2 1.2
        execute if score @s CO.EventTimer matches 31 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 34 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.9
        execute if score @s CO.EventTimer matches 37 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 40 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.9
        execute if score @s CO.EventTimer matches 43 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 31 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 34 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 37 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 40 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 43 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 50 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 50 run playsound item.crossbow.loading_end hostile @a ~ ~ ~ 3 0.7
        execute if score @s CO.EventTimer matches 45 run playsound block.piston.extend hostile @a ~ ~ ~ 2 1.1
        execute if score @s CO.EventTimer matches 58 run playsound block.piston.contract hostile @a ~ ~ ~ 2 1.1
        execute if score @s CO.EventTimer matches 65 run playsound block.grindstone.use hostile @a ~ ~ ~ 3 0.5
        execute if score @s CO.EventTimer matches 65 run playsound ui.stonecutter.take_result hostile @a ~ ~ ~ 3 0.5

# モデルを合わせる
    execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 終了
    execute if score @s CO.EventTimer matches 85.. run function asset:mob/0456.gargo_ex_machina/tick/event/transform_shoot/end
