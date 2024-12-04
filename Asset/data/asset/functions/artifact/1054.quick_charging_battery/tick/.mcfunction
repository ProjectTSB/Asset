#> asset:artifact/1054.quick_charging_battery/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1054/tick/

# 演出
    playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 0.8
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/1054.quick_charging_battery/tick/vfx

# 急速充電を付与
    data modify storage api: Argument.ID set value 214
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
