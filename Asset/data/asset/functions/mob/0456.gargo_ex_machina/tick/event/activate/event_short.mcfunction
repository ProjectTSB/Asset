#> asset:mob/0456.gargo_ex_machina/tick/event/activate/event_short
#
# 起動
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 移動
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/move_to_field_short/tween {duration:1, to_frame: 1}
    # フィールドに移動
        execute if score @s CO.EventTimer matches 1 at @e[type=marker,tag=CO.CenterPosition,distance=..80] positioned ^ ^ ^15 run tp @s ~ ~ ~ ~180 0 
    # モデルを合わせる
        execute if score @s CO.EventTimer matches 1.. as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 演出
        execute if score @s CO.EventTimer matches 12 run particle explosion ~ ~1 ~ 4 0.1 4 0 30
        execute if score @s CO.EventTimer matches 12 run particle campfire_cosy_smoke ~ ~1 ~ 4 0.1 4 0.05 100
    # 効果音
        execute if score @s CO.EventTimer matches 12 positioned ~ ~20 ~ run playsound entity.ravager.step hostile @a[distance=..100] ~ ~ ~ 0 0.7 0.5
        execute if score @s CO.EventTimer matches 12 positioned ~ ~20 ~ run playsound entity.ravager.step hostile @a[distance=..100] ~ ~ ~ 0 0.6 0.5
        execute if score @s CO.EventTimer matches 12 positioned ~ ~20 ~ run playsound entity.ravager.step hostile @a[distance=..100] ~ ~ ~ 0 0.5 0.5
        execute if score @s CO.EventTimer matches 12 positioned ~ ~20 ~ run playsound entity.generic.explode hostile @a[distance=..100] ~ ~ ~ 0 0.8 1
        execute if score @s CO.EventTimer matches 12 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~2
        execute if score @s CO.EventTimer matches 13 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 14 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~4
        execute if score @s CO.EventTimer matches 15 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 16 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 17 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-3
        execute if score @s CO.EventTimer matches 18 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 19 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-1
        execute if score @s CO.EventTimer matches 40 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 65 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # ボス名変更
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/change_bossbar_name.m {Name:"絡繰仕掛の石像",Visible:"false"}
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/show_former_bossbar

# 無敵化
    execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/start_invulnerable
    execute if score @s CO.EventTimer matches 70 run function asset:mob/0456.gargo_ex_machina/tick/util/end_invulnerable

# 終了
    execute if score @s CO.EventTimer matches 71.. run function asset:mob/0456.gargo_ex_machina/tick/event/activate/end
