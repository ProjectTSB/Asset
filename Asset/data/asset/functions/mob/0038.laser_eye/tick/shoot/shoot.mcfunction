#> asset:mob/0038.laser_eye/tick/shoot/shoot
#
#
#
# @within function asset:mob/0038.laser_eye/tick/shoot/

# 演出
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 2
    stopsound @a hostile minecraft:block.beacon.ambient

# レーザー発射
    function asset:mob/0038.laser_eye/tick/shoot/recursive

# レーザー演出
    function asset:mob/0038.laser_eye/tick/shoot/summon_laser

# リセット
    scoreboard players reset $Range Temporary
