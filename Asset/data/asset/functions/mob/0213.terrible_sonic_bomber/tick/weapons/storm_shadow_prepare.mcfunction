#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/attack_motion_prepare

#> prv
# @private
   #declare score_holder $attack_start_time

# 攻撃開始時間指定
execute store result score $attack_start_time Temporary run time query gametime
execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 20

# 攻撃座標指定
data modify storage asset:context this.storm_shadow.target_pos set from entity @p Pos
