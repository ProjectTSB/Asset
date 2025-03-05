#> asset:artifact/1220.sacred_hardener/trigger/artifact
#
#
#
# @within function asset:artifact/1220.sacred_hardener/trigger/3.main

execute if data storage asset:context id{offhand:90} run data modify storage api: Argument.ID set value 1221
execute if data storage asset:context id{offhand:91} run data modify storage api: Argument.ID set value 1222
execute if data storage asset:context id{offhand:92} run data modify storage api: Argument.ID set value 1223
execute if data storage asset:context id{offhand:93} run data modify storage api: Argument.ID set value 1224
execute if data storage asset:context id{offhand:94} run data modify storage api: Argument.ID set value 1225
data modify storage api: Argument.Slot set value "offhand"
function api:artifact/replace/from_id
