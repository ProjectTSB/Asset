tp @s ^-0.28125 ^0.59375 ^0.03125 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:lexiel/on_summon/as_locator_entities