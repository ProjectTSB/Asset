#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye_prepare
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
   execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 18

# 本体の向きを変える
   execute facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 攻撃箇所表示
   data modify storage asset:temp args set value {Color:15453454,Tick:70,Scale:"[10f,60f,1f]"}
   data modify storage asset:temp args.RotationX set from entity @s Rotation[0]
   execute rotated as @s positioned as @p positioned ^ ^ ^-30 positioned ~ ~0.01 ~ run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/set_attack_position_display.m with storage asset:temp args 


# reset
   scoreboard players reset $attack_start_time Temporary
   data remove storage asset:temp args
