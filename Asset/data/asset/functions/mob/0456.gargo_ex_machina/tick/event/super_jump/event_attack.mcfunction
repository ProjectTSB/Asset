#> asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_attack
#
# スーパージャンプ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 攻撃
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/super_jump_end/tween {duration:1, to_frame: 1}
        execute if score @s CO.EventTimer matches 21 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/super_jump_end/pause
        execute if score @s CO.EventTimer matches 70 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/super_jump_end/resume
    # 効果音
        execute if score @s CO.EventTimer matches 131 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 予兆
        execute if score @s CO.EventTimer matches 20 if predicate api:global_vars/difficulty/max/2_hard run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/prediction.m {Tick:60}
        execute if score @s CO.EventTimer matches 70 if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/prediction.m {Tick:10}
    # 攻撃
        execute if score @s CO.EventTimer matches 80 run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/attack
    # 攻撃演出
        execute if score @s CO.EventTimer matches 80 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~2
        execute if score @s CO.EventTimer matches 81 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 82 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~4
        execute if score @s CO.EventTimer matches 83 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 84 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 85 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-3
        execute if score @s CO.EventTimer matches 86 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 87 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-1
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 終了
    execute if score @s CO.EventTimer matches 159.. run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/end
