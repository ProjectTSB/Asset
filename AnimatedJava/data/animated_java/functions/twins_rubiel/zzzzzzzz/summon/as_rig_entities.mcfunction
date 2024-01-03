scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:twins_rubiel/on_summon/as_rig_entities
execute if entity @s[tag=aj.twins_rubiel.bone] run function #animated_java:twins_rubiel/zzzzzzzz/on_summon/as_bones

