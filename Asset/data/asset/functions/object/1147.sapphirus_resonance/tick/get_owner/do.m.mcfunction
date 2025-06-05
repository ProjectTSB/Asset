#> asset:object/1147.sapphirus_resonance/tick/get_owner/do.m
# @input args OwnerID: int
# @within function asset:object/1147.sapphirus_resonance/tick/get_owner/

$execute as @a[scores={UserID=$(OwnerID)}] run tag @s add VV.Owner

