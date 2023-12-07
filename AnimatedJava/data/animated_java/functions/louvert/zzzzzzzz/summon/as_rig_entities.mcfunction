scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:louvert/on_summon/as_rig_entities
execute if entity @s[tag=aj.louvert.bone] run function #animated_java:louvert/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.louvert.locator_origin] run function animated_java:louvert/zzzzzzzz/summon/as_locator_origins
