summon minecraft:marker ~ ~ ~ {Tags:["RW.ModelLocator.RightHand","aj.tultaria.locator","aj.tultaria.locator.locator_right_hand","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"tultaria\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"locator_right_hand\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:marker,tag=aj.tultaria.locator.locator_right_hand,tag=aj.new,limit=1,distance=..1] run function animated_java:tultaria/zzzzzzzz/summon/locator_locator_right_hand/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner