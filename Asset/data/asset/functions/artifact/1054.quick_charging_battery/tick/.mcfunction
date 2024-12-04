#> asset:artifact/1054.quick_charging_battery/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1054/tick/


# 演出
    playsound minecraft:entity.illusioner.prepare_blindness player @a ~ ~ ~ 1 0.8
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/1054.quick_charging_battery/tick/vfx

# 最大MPを取得
    function api:mp/get_max

# MPを最大値の50%分回復する
    #execute store result score $Fluctuation Lib run data get storage api: Return.MaxMP 0.5
    #function lib:mp/fluctuation

# 急速充電を付与
    data modify storage api: Argument.ID set value 214
    function api:entity/mob/effect/give
