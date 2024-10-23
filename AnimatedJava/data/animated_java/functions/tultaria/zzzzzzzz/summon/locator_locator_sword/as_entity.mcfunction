tp @s ^-0.375 ^0.8125 ^1.3125 ~0 ~0
data modify storage animated_java Owner set from entity @s UUID
tag @s remove aj.new
function #animated_java:tultaria/on_summon/as_locator_entities