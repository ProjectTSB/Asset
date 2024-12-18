#> asset:mob/0106.mini_shulker/tick/attack/shoot
# @within asset:mob/0106.mini_shulker/tick/attack/

data modify storage api: Argument.ID set value 2138
data modify storage api: Argument.FieldOverride.OwnerUUID set from entity @s UUID
execute as @a[tag=2Y.Target,distance=..50,limit=1] run function api:data_get/uuid
data modify storage api: Argument.FieldOverride.TargetUUID set from storage api: UUID
function api:object/summon
