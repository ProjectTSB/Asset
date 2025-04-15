#> asset:object/2086.storm_shadow_cluster/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2086/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 目標座標へ向け旋回(旋回する距離を取るため最初は直進させる)
    data modify storage asset:temp args.x set from storage asset:context this.target_pos[0]
    data modify storage asset:temp args.y set from storage asset:context this.target_pos[1]
    data modify storage asset:temp args.z set from storage asset:context this.target_pos[2]
    execute if score @s General.Object.Tick matches 15.. run function asset:object/2086.storm_shadow_cluster/tick/turn with storage asset:temp args

# super
    execute at @s run function asset:object/super.tick

# 目標地点到達判定
    function asset:object/2086.storm_shadow_cluster/tick/check_destination.m with storage asset:temp args

# 噴煙のパーティクル
    execute at @s run particle cloud ^ ^0.2 ^-2.7 0 0 0 0.01 2 force
    execute at @s run particle cloud ^ ^0.2 ^-2.9 0 0 0 0.01 2 force
    execute at @s run particle cloud ^ ^0.2 ^-3.1 0 0 0 0.01 2 force
    execute at @s run particle cloud ^ ^0.2 ^-3.3 0 0 0 0.01 2 force
    execute at @s run particle cloud ^ ^0.2 ^-3.5 0 0 0 0.01 2 force
    execute at @s run particle cloud ^ ^0.2 ^-3.7 0 0 0 0.01 2 force
    execute at @s run particle cloud ^ ^0.2 ^-3.9 0 0 0 0.01 2 force
    execute at @s run particle cloud ^ ^0.2 ^-4.1 0 0 0 0.01 2 force

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# reset
    data remove storage asset:temp args
