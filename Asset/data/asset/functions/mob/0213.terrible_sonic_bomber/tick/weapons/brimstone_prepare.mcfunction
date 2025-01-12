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

# 本体の向きを変更
   execute facing entity @e[tag=5X.Centre,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 対象候補指定(最大6人)
   tag @a remove 5X.BrimstoneTarget
   tag @a[distance=..256,sort=nearest,limit=6] add 5X.BrimstoneTarget

# 攻撃箇所表示
   data modify storage asset:temp args set value {Tick:30,Scale:"[10f,10f,1f]"}
   data modify storage asset:temp args.RotationX set value 0
   execute at @p[tag=5X.BrimstoneTarget] positioned ~ ~0.01 ~-5 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/set_attack_position_display.m with storage asset:temp args 

# reset
   scoreboard players reset $attack_start_time Temporary
