#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare

#> prv
# @private
   #declare score_holder $attack_start_time

# 攻撃開始と終了時間指定
execute store result score $attack_start_time Temporary run time query gametime
execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 20
execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 1

# 攻撃座標指定 対空砲の1番近くにいるプレイヤーの座標が攻撃目標
execute at @e[tag=5X.Centre,limit=1] run data modify storage asset:context this.storm_shadow.target_pos set from entity @p Pos

# reset
scoreboard players reset $attack_start_time Temporary
