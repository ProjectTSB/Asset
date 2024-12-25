#> asset:mob/0372.tutankhamen/tick/skill/dash/charge/side/start
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/charge/side/

# アニメ開始
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/dash/tween {to_frame: 0, duration: 1}

# 演出
    playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~ 2 0.5
    particle minecraft:crit ~ ~ ~ 0 0 0 1 25
    particle minecraft:poof ~ ~ ~ 0 0 0 0.3 50
