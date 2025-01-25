#> asset:artifact/0244.skewer/kill_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/244/kill_melee/


# 神器give
    data modify storage api: Argument.ID set value 245
    function api:artifact/give/from_id

# 演出
    particle minecraft:crit ~ ~1 ~ 0.25 0.5 0.25 0.1 20 force
    particle minecraft:smoke ~ ~1 ~ 0.25 0.25 0.25 0.01 50 force
    playsound minecraft:entity.drowned.shoot player @a ~ ~ ~ 0.7 1.5
    playsound minecraft:entity.generic.eat player @a ~ ~ ~ 2 1