scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:axia/on_summon/as_rig_entities
execute if entity @s[tag=aj.axia.bone] run function #animated_java:axia/zzzzzzzz/on_summon/as_bones

