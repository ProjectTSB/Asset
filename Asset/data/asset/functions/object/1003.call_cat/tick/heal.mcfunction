#> asset:object/1003.call_cat/tick/heal
#
#
#
# @within function asset:object/1003.call_cat/tick/

#> private
# @private
    #declare score_holder $UserID

# 演出
    particle minecraft:heart ~ ~0.75 ~ 0.1 0.1 0.1 1 1

# プレーヤーの場所に演出
    execute at @a[distance=..5] run particle minecraft:happy_villager ~ ~1 ~ 0.25 0.25 0.25 0 4

# 回復
    data modify storage api: Argument.Heal set from storage asset:context this.Heal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:heal/modifier
    execute as @a[distance=..5] run function api:heal/
    function api:heal/reset

# リセット
    scoreboard players reset $UserID Temporary
