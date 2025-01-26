#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/windup
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/thunder/aiming_laser/

# アニメ再生
    execute as @e[type=item_display,tag=RX.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_3_right/tween {to_frame:0,duration:1}

# ランダムなプレイヤーの名前を自分のフィールドに放り込む
    execute as @r[gamemode=!spectator,distance=..64] run function lib:get_name/
    data modify storage asset:context this.TargetName set from storage lib: Return.Name
