#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/drone_prepare
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

# 攻撃箇所表示
    #execute at @e[tag=5X.Centre,limit=1] positioned ~ ~0.01 ~-5 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/set_attack_position_display.m {Color:14234401,Tick:200,Scale:"[10f,10f,10f]",RotationX:0} 
# 攻撃箇所表示
    data modify storage api: Argument.FieldOverride set value {Color:14234401,Tick:400,Scale:10f}
    data modify storage api: Argument.ID set value 2205
    execute at @e[type=marker,tag=5X.Centre,distance=..128,limit=1] positioned ~ ~0.01 ~ run function api:object/summon

# reset
    scoreboard players reset $attack_start_time Temporary
