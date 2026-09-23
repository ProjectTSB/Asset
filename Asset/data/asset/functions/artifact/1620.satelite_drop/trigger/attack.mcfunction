#> asset:artifact/1620.satelite_drop/trigger/attack
#
#
#
# @within function asset:artifact/1620.satelite_drop/trigger/2.check_condition

# ランダムなObject1192から待機中タグを外す

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
