#> asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack
#
# 剣叩きつけ
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 攻撃
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/sword_smash_attack/tween {duration:1, to_frame: 1}
        execute if score @s CO.EventTimer matches 35 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/sword_smash_attack/pause
        execute if score @s CO.EventTimer matches 60 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/sword_smash_attack/resume
    # 効果音
        execute if score @s CO.EventTimer matches 1 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.9
        execute if score @s CO.EventTimer matches 65 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.9
        execute if score @s CO.EventTimer matches 93 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.9
    # 攻撃
        execute if score @s CO.EventTimer matches 15 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack
    # 攻撃演出
        execute if score @s CO.EventTimer matches 17 positioned ^ ^ ^25 positioned as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run playsound entity.breeze.shoot hostile @a ~ ~ ~ 2 0.9
        execute if score @s CO.EventTimer matches 17 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line.m {Dist:0}
        execute if score @s CO.EventTimer matches 19 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line.m {Dist:15}
        execute if score @s CO.EventTimer matches 21 positioned ^ ^ ^25 run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/attack_effect_line.m {Dist:30}
        execute if score @s CO.EventTimer matches 16 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~2
        execute if score @s CO.EventTimer matches 17 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 18 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~4
        execute if score @s CO.EventTimer matches 19 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-4
        execute if score @s CO.EventTimer matches 20 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 21 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-3
        execute if score @s CO.EventTimer matches 22 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~3
        execute if score @s CO.EventTimer matches 23 as @a[distance=..80] at @s run tp @s ~ ~ ~ ~ ~-1

# 終了
    execute if score @s CO.EventTimer matches 95.. run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/end
