#> asset:artifact/1681.pre_cise/keep/summon_big
#
# 頭上のbig_preciseを召喚する
#
# @input as player at player
# @within function asset:artifact/1681.pre_cise/keep/objects

# 頭上のObject (位置と向きはObjectのtickで毎tick決まる)
    data modify storage api: Argument.ID set value 1207
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.ArtifactID set value 1681
    function api:object/summon
