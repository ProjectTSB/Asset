#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_prepare
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
execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 17

# 対象候補指定
tag @a remove 5X.BrimstoneTarget
tag @a[distance=..256] add 5X.BrimstoneTarget

# reset
scoreboard players reset $attack_start_time Temporary
