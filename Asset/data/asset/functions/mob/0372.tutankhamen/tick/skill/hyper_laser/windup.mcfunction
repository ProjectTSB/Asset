#> asset:mob/0372.tutankhamen/tick/skill/hyper_laser/windup
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/

# アニメ再生
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_laser_windup/tween {to_frame:0, duration:10}
