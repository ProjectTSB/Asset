#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/windup
#
# 予備動作
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/meteor_rain/

# 自身のモデルにモーションを再生させる
    execute as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_2_right/tween {to_frame:0,duration:1}
