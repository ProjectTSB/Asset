#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/storm_shadow_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare

#> prv
# @private
    #declare score_holder $attack_start_time
    #declare tag 5X.StormShadowTarget

# 攻撃開始と終了時間指定
    execute store result score $attack_start_time Temporary run time query gametime
    execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 10
    execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 1

# 本体の向きを変える
#    execute facing entity @e[tag=5X.Centre,limit=1] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 旋回アニメーション
#    execute on passengers if entity @s[tag=5X.ModelRoot] run function animated_java:terrible_sonic_bomber/animations/roll_back_and_wing_straight/play

# 直線翼になったことを記録
#    tag @s add 5X.WingStraight

# 攻撃座標指定 対空砲の1番近くにいるプレイヤーの座標が攻撃目標
    execute at @e[tag=5X.Centre,limit=1] run tag @p add 5X.StormShadowTarget
    data modify storage asset:context this.storm_shadow.target_pos set from entity @p[tag=5X.StormShadowTarget] Pos
    data modify storage asset:context this.storm_shadow.target_pos[1] set from storage asset:context this.GroundPos

# 攻撃箇所表示
    #data modify storage asset:temp args set value {Color:15453454,Tick:50,Scale:"[10f,10f,1f]"}
    #data modify storage asset:temp args.RotationX set value 0
    #execute at @p[tag=5X.StormShadowTarget] positioned ~ ~0.01 ~-5 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/set_attack_position_display.m with storage asset:temp args 
# 攻撃箇所表示
    data modify storage api: Argument.FieldOverride set value {Color:15453454,Tick:50,Scale:10f}
    data modify storage api: Argument.ID set value 2201
    execute at @p[tag=5X.StormShadowTarget] positioned ~ ~0.01 ~ run function api:object/summon


# reset
    scoreboard players reset $attack_start_time Temporary
    tag @a remove 5X.StormShadowTarget
    data remove storage asset:temp args
