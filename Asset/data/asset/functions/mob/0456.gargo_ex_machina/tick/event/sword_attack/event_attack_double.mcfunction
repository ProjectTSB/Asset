#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack_double
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 攻撃
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/sword_smash_attack_double/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 76 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 113 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
    # 予告
        execute if score @s CO.EventTimer matches 20 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/prediction_double
    # 攻撃
        execute if score @s CO.EventTimer matches 40 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_double
    # 攻撃演出
        execute if score @s CO.EventTimer matches 42 positioned ^ ^ ^25 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.9
        execute if score @s CO.EventTimer matches 42 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line_double.m {Dist:0}
        execute if score @s CO.EventTimer matches 44 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line_double.m {Dist:15}
        execute if score @s CO.EventTimer matches 46 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line_double.m {Dist:30}
        execute if score @s CO.EventTimer matches 42 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~2
        execute if score @s CO.EventTimer matches 43 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 44 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~4
        execute if score @s CO.EventTimer matches 45 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 46 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 47 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-3
        execute if score @s CO.EventTimer matches 48 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 49 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-1

# 終了
    execute if score @s CO.EventTimer matches 114.. run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/end
