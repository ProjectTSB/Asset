#> asset:mob/0261.laser_eye_mk2/tick/shoot
#
#
#
# @within function asset:mob/0261.laser_eye_mk2/tick/ready

# 発射
    execute anchored eyes positioned ^ ^ ^1.6 run function asset:mob/0261.laser_eye_mk2/tick/shoot_recursive

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1

# レーザー演出オブジェクト
    data modify storage api: Argument.ID set value 2168
    data modify storage api: Argument.FieldOverride set value {Scale:[1f,0f,1f],Color:7733114,DisappearInterpolation:2,LifeTime:7}
    execute store result storage api: Argument.FieldOverride.Scale[1] float 0.5 run scoreboard players get $79.Range Temporary
    execute anchored eyes positioned ^ ^ ^1.6 run function api:object/summon

# リセット
    tag @s remove Landing
    tag @s remove 79.Ready
    scoreboard players reset $79.Range Temporary
