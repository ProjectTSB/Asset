#> asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_target_display
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/weapons/brimstone_prepare

# 実行位置にdisplayを出す(地面とZファイティングしないように少し上にずらして出す)
    data modify storage asset:temp args set value {Color:15453454,Tick:30,Scale:"[10f,10f,1f]"}
    data modify storage asset:temp args.RotationX set value 0
    execute positioned ~ ~0.01 ~-5 run function asset:mob/0213.terrible_sonic_bomber/tick/weapons/set_attack_position_display.m with storage asset:temp args 

# reset
    data remove storage asset:temp args
