scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:lexiel/on_summon/as_rig_entities
execute if entity @s[tag=aj.lexiel.bone] run function #animated_java:lexiel/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.lexiel.locator_origin] run function animated_java:lexiel/zzzzzzzz/summon/as_locator_origins
