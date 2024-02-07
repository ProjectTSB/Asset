scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:frestchika_v2/on_summon/as_rig_entities
execute if entity @s[tag=aj.frestchika_v2.bone] run function #animated_java:frestchika_v2/zzzzzzzz/on_summon/as_bones
execute if entity @s[tag=aj.frestchika_v2.locator_origin] run function animated_java:frestchika_v2/zzzzzzzz/summon/as_locator_origins
