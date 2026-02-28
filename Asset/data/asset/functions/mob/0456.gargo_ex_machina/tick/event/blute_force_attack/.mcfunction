#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/call_drone/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 50 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 演出
        # 画面エフェクト
            execute if score @s CO.EventTimer matches 23 run title @a[distance=..160] times 3 0 5
            execute if score @s CO.EventTimer matches 23 run title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
        execute if score @s CO.EventTimer matches 25 run playsound block.beacon.power_select hostile @a ~ ~ ~ 4 1.5
        execute if score @s CO.EventTimer matches 25 run playsound block.beacon.power_select hostile @a ~ ~ ~ 4 1.7
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 召喚
        execute if score @s CO.EventTimer matches 25 positioned ^ ^ ^10 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m
        execute if score @s CO.EventTimer matches 26 positioned ^-8 ^ ^8 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
        execute if score @s CO.EventTimer matches 27 positioned ^8 ^ ^8 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
        # execute if score @s CO.EventTimer matches 28 positioned ^-16 ^ ^6 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m
        # execute if score @s CO.EventTimer matches 29 positioned ^16 ^ ^6 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m
        # execute if score @s CO.EventTimer matches 30 positioned ^-24 ^ ^6 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m
        # execute if score @s CO.EventTimer matches 31 positioned ^24 ^ ^6 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m

# 終了
    execute if score @s CO.EventTimer matches 65.. run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/end
