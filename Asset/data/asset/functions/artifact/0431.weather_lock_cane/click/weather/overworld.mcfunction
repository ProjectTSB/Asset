#> asset:artifact/0431.weather_lock_cane/click/weather/overworld
#
#
#
# @within function asset:artifact/0431.weather_lock_cane/click/weather/

data modify storage api: Argument.ID set value 252
function api:entity/mob/effect/remove/from_id
execute if data storage asset:temp BZ{Weather:"Sunny"} run data modify storage api: Argument.ID set value 207
execute if data storage asset:temp BZ{Weather:"Sunny"} run tellraw @s [{"text": "火属性与ダメージ","color": "red"},{"text": "が30%上昇した！","color": "white"}]
execute if data storage asset:temp BZ{Weather:"Sunny"} run function asset:artifact/0431.weather_lock_cane/click/vfx/sunny
execute if data storage asset:temp BZ{Weather:"Rain"} run data modify storage api: Argument.ID set value 208
execute if data storage asset:temp BZ{Weather:"Rain"} run tellraw @s [{"text": "水属性与ダメージ","color": "aqua"},{"text": "が30%上昇した！","color": "white"}]
execute if data storage asset:temp BZ{Weather:"Rain"} run function asset:artifact/0431.weather_lock_cane/click/vfx/rain
execute if data storage asset:temp BZ{Weather:"Thunder"} run data modify storage api: Argument.ID set value 209
execute if data storage asset:temp BZ{Weather:"Thunder"} run tellraw @s [{"text": "雷属性与ダメージ","color": "yellow"},{"text": "が30%上昇した！","color": "white"}]
execute if data storage asset:temp BZ{Weather:"Thunder"} run function asset:artifact/0431.weather_lock_cane/click/vfx/thunder
function api:entity/mob/effect/give
function api:entity/mob/effect/reset
