#> asset:artifact/0431.weather_lock_cane/trigger/weather/another
#
#
#
# @within function asset:artifact/0431.weather_lock_cane/trigger/weather/

execute if data storage asset:temp BZ{Weather:"Sunny"} run data modify storage api: Argument.ID set value 207
execute if data storage asset:temp BZ{Weather:"Rain"} run data modify storage api: Argument.ID set value 208
execute if data storage asset:temp BZ{Weather:"Thunder"} run data modify storage api: Argument.ID set value 209
function api:entity/mob/effect/remove/from_id
data modify storage api: Argument.ID set value 252
tellraw @s [{"text":"全属性攻撃","color":"light_purple"},{"text":"が10%上がった！","color":"white"}]
function api:entity/mob/effect/give
