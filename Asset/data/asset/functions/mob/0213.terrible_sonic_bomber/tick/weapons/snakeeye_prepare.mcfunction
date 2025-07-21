#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/snakeeye_prepare
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/motions/attack_motion_prepare

#> prv
# @private
    #declare score_holder $attack_start_time

# 攻撃開始と終了時間と爆弾の起爆可能時間指定
    execute store result score $attack_start_time Temporary run time query gametime
    execute store result storage asset:context this.attack_start_time int 1 run scoreboard players add $attack_start_time Temporary 10
    execute store result storage asset:context this.attack_end_time int 1 run scoreboard players add $attack_start_time Temporary 24
    execute store result storage asset:context this.detonation_safe_time int 1 run scoreboard players add $attack_start_time Temporary 6

# 本体の向きを変える
    execute facing entity @p eyes rotated ~ ~-10 run tp @s ~ ~ ~ ~ ~

# 旋回アニメーション
    execute on passengers if entity @s[tag=5X.ModelRoot] run function animated_java:terrible_sonic_bomber/animations/roll_back_and_wing_straight/play

# 直線翼になったことを記録
    tag @s add 5X.WingStraight

# 攻撃箇所表示
    data modify storage asset:temp args set value {Color:15453454,Tick:70,Scale:"[20f,60f,1f]"}
    execute rotated as @s rotated ~ 0 positioned as @p positioned ^ ^ ^-30 positioned ~ ~0.01 ~ run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/set_attack_position_display.m with storage asset:temp args 

# reset
    scoreboard players reset $attack_start_time Temporary
    data remove storage asset:temp args
