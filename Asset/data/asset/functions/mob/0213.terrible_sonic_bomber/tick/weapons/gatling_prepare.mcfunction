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

# 本体の向きを変える
   execute at @p positioned ~ ~10 ~ facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

# 攻撃座標指定
   execute positioned as @p rotated as @s rotated ~ 0 positioned ^ ^ ^-20 run tp 0-0-0-0-0 ~ ~ ~ ~ ~
   data modify storage asset:context this.gatling.target_pos set from entity 0-0-0-0-0 Pos
   data modify storage asset:context this.gatling.target_rot set from entity 0-0-0-0-0 Rotation
      #tellraw @a [{"storage":"asset:context","nbt":"this.gatling.target_pos"}]
   execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 0.0 0.0

# 攻撃箇所表示
   data modify storage asset:temp args set value {Color:15453454,Tick:70,Scale:"[3f,30f,1f]"}
   data modify storage asset:temp args.RotationX set from entity @s Rotation[0]
   execute rotated as @s positioned as @p rotated ~ 0 positioned ^ ^ ^-20 positioned ~ ~0.01 ~ run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/set_attack_position_display.m with storage asset:temp args 

# reset
   scoreboard players reset $attack_start_time Temporary
