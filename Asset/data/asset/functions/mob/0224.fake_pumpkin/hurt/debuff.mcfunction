#> asset:mob/0224.fake_pumpkin/hurt/debuff
#
#
#
# @within function asset:mob/0224.fake_pumpkin/hurt/

# 被ダメ上昇Lv3を付与
    data modify storage api: Argument.ID set value 57
    data modify storage api: Argument.Duration set value 600
    data modify storage api: Argument.StackOperation set value "add"
    execute as @a[gamemode=!spectator,distance=..50] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
