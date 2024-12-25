#> asset:mob/0372.tutankhamen/tick/skill/dash/charge/start
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/charge/

# アニメ開始
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_dash_2/tween {to_frame: 0, duration: 1}

# 演出
    playsound ogg:mob.blaze.breathe2 hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.breeze.death hostile @a ~ ~ ~ 2 0.5
    particle minecraft:crit ~ ~ ~ 0 0 0 1 25
    particle minecraft:poof ~ ~ ~ 0 0 0 0.3 50
