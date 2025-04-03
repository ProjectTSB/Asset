#> asset:effect/0326.deep_slash/tick/dashing
#
# 走っている間の処理
#
# @within function asset:effect/0326.deep_slash/tick/

# 演出


# 同IDのObjectが近くにいたらreturn
    # execute as @e[type=marker,scores={ObjectID=1133},distance=..1.5,limit=1]

# 斬撃用Objectを召喚
    data modify storage api: Argument.ID set value 1133
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
