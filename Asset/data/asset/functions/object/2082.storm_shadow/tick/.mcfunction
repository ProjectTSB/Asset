#> asset:object/2082.storm_shadow/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2082/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 目標座標へ向け旋回
    data modify storage asset:temp args.x set from storage asset:context this.target_pos[0]
    data modify storage asset:temp args.y set from storage asset:context this.target_pos[1]
    data modify storage asset:temp args.z set from storage asset:context this.target_pos[2]
    function asset:object/2082.storm_shadow/tick/turn with storage asset:temp args

# super
    execute at @s run function asset:object/super.tick

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# reset
    data remove storage asset:temp args
