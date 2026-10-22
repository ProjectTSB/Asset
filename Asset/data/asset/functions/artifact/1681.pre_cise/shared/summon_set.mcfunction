#> asset:artifact/1681.pre_cise/shared/summon_set
#
# 頭上のbig_preciseと、視点の周りの的3つを召喚する
#
# @input as player
# @within function asset:artifact/1681.pre_cise/shared/keep_objects

# 頭上のObject (位置と向きはObjectのtickで毎tick決まる)
    data modify storage api: Argument.ID set value 1207
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon

# 的
    function asset:artifact/1681.pre_cise/shared/summon_targets
