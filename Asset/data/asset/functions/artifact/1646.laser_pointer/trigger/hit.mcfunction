#> asset:artifact/1646.laser_pointer/trigger/hit
#
#
#
# @within function asset:artifact/1646.laser_pointer/trigger/rec

#> private
# @private
    #declare score_holder $A1646.Stack

# Effect420のスタックに応じて演出
    data modify storage api: Argument.ID set value 420
    function api:entity/mob/effect/get/from_id
    execute store result score $A1646.Stack Temporary run data get storage api: Return.Effect.Stack
    execute if score $A1646.Stack Temporary matches 1..8 run particle dust 0.4 1 0.2 0.4 ~0.5 ~0.5 ~0.5 0 0 0 1 15
    execute if score $A1646.Stack Temporary matches 9.. run particle dust 1 0.4 0.2 0.4 ~0.5 ~0.5 ~0.5 0 0 0 1 15

# 判定タグ
    tag @s add A1646.Hit

# リセット
    scoreboard players reset $A1646.Stack
