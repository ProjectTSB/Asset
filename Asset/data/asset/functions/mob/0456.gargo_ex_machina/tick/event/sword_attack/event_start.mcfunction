#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_start
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/sword_smash_start/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.7
        execute if score @s CO.EventTimer matches 25 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.extend hostile @a ~ ~ ~ 2 0.7
    # 対象を向く
        function asset:mob/0456.gargo_ex_machina/tick/util/rotate_to_target
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 溜めに移行
    execute if score @s CO.EventTimer matches 26.. run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/start_charging
