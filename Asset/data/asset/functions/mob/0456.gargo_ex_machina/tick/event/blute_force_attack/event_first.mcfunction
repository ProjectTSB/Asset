#> asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/event_first
#
# ブルートフォースアタック
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/call_drone_first/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 90 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 演出
        # 画面エフェクト
            execute if score @s CO.EventTimer matches 73 run title @a[distance=..160] times 3 0 5
            execute if score @s CO.EventTimer matches 73 run title @a[distance=..160] title {"text":"\uE010","font":"screen_effect","color":"#E8E8E8"}
        execute if score @s CO.EventTimer matches 75 run playsound block.beacon.power_select hostile @a ~ ~ ~ 4 1.5
        execute if score @s CO.EventTimer matches 75 run playsound block.beacon.power_select hostile @a ~ ~ ~ 4 1.7
    # 中央を見る
        execute if score @s CO.EventTimer matches 1 at @e[type=marker,tag=CO.CenterPosition,distance=..80] run summon area_effect_cloud ~ ~ ~ {Tags:["CO.Aec.Destination"],Duration:45}
        execute if score @s CO.EventTimer matches 1..40 run function asset:mob/0456.gargo_ex_machina/tick/util/rotate_to_destination
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 召喚開始
        execute if score @s CO.EventTimer matches 74 run tag @s add CO.Skill.BluteForce.Async
        execute if score @s CO.EventTimer matches 74 run scoreboard players set @s CO.EventTimer.BluteForce 0

# 終了
    execute if score @s CO.EventTimer matches 110.. run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/end
