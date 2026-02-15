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
    # 効果音
        execute if score @s CO.EventTimer matches 38 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 63 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 攻撃
        execute if score @s CO.EventTimer matches 10 run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/attack
    # 攻撃演出
        execute if score @s CO.EventTimer matches 10 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~2
        execute if score @s CO.EventTimer matches 11 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 12 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~4
        execute if score @s CO.EventTimer matches 13 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 14 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 15 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-3
        execute if score @s CO.EventTimer matches 16 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 17 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-1
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# 終了
    execute if score @s CO.EventTimer matches 69.. run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/end
