#> asset:trader/0011.redstone_merchant/
#
#
#
# @within tag/function asset:trader/register

execute unless data storage asset:trader DPR[{D:overworld,X:-16,Y:21,Z:-57}] positioned -16 21 -57 if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset:trader/0011.redstone_merchant/register/register