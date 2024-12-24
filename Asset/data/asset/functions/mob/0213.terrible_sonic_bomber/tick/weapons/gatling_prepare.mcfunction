#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/gatling_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare

#> prv
# @private
   #declare score_holder $attack_start_time

# 攻撃開始と終了時間指定
   execute store result score $attack_start_time Temporary run time query gametime
   execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 5
   execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 28

# 攻撃座標指定
   execute positioned as @p rotated as @s rotated ~ 0 positioned ^ ^ ^-20 run tp 0-0-0-0-0 ~ ~ ~ ~ ~
   data modify storage asset:context this.gatling.target_pos set from entity 0-0-0-0-0 Pos
   data modify storage asset:context this.gatling.target_rot set from entity 0-0-0-0-0 Rotation
      #tellraw @a [{"storage":"asset:context","nbt":"this.gatling.target_pos"}]
   execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 0.0 0.0

# reset
   scoreboard players reset $attack_start_time Temporary
