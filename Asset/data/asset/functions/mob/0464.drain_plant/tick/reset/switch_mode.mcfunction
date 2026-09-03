#> asset:mob/0464.drain_plant/tick/reset/switch_mode
#
#
#
# @within function asset:mob/0464.drain_plant/tick/reset/

# IsAttackModeを逆にする
    execute if data storage asset:context this{IsAttackMode:false} run return run data modify storage asset:context this.IsAttackMode set value true
    data modify storage asset:context this.IsAttackMode set value false
