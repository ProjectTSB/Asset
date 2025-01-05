#> asset:artifact/0431.weather_lock_cane/trigger/weather/another
#
#
#
# @within function asset:artifact/0431.weather_lock_cane/trigger/weather/

execute if data storage asset:temp BZ{Weather:"Sunny"} run data modify storage api: Argument.ID set value 207
execute if data storage asset:temp BZ{Weather:"Rain"} run data modify storage api: Argument.ID set value 208
execute if data storage asset:temp BZ{Weather:"Thunder"} run data modify storage api: Argument.ID set value 209
function api:entity/mob/effect/remove/from_id
function api:entity/mob/effect/reset
data modify storage api: Argument.ID set value 252
tellraw @s [{"text":"火・水・雷属性与ダメージ","color":"light_purple"},{"text":"が10%上昇した！","color":"white"}]
function api:entity/mob/effect/give
function api:entity/mob/effect/reset
execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/0431.weather_lock_cane/trigger/vfx/another
