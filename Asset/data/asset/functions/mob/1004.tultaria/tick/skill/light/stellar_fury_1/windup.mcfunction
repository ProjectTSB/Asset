#> asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/windup
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/light/stellar_fury_1/tick

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_right/tween {to_frame:0,duration:1}
