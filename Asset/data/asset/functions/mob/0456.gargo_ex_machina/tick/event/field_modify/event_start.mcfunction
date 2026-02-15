#> asset:mob/0456.gargo_ex_machina/tick/event/field_modify/event_start
#
# フィールド・モディファイ
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
        execute if score @s CO.EventTimer matches 25 positioned ~ ~1 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/effect
        execute if score @s CO.EventTimer matches 26 positioned ~ ~6 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/effect
        execute if score @s CO.EventTimer matches 27 positioned ~ ~11 ~ run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/effect
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 召喚
        execute if score @s CO.EventTimer matches 25 run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_manager
        execute if score @s CO.EventTimer matches 22 positioned as @e[type=marker,tag=CO.CenterPosition,sort=nearest,limit=1] positioned ~ ~-0.4 ~ rotated 0 0 run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field_start

# 終了
    execute if score @s CO.EventTimer matches 65.. run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/end
