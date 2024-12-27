#> asset:mob/0372.tutankhamen/tick/skill/laser/windup
#
# 予備動作とか
#
# @within function asset:mob/0372.tutankhamen/tick/skill/laser/

# AJの開始アニメーション
    execute as @e[type=item_display,tag=AC.AJLink,distance=..0.01,sort=nearest,limit=1] run function animated_java:tutankhamen/animations/attack_laser_2_windup/tween {to_frame:0, duration:5}

# 狙うプレイヤーを決定しフィールドに放り込む
    execute as @r[distance=..32] run function lib:get_name/
    data modify storage asset:context this.TargetName set from storage lib: Return.Name
