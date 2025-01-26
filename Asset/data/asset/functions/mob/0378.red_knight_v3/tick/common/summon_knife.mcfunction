#> asset:mob/0378.red_knight_v3/tick/common/summon_knife
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/**

#> tag
# @private
    #declare tag RotationMaker

# 角度用のマーカーを設置しておく
    summon marker ~ ~ ~ {Tags:["RotationMaker"]}
    tp @e[type=marker,tag=RotationMaker,distance=..3,limit=1] ~ ~ ~ ~ ~

# 召喚
    data modify storage api: Argument.ID set value 2131
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute as @e[type=marker,tag=RotationMaker,distance=..3,limit=1] at @s run data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon

# キル
    kill @e[type=marker,tag=RotationMaker,distance=..3]
