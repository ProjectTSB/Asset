#> asset:trader/0012.armor_trim_merchant/register/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:21,Y:3,Z:-25}] positioned 21 3 -25 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0012.armor_trim_merchant/register/register
