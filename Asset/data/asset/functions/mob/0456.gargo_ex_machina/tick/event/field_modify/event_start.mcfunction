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
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 召喚
        execute if score @s CO.EventTimer matches 25 run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_manager
        execute if score @s CO.EventTimer matches 22 positioned as @e[type=marker,tag=CO.CenterPosition,sort=nearest,limit=1] rotated 0 0 run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/summon_field_start

# 終了
    execute if score @s CO.EventTimer matches 65.. run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/end
