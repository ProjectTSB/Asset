#> asset:artifact/1620.satelite_drop/trigger/attack
#
#
#
# @within function asset:artifact/1620.satelite_drop/trigger/2.check_condition

# ランダムなObject1192から1192.Idleを外す
    execute as @e[type=marker,tag=1192.Idle,distance=..3] if score @s 1192.UserID = @p[tag=this] UserID run tag @s add 1192.Launchable
    execute anchored eyes positioned ^ ^-0.1 ^0.5 as @e[type=marker,tag=1192.Launchable,distance=..3,sort=arbitrary,limit=1] run function asset:artifact/1620.satelite_drop/trigger/launch
    tag @e[type=marker,tag=1192.Launchable,distance=..3] remove 1192.Launchable

# Effect396のスタックを1減らす
    data modify storage api: Argument.ID set value 396
    function api:entity/mob/effect/get/from_id
    data modify storage asset:context this.Return set from storage api: Return.Effect

    data modify storage api: Argument.ID set value 396
    execute store result storage api: Argument.Stack int 0.9999999999 run data get storage asset:context this.Return.Stack
    data modify storage api: Argument.Duration set from storage asset:context this.Return.Duration
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# クールダウン用Effect397を付与
    data modify storage api: Argument.ID set value 397
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
