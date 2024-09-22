#> asset:artifact/0431.weather_lock_cane/trigger/weather/overworld
#
#
#
# @within function asset:artifact/0431.weather_lock_cane/trigger/weather/

data modify storage api: Argument.ID set value 252
function api:entity/mob/effect/remove/from_id
execute if data storage asset:temp BZ{Weather:"Sunny"} run data modify storage api: Argument.ID set value 207
execute if data storage asset:temp BZ{Weather:"Sunny"} run tellraw @s [{"text": "火属性攻撃","color": "red"},{"text": "が40%上がった！","color": "white"}]
execute if data storage asset:temp BZ{Weather:"Sunny"} run function asset:artifact/0431.weather_lock_cane/trigger/vfx/sunny
execute if data storage asset:temp BZ{Weather:"Rain"} run data modify storage api: Argument.ID set value 208
execute if data storage asset:temp BZ{Weather:"Rain"} run tellraw @s [{"text": "水属性攻撃","color": "aqua"},{"text": "が40%上がった！","color": "white"}]
execute if data storage asset:temp BZ{Weather:"Rain"} run function asset:artifact/0431.weather_lock_cane/trigger/vfx/rain
execute if data storage asset:temp BZ{Weather:"Thunder"} run data modify storage api: Argument.ID set value 209
execute if data storage asset:temp BZ{Weather:"Thunder"} run tellraw @s [{"text": "雷属性攻撃","color": "yellow"},{"text": "が40%上がった！","color": "white"}]
execute if data storage asset:temp BZ{Weather:"Thunder"} run function asset:artifact/0431.weather_lock_cane/trigger/vfx/thunder
function api:entity/mob/effect/give
