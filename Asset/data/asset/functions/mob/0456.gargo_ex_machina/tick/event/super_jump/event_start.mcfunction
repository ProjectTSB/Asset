#> asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_start
#
# スーパージャンプ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/super_jump_start/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 13 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 演出
        execute if score @s CO.EventTimer matches 15 run particle block quartz_block ~ ~0.5 ~ 2 0.1 2 0 30
    # 影
        execute if score @s CO.EventTimer matches 18 as @e[type=item_display,tag=CO.Shadow] run function asset:mob/0456.gargo_ex_machina/tick/util/hide_shadow
        execute if score @s CO.EventTimer matches 40 as @e[type=item_display,tag=CO.Shadow] run function asset:mob/0456.gargo_ex_machina/tick/util/show_shadow
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 予兆
        execute if score @s CO.EventTimer matches 41 run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/prediction.m {Tick:69}
    
# 攻撃に移行
    execute if score @s CO.EventTimer matches 100.. run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/start_attack
