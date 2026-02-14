#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_charging
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 溜め
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/sword_smash_charge/tween {duration:1, to_frame: 1}
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 予告
        execute if score @s CO.EventTimer matches 1 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/prediction

# 終了
    execute if score @s CO.EventTimer matches 40.. run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/start_attack
