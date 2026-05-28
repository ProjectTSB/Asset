#> asset:mob/0204.infernal_watcher/tick/attack/target
# @within function asset:mob/0204.infernal_watcher/tick/attack/

execute if entity @a[tag=5O.Target,limit=1] run return fail

function api:data_get/hurt_time
execute if data storage api: {HurtTime:0s} run tag @s add 5O.Target
