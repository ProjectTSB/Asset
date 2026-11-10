#> asset:effect/0433.coreflame/tick/give_barrier
#
# 火種を1つ消費してバリアを付与する
#
# @within function asset:effect/0433.coreflame/tick/check

# 演出
    function asset:effect/0433.coreflame/tick/vfx/

# バリア付与
    data modify storage api: Argument.ID set value 437
    data modify storage api: Argument.Duration set from storage asset:context this.BarrierDuration
    data modify storage api: Argument.FieldOverride.Barrier set from storage asset:context this.Barrier
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 火種を1つ消費(0になればこのEffectは終了する)
    execute store result storage asset:context Stack int 0.9999999999 run data get storage asset:context Stack

# 付与したバリアが反映されるまで待機
    data modify storage asset:context this.Wait set value 2
