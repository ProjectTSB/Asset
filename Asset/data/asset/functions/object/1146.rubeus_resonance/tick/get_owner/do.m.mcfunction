#> asset:object/1146.rubeus_resonance/tick/get_owner/do.m
# @input args OwnerID: int
# @within function asset:object/1146.rubeus_resonance/tick/get_owner/

$execute as @a[scores={UserID=$(OwnerID)}] run tag @s add VU.Owner
