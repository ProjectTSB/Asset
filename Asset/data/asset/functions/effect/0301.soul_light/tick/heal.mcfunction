#> asset:effect/0301.soul_light/tick/heal
#
#
#
# @within function asset:effect/0301.soul_light/tick/

#> Private
# @private
    #declare score_holder $UserID

# 回復者のUserIDを取得
    execute store result score $UserID Temporary run data get storage asset:context this.UserID

# 回復
    data modify storage api: Argument.Heal set from storage asset:context this.Heal
    execute as @a if score @s UserID = $UserID Temporary run function api:heal/modifier
    data modify storage api: Argument.ApplyTrigger set value false
    function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $UserID Temporary
