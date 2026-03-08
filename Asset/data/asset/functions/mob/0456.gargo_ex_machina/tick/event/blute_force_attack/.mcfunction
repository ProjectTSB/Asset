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
        # 全員お披露目パターン
            execute if score @s CO.EventTimer matches 25 positioned ^ ^ ^10 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m
            execute if score @s CO.EventTimer matches 26 positioned ^-15 ^ ^8 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m
            execute if score @s CO.EventTimer matches 27 positioned ^15 ^ ^8 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_attack_drone.m
            execute if score @s CO.EventTimer matches 28 positioned ^-20 ^ ^6 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m
            execute if score @s CO.EventTimer matches 29 positioned ^20 ^ ^6 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m
            execute if score @s CO.EventTimer matches 28 positioned ^ ^ ^-8 rotated ~ ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
            execute if score @s CO.EventTimer matches 28 positioned ^-26 ^ ^-6 rotated ~-12 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
            execute if score @s CO.EventTimer matches 28 positioned ^26 ^ ^-6 rotated ~12 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
        # パンジャン+回転Yeeterパターン
            # execute if score @s CO.EventTimer matches 25 at @e[type=marker,tag=CO.CenterPosition,distance=..80] rotated ~ ~ positioned ^ ^ ^20 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
            # execute if score @s CO.EventTimer matches 25 at @e[type=marker,tag=CO.CenterPosition,distance=..80] rotated ~120 ~ positioned ^ ^ ^20 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
            # execute if score @s CO.EventTimer matches 25 at @e[type=marker,tag=CO.CenterPosition,distance=..80] rotated ~240 ~ positioned ^ ^ ^20 rotated ~-90 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_yeeter_drone.m
            # execute if score @s CO.EventTimer matches 25 at @e[type=marker,tag=CO.CenterPosition,distance=..80] positioned ^ ^ ^ run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m
            # execute if score @s CO.EventTimer matches 25 at @e[type=marker,tag=CO.CenterPosition,distance=..80] positioned ^22 ^ ^22 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m
            # execute if score @s CO.EventTimer matches 25 at @e[type=marker,tag=CO.CenterPosition,distance=..80] positioned ^-22 ^ ^22 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m
            # execute if score @s CO.EventTimer matches 25 at @e[type=marker,tag=CO.CenterPosition,distance=..80] positioned ^22 ^ ^-22 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m
            # execute if score @s CO.EventTimer matches 25 at @e[type=marker,tag=CO.CenterPosition,distance=..80] positioned ^-22 ^ ^-22 run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/summon_panjan_drone.m

# 終了
    execute if score @s CO.EventTimer matches 65.. run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/end
