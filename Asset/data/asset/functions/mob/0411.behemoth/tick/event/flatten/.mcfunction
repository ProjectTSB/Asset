#> asset:mob/0411.behemoth/tick/event/flatten/
#
# フラッテン
#
# @within asset:mob/0411.behemoth/tick/event/

# タイマー増加
    scoreboard players add @s BF.EventTimer 1

# 詠唱
    # アニメーション再生
        execute if score @s BF.EventTimer matches 1 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_0_cast_start
        execute if score @s BF.EventTimer matches 20 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/3_1_casting
    # ターゲットを向く
        execute if score @s BF.EventTimer matches 1..60 run function asset:mob/0411.behemoth/tick/util/rotate_to_target

# 攻撃
    # アニメーション再生
        execute if score @s BF.EventTimer matches 100 as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] run function asset:mob/0411.behemoth/tick/animated_java/play/5_flatten
    # 移動
        execute if score @s BF.EventTimer matches 100..115 if block ~ ~-0.1 ~ #lib:no_collision run tp @s ~ ~-0.1 ~
        execute if score @s BF.EventTimer matches 131..140 run tp @s ~ ~0.05 ~
    # 攻撃範囲表示
        execute if score @s BF.EventTimer matches 95 positioned ^ ^-0.5 ^2 run function asset:mob/0411.behemoth/tick/event/flatten/prediction
    # 攻撃
        execute if score @s BF.EventTimer matches 115 positioned ^ ^1 ^2 run function asset:mob/0411.behemoth/tick/event/flatten/attack

# 演出
    execute if score @s BF.EventTimer matches 1 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BF.EventTimer matches 100 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7
    execute if score @s BF.EventTimer matches 140 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 3 0.7

# モデルを自身の位置に合わせる
    execute at @s run tp @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 終了
    execute if score @s BF.EventTimer matches 159.. run function asset:mob/0411.behemoth/tick/event/flatten/end
