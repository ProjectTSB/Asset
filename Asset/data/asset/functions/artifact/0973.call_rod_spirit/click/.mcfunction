#> asset:artifact/0973.call_rod_spirit/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/973/click/


# 召喚
    data modify storage api: Argument.ID set value 1029
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    function api:object/summon
# 音とパーティクル neutralになってるのは妖精側の音だから
    playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 2 1.75
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 2 1
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1 2
