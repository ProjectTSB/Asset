#> asset:object/2088.patriot_launcher/tick/missile_launch
#
# 
#
# @within function asset:object/2088.patriot_launcher/tick/tick_active


# sound
playsound entity.generic.explode neutral @a ~ ~ ~ 1 2 1

# オブジェクト召喚
data modify storage api: Argument.ID set value 2087
function api:object/summon
