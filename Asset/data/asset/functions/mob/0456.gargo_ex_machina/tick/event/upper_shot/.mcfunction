#> asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/
#
# 射撃
#
# @within asset:mob/0456.gargo_ex_machina/tick/event/

# タイマー増加
    scoreboard players add @s CO.EventTimer 1

# 構え
    # アニメーション再生
        execute if score @s CO.EventTimer matches 1 as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run function animated_java:gargo_ex_machina/animations/shot_upper/tween {duration:1, to_frame: 1}
    # 効果音
        execute if score @s CO.EventTimer matches 1 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 10 positioned ^-4 ^ ^4 run function asset:mob/0456.gargo_ex_machina/tick/util/step_sound
        execute if score @s CO.EventTimer matches 50 run function asset:mob/0456.gargo_ex_machina/tick/util/sound
        execute if score @s CO.EventTimer matches 70 run playsound block.piston.contract hostile @a ~ ~ ~ 2 0.9
    # モデルを合わせる
        execute as @e[type=item_display,tag=CO.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
    # 演出
        execute if score @s CO.EventTimer matches 28 as @e[type=item_display,tag=CO.ModelRoot,distance=..80,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/summon_laser.m with entity @s data.locators.muzzle
        execute if score @s CO.EventTimer matches 30..32 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.5
        execute if score @s CO.EventTimer matches 30..32 run playsound entity.breeze.jump hostile @a ~ ~ ~ 2 0.6
    # 攻撃開始
        execute if score @s CO.EventTimer matches 48 run tag @s add CO.UpperShot.Asyuc
    
# 終了
    execute if score @s CO.EventTimer matches 70.. run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/end
