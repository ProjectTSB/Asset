#> asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/pillar/summon
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/transition/phase_2_to_3/tick/attack/

data modify storage api: Argument.ID set value 2054
function api:object/summon
kill @e[type=marker,tag=RW.Marker.Aim]
